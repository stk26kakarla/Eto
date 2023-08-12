using AutoMapper;
using BusinessLogic;
using DataModels;
using EtoWeb.AutoMapper;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Client;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using S22.Imap;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MailSyncTrial
{
    class Program
    {
        //NLog configuration pending
        private static Logger logger = LogManager.GetCurrentClassLogger();

        static void Main(string[] args)
        {
            try
            {

                IList<Hierarchy> Hierarchies = new List<Hierarchy>();

                Hierarchies = FNHRepository.GetAll<Hierarchy>()
                    .Where(w => !string.IsNullOrEmpty(w.HostName) && !string.IsNullOrEmpty(w.Port) && !string.IsNullOrEmpty(w.UserName) && !string.IsNullOrEmpty(w.Password)).ToList<Hierarchy>();

                foreach (var Hierarchy in Hierarchies)
                {
                    Response Response = new Response("SyncMail started.");

                    Response = Mail.SyncMail(Hierarchy);

                    if (Response.IsWarning)
                    {
                        logger.Error(Response.ResponseMessage);
                    }

                    Console.WriteLine("Mail synced for: " + Hierarchy.Name);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
                logger.Error(ex);
            }

            Console.ReadKey();
        }
    }

    public class Mail
    {
        //NLog configuration pending
        private static Logger logger = LogManager.GetCurrentClassLogger();

        public static Response SyncMail(Hierarchy Hierarchy)
        {
            Response Response = new Response("SyncMail method called for " + Hierarchy.Name + ".");

            try
            {
                if (Hierarchy != null)
                {
                    if (!string.IsNullOrEmpty(Hierarchy.HostName) && !string.IsNullOrEmpty(Hierarchy.Port))
                    {
                        ImapClient Client;

                        if (Hierarchy.IsMailSynced != true)
                        {
                            Client = new ImapClient(Hierarchy.HostName, Convert.ToInt32(Hierarchy.Port), Hierarchy.UserName, Hierarchy.Password, AuthMethod.Login, true);

                            // Should ensure IDLE is actually supported by the server
                            if (Client.Supports("IDLE") == false)
                            {
                                Response.ResponseMessage = "Mail server does not support IMAP IDLE.";
                                Response.IsWarning = true;
                            }
                            else
                            {
                                Client.NewMessage += new EventHandler<IdleMessageEventArgs>((s, e) => OnNewMail(s, e, Hierarchy));

                                Response.ResponseMessage = "Email synced.";
                                Response.IsSuccess = true;

                                Hierarchy.IsMailSynced = true;

                                FNHRepository.BeginTransaction();
                                FNHRepository.SaveOrUpdate<Hierarchy>(Hierarchy);
                                FNHRepository.CommitTransaction();
                            }
                        }
                        else
                        {
                            Response.ResponseMessage = "Email synced for " + Hierarchy.Name + ".";
                            Response.IsSuccess = true;
                        }
                    }
                    else
                    {
                        Response.ResponseMessage = Hierarchy.Name + " does not have an email configured to sync.";
                        Response.IsWarning = true;
                    }
                }
                else
                {
                    Response.ResponseMessage = "You are not registered to a hierarchy.";
                    Response.IsWarning = true;
                }
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while Syncing Email for " + Hierarchy.Name + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }

            return Response;
        }

        public static void OnNewMail(object sender, IdleMessageEventArgs e, Hierarchy Hierarchy)
        {
            MailMessage m = e.Client.GetMessage(e.MessageUID, FetchOptions.Normal);

            string Subject = m.Subject.Trim();
            string Body = m.Body;
            string RequestId = "";
            string MessageUID = e.MessageUID.ToString();
            DateTime? UpdatedOn = m.Date();
            MailPriority Priority = m.Priority;
            AttachmentCollection Attachments = m.Attachments;
            MailAddress Sender = m.From;
            MailAddressCollection To = m.To;
            MailAddressCollection CC = m.CC;
            MailAddressCollection BCC = m.Bcc;

            bool Update = false;

            EtoMail Email = new EtoMail();
            WorkItem WorkItem;
            if (Regex.IsMatch(Subject, @"\bETO[0-9]{1,9}$"))
            {
                Match Match = Regex.Match(Subject, @"\bETO[0-9]{1,9}$");
                RequestId = Match.Value;
                WorkItem = FNHRepository.Session.QueryOver<WorkItem>().Where(w => w.ExternalUId == RequestId).List().FirstOrDefault();

                if (WorkItem.Status != null && (WorkItem.Status.Id == 1 || WorkItem.Status.Id == 2))
                {
                    WorkItem.Status = FNHRepository.FindBy<Status>(w => w.Id == 3).FirstOrDefault();
                }
                Update = true;
            }
            else
            {
                RequestId = WorkItemRepository.GenerateTicketNumber();
                WorkItem = new WorkItem();
                WorkItem.Status = FNHRepository.FindBy<Status>(w => w.Id == 3).FirstOrDefault();
                Update = false;
            }

            WorkItem.Name = Subject;
            WorkItem.ExternalUId = RequestId;
            WorkItem.CreatedDate = UpdatedOn;
            WorkItem.Hierarchy = Hierarchy;
            WorkItem.Requester = FNHRepository.FindBy<DataModels.User>(w => w.EmailId == Sender.Address || w.SecondaryEmailId == Sender.Address).FirstOrDefault();

            FNHRepository.BeginTransaction();
            var UpdatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
            FNHRepository.CommitTransaction();

            Email.ExternalUId = MessageUID;
            Email.Name = Subject;
            Email.EmailType = "Received";
            Email.Sender = Sender.Address;
            Email.Recipient = To.ToString();
            Email.CarbonCopy = CC.ToString();
            Email.BlindCarbonCopy = BCC.ToString();
            Email.MailBody = Body;
            Email.UpdatedOn = UpdatedOn;
            Email.WorkItem = UpdatedWorkItem;

            FNHRepository.BeginTransaction();
            var UpdatedEmail = FNHRepository.SaveOrUpdate<EtoMail>(Email);
            FNHRepository.CommitTransaction();

            FNHRepository.BeginTransaction();
            foreach (System.Net.Mail.Attachment Attachment in Attachments)
            {
                DataModels.Attachment NewAttachment = new DataModels.Attachment();

                try
                {
                    NewAttachment.ExternalUId = Attachment.ContentId;
                    NewAttachment.FileType = Attachment.ContentType.MediaType;
                    NewAttachment.Name = Attachment.ContentDisposition.FileName;
                    NewAttachment.FileSize = Attachment.ContentDisposition.Size.ToString();
                    NewAttachment.EtoMail = UpdatedEmail;
                }
                catch (Exception exc)
                {
                    NewAttachment.Name = "Error";
                    logger.Error(exc);
                }

                var UpdatedNewAttachment = FNHRepository.SaveOrUpdate<DataModels.Attachment>(NewAttachment);
                UpdatedEmail.Attachments.Add(UpdatedNewAttachment);
            }
            FNHRepository.CommitTransaction();

            UpdatedWorkItem.EtoMails.Add(UpdatedEmail);

            string title = Subject;
            string body = Sender.Address;
            string icon = "";
            string data = Body.Substring(0, Math.Min(Body.Length, 200));
            string tag = MessageUID;
            bool sticky = true;
            bool noscreen = true;

            var HubConnection = new HubConnection("http://www.nieto.in", useDefaultUrl: true);
            IHubProxy GlobalNotificationHubContext = HubConnection.CreateHubProxy("GlobalNotificationHub");
            IList<string> UserIdsToNotify = Notification.AddUserIdsForWorkItem(UpdatedWorkItem);

            HubConnection.Start().Wait();

            AutoMapperConfiguration.Configure();

            if (Update == true)
            {
                GlobalNotificationHubContext.Invoke("SendGlobalDesktopNotificationOnNewMail", Mapper.Map<WorkItem, AutoMap.WorkItem>(UpdatedWorkItem), UserIdsToNotify, false, title, body, icon, data, tag, sticky, noscreen).Wait();
            }
            else
            {
                GlobalNotificationHubContext.Invoke("SendGlobalDesktopNotificationOnNewMail", Mapper.Map<WorkItem, AutoMap.WorkItem>(UpdatedWorkItem), UserIdsToNotify, true, title, body, icon, data, tag, sticky, noscreen).Wait();
            }
        }
    }

}
