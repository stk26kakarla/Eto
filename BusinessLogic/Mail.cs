using AutoMapper;
using DataModels;
using EtoWeb.AutoMapper;
using ImapX;
using ImapX.Enums;
using Microsoft.AspNet.SignalR.Client;
using NHibernate.Criterion;
using NhibernateSessionManagement.DataBase.DataManager;
using Nito.AspNetBackgroundTasks;
using NLog;
using S22.Imap;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class Mail
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        public static Response SyncInboxFolderForHierarchy(Hierarchy Hierarchy)
        {
            Response Response = new Response("SyncInboxFolderForHierarchy method called for " + Hierarchy.Name + ".");

            try
            {
                #region If Hierarchy is not null
                if (Hierarchy != null)
                {
                    #region If Hierarchy IMAP Hostname and Port number are not null
                    if (!string.IsNullOrEmpty(Hierarchy.IMAPHostName) && !string.IsNullOrEmpty(Hierarchy.IMAPPort))
                    {
                        ImapX.ImapClient Client = new ImapX.ImapClient();

                        #region If Mail server connects to specified IMAP Hostname and Port number
                        if (Client.Connect(Hierarchy.IMAPHostName, Convert.ToInt32(Hierarchy.IMAPPort), true))
                        {
                            #region If Mail server authenticates the connector
                            if (Client.Login(Hierarchy.UserName, Hierarchy.Password))
                            {
                                #region If Server supports IDLE
                                if (Client.Capabilities.Idle)
                                {
                                    Client.IsDebug = true;

                                    Client.Behavior.NoopIssueTimeout = 120;//seconds
                                    Client.Behavior.MessageFetchMode = MessageFetchMode.Minimal;
                                    //Client.Behavior.AutoPopulateFolderMessages = true;
                                    Client.Behavior.RequestedHeaders = null;

                                    IList<Message> Messages = Client.Folders.Inbox.Search("ALL", MessageFetchMode.Minimal).ToList();

                                    SaveMails(Hierarchy, Client.Folders.Inbox.Name, Messages, true);

                                    Client.Folders.Inbox.OnNewMessagesArrived += new EventHandler<IdleEventArgs>((s, e) => OnNewMessagesArrived(s, e, Hierarchy));

                                    Client.OnIdleStarted += ImapClient_OnIdleStarted;
                                    Client.OnIdleStopped += ImapClient_OnIdleStopped;

                                    Client.Folders.Inbox.StartIdling();

                                    Response.ResponseMessage = "Inbox folder synchronized for " + Hierarchy.Name;
                                    Response.IsSuccess = true;


                                }
                                else
                                {
                                    Response.ResponseMessage = "Mail server does not support IMAP IDLE.";
                                    Response.IsError = true;
                                }
                                #endregion
                            }
                            else
                            {
                                Response.ResponseMessage = "Authentication for " + Hierarchy.UserName + " failed.";
                                Response.IsError = true;
                            }
                            #endregion
                        }
                        else
                        {
                            Response.ResponseMessage = "Connection to the server with hostname " + Hierarchy.IMAPHostName + " failed.";
                            Response.IsError = true;
                        }
                        #endregion
                    }
                    else
                    {
                        Response.ResponseMessage = Hierarchy.Name + " does not have an email configured to sync.";
                        Response.IsWarning = true;
                    }
                    #endregion
                }
                else
                {
                    Response.ResponseMessage = "No hierarchy.";
                    Response.IsWarning = true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while synchronizing Inbox folder for " + Hierarchy.Name + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }

            return Response;
        }

        public static Response SyncSentFolderForHierarchy(Hierarchy Hierarchy)
        {
            Response Response = new Response("SyncSentFolderForHierarchy method called for " + Hierarchy.Name + ".");

            try
            {
                #region If Hierarchy is not null
                if (Hierarchy != null)
                {
                    #region If Hierarchy IMAP Hostname and Port number are not null
                    if (!string.IsNullOrEmpty(Hierarchy.IMAPHostName) && !string.IsNullOrEmpty(Hierarchy.IMAPPort))
                    {
                        ImapX.ImapClient Client = new ImapX.ImapClient();

                        #region If Mail server connects to specified IMAP Hostname and Port number
                        if (Client.Connect(Hierarchy.IMAPHostName, Convert.ToInt32(Hierarchy.IMAPPort), true))
                        {
                            #region If Mail server authenticates the connector
                            if (Client.Login(Hierarchy.UserName, Hierarchy.Password))
                            {
                                #region If Server supports IDLE
                                if (Client.Capabilities.Idle)
                                {
                                    Client.IsDebug = true;

                                    Client.Behavior.NoopIssueTimeout = 120;//seconds
                                    Client.Behavior.MessageFetchMode = MessageFetchMode.Minimal;
                                    //Client.Behavior.AutoPopulateFolderMessages = true;
                                    Client.Behavior.RequestedHeaders = null;

                                    IList<Message> Messages = Client.Folders.Sent.Search("ALL", MessageFetchMode.Minimal).ToList();

                                    SaveMails(Hierarchy, Client.Folders.Sent.Name, Messages, true);

                                    Client.Folders.Sent.OnNewMessagesArrived += new EventHandler<IdleEventArgs>((s, e) => OnNewMessagesArrived(s, e, Hierarchy));

                                    Client.OnIdleStarted += ImapClient_OnIdleStarted;
                                    Client.OnIdleStopped += ImapClient_OnIdleStopped;

                                    Client.Folders.Sent.StartIdling();

                                    Response.ResponseMessage = "Sent folder synchronized for " + Hierarchy.Name;
                                    Response.IsSuccess = true;
                                }
                                else
                                {
                                    Response.ResponseMessage = "Mail server does not support IMAP IDLE.";
                                    Response.IsError = true;
                                }
                                #endregion
                            }
                            else
                            {
                                Response.ResponseMessage = "Authentication for " + Hierarchy.UserName + " failed.";
                                Response.IsError = true;
                            }
                            #endregion
                        }
                        else
                        {
                            Response.ResponseMessage = "Connection to the server with hostname " + Hierarchy.IMAPHostName + " failed.";
                            Response.IsError = true;
                        }
                        #endregion
                    }
                    else
                    {
                        Response.ResponseMessage = Hierarchy.Name + " does not have an email configured to sync.";
                        Response.IsWarning = true;
                    }
                    #endregion
                }
                else
                {
                    Response.ResponseMessage = "No hierarchy.";
                    Response.IsWarning = true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while synchronizing Sent folder for " + Hierarchy.Name + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }

            return Response;
        }

        public static void OnNewMessagesArrived(object sender, IdleEventArgs e, Hierarchy Hierarchy)
        {
            try
            {
                IList<Message> newMessages = e.Messages.ToList();
                IList<Message> unreadMessages = e.Folder.Search("UNSEEN", MessageFetchMode.Minimal).ToList();
                foreach (Message unreadMessage in unreadMessages)
                {
                    if (!(e.Messages.ToList().Select(s => s.UId).ToList().Contains(unreadMessage.UId)))
                    {
                        newMessages.Add(unreadMessage);
                    }
                }
                SaveMails(Hierarchy, e.Folder.Name, newMessages);
            }
            catch (Exception ex)
            {
                logger.Error(ex);
            }
        }

        public static void ImapClient_OnIdleStarted(object sender, IdleEventArgs e)
        {
            string Message = "IMAP IDLE started.";
            //logger.Error(Message);
            //EventLog.WriteEntry(ConfigurationManager.AppSettings["EventLogSource"].ToString(), Message, EventLogEntryType.SuccessAudit);
        }

        public static void ImapClient_OnIdleStopped(object sender, IdleEventArgs e)
        {
            string Message = "IMAP IDLE stopped.";
            logger.Error(Message);
            EventLog.WriteEntry(ConfigurationManager.AppSettings["EventLogSource"].ToString(), Message, EventLogEntryType.Error);

            try
            {
                e.Folder.StartIdling();
            }
            catch (Exception ex)
            {
                logger.Error(ex.Message);
            }
        }

        public static void SaveMails(Hierarchy Hierarchy, string FolderName, IList<Message> Messages, bool IsSync = false)
        {
            try
            {
                foreach (Message Message in Messages)
                {
                    EtoMail EtoMail = FNHRepository.Session.QueryOver<EtoMail>().Where(w => w.ExternalUId == Hierarchy.Name + FolderName + Message.UId.ToString()).List().FirstOrDefault();

                    if (EtoMail == null)
                    {
                        EtoMail = new EtoMail();
                    }

                    EtoMail.ExternalUId = Hierarchy.Name + FolderName + Message.UId.ToString();

                    FNHRepository.OpenSession();
                    FNHRepository.BeginTransaction();
                    FNHRepository.SaveOrUpdate<EtoMail>(EtoMail);
                    FNHRepository.CommitTransaction();

                    if (IsSync)
                    {
                        Message.Seen = true;
                    }
                }

                BackgroundTaskManager.Run(() =>
                {
                    OnNewRowCreated(FolderName, Hierarchy);
                });

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void OnNewRowCreated(string MailBox, Hierarchy Hierarchy)
        {
            Response Response = new Response("OnNewRowCreated method called for " + Hierarchy.Name + ".");
            try
            {
                var NewEmails = FNHRepository.Session.QueryOver<EtoMail>()
                    .Where(Restrictions.On<EtoMail>(e => e.ExternalUId).IsLike(Hierarchy.Name + "%"))
                    .Where(w => w.Name == null || w.Name == "")
                    .List().ToList();

                #region If Hierarchy is not null
                if (Hierarchy != null && NewEmails.Count > 0)
                {
                    #region If Hierarchy IMAP Hostname and Port number are not null
                    if (!string.IsNullOrEmpty(Hierarchy.IMAPHostName) && !string.IsNullOrEmpty(Hierarchy.IMAPPort))
                    {
                        S22.Imap.ImapClient Client = new S22.Imap.ImapClient(Hierarchy.IMAPHostName, Convert.ToInt32(Hierarchy.IMAPPort), Hierarchy.UserName, Hierarchy.Password, AuthMethod.Login, true);

                        foreach (var NewEmail in NewEmails)
                        {
                            try
                            {
                                MailMessage m = null;
                                int UniqueMessageId = Convert.ToInt32(NewEmail.ExternalUId.Substring(Hierarchy.Name.Length + MailBox.Length));

                                m = Client.GetMessage(Convert.ToUInt32(UniqueMessageId), FetchOptions.Normal, true, MailBox);

                                //if (string.IsNullOrEmpty(m.Subject) || string.IsNullOrEmpty(m.From.ToString()))
                                //{
                                //    MailBox = "Sent";
                                //    m = Client.GetMessage(Convert.ToUInt32(UniqueMessageId), FetchOptions.Normal, true, MailBox);
                                //}

                                if (m != null || !string.IsNullOrEmpty(m.Subject) || !string.IsNullOrEmpty(m.From.ToString()))
                                {
                                    #region Read data from new message
                                    m.IsBodyHtml = true;
                                    string Subject = m.Subject.Trim();
                                    string altbody = "";

                                    if (m.AlternateViews.Count > 0)
                                    {
                                        var dataStream = m.AlternateViews[0].ContentStream;
                                        byte[] byteBuffer = new byte[dataStream.Length];
                                        altbody = System.Text.Encoding.UTF8.GetString(byteBuffer, 0, dataStream.Read(byteBuffer, 0, byteBuffer.Length));
                                    }
                                    else
                                    {
                                        altbody = m.Body;
                                    }
                                    string Body = altbody;
                                    string RequestId = "";
                                    string MessageUID = NewEmail.ExternalUId;
                                    string MailFolder = MailBox;
                                    DateTime? UpdatedOn = TimeZoneInfo.ConvertTimeToUtc(m.Date().Value);
                                    AttachmentCollection Attachments = m.Attachments;
                                    System.Net.Mail.MailAddress Sender = m.From;

                                    MailAddressCollection To = m.To;
                                    MailAddressCollection CC = m.CC;
                                    MailAddressCollection BCC = m.Bcc;
                                    #endregion

                                    #region Replace HTML for new embedded images in Mail
                                    for (int i = 1; i < m.AlternateViews.Count; i++)
                                    {

                                        try
                                        {
                                            var inlineImageDataStream = m.AlternateViews[i].ContentStream;
                                            byte[] inlineImageByteArray = new byte[inlineImageDataStream.Length];

                                            using (MemoryStream ms = new MemoryStream())
                                            {
                                                inlineImageDataStream.CopyTo(ms);
                                                inlineImageByteArray = ms.ToArray();
                                            }

                                            var imgSrc = String.Format("data:" + m.AlternateViews[i].ContentType.MediaType + ";base64,{0}", Convert.ToBase64String(inlineImageByteArray));

                                            Body = Body.Replace("cid:" + m.AlternateViews[i].ContentId.TrimStart('<').TrimEnd('>'), imgSrc);
                                        }
                                        catch (Exception exc)
                                        {
                                            logger.Error(exc);
                                        }
                                    }

                                    #endregion

                                    bool Update = false;

                                    WorkItem WorkItem;

                                    string RegexPattern = @"\bETO[0-9]{1,}$";

                                    #region Match subject line with ExternalUId and declare new item or update for the existing item
                                    if (Regex.IsMatch(Subject, RegexPattern))
                                    {
                                        Match Match = Regex.Match(Subject, RegexPattern);
                                        RequestId = Match.Value;
                                        WorkItem = FNHRepository.Session.QueryOver<WorkItem>().Where(w => w.ExternalUId == RequestId).List().FirstOrDefault();

                                        if (WorkItem != null)
                                        {
                                            if ((WorkItem.Status != null && (WorkItem.Status.Id == 1 || WorkItem.Status.Id == 2))
                                                && MailFolder.ToLower().Equals("inbox"))
                                            {
                                                WorkItem.Status = FNHRepository.FindBy<Status>(w => w.Id == 3).FirstOrDefault();
                                            }
                                            Update = true;
                                        }
                                        else
                                        {
                                            #region Code repeat #1
                                            WorkItem = new WorkItem();
                                            WorkItem.Status = FNHRepository.FindBy<Status>(w => w.Id == 3).FirstOrDefault();
                                            WorkItem.Requester = FNHRepository.FindBy<DataModels.User>(w => w.EmailId == Sender.Address || w.SecondaryEmailId == Sender.Address).FirstOrDefault();
                                            WorkItem.Name = Subject;
                                            WorkItem.CreatedDate = UpdatedOn;

                                            Update = false;
                                            #endregion
                                        }
                                    }
                                    else
                                    {
                                        #region Code repeat #1
                                        WorkItem = new WorkItem();
                                        WorkItem.Status = FNHRepository.FindBy<Status>(w => w.Id == 3).FirstOrDefault();
                                        WorkItem.Requester = FNHRepository.FindBy<DataModels.User>(w => w.EmailId == Sender.Address || w.SecondaryEmailId == Sender.Address).FirstOrDefault();
                                        WorkItem.Name = Subject;
                                        WorkItem.CreatedDate = UpdatedOn;

                                        Update = false;
                                        #endregion
                                    }
                                    #endregion

                                    #region Update WorkItem object
                                    //WorkItem.ExternalUId = RequestId;
                                    WorkItem.Hierarchy = FNHRepository.RetrieveById<Hierarchy>(Hierarchy.Id);
                                    FNHRepository.BeginTransaction();
                                    var UpdatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
                                    FNHRepository.CommitTransaction();

                                    UpdatedWorkItem.ExternalUId = ("ETO" + UpdatedWorkItem.Id).ToString();
                                    FNHRepository.BeginTransaction();
                                    UpdatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(UpdatedWorkItem);
                                    FNHRepository.CommitTransaction();
                                    #endregion

                                    #region Update EtoMail object
                                    NewEmail.ExternalUId = MessageUID;
                                    NewEmail.Name = Subject;
                                    NewEmail.EmailType = MailFolder;
                                    NewEmail.Sender = Sender.ToString();
                                    NewEmail.Recipient = string.Join(",", To);
                                    NewEmail.CarbonCopy = string.Join(",", CC);
                                    NewEmail.BlindCarbonCopy = string.Join(",", BCC);
                                    NewEmail.MailBody = Body;
                                    NewEmail.UpdatedOn = UpdatedOn;
                                    NewEmail.WorkItem = UpdatedWorkItem;

                                    FNHRepository.OpenSession();
                                    FNHRepository.BeginTransaction();
                                    var UpdatedEmail = FNHRepository.SaveOrUpdate<EtoMail>(NewEmail);
                                    FNHRepository.CommitTransaction();
                                    #endregion

                                    #region Update Attachment object

                                    FNHRepository.OpenSession();
                                    FNHRepository.BeginTransaction();
                                    foreach (System.Net.Mail.Attachment Attachment in Attachments)
                                    {
                                        DataModels.Attachment NewAttachment = new DataModels.Attachment();

                                        try
                                        {
                                            //using (var fileStream = File.Create("C:\\Folder"))
                                            //{
                                            //   Attachment.ContentStream.Seek(0, SeekOrigin.Begin);
                                            //   Attachment.ContentStream.CopyTo(fileStream);
                                            //}

                                            NewAttachment.ExternalUId = Attachment.ContentId;
                                            NewAttachment.FileType = Attachment.ContentType.MediaType;
                                            NewAttachment.Name = Attachment.ContentDisposition.FileName;
                                            NewAttachment.Size = Attachment.ContentStream.Length;
                                            NewAttachment.FileSize = ByteFormatter.ToFileSize(Attachment.ContentStream.Length);
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
                                    #endregion

                                    AutoMapperConfiguration.Configure();

                                    #region Notify users
                                    string title = "New: " + UpdatedWorkItem.ExternalUId + "- " + Subject;
                                    string body = Sender.Address;
                                    string icon = "";
                                    string data = MessageUID;
                                    string tag = MessageUID;
                                    bool sticky = true;
                                    bool noscreen = true;

                                    var HubConnection = new HubConnection("http://nieto.in", useDefaultUrl: true);
                                    IHubProxy GlobalNotificationHubContext = HubConnection.CreateHubProxy("GlobalNotificationHub");
                                    IList<string> UserIdsToNotify = new List<string>();

                                    ServicePointManager.DefaultConnectionLimit = 15;

                                    HubConnection.Error += ex => logger.Error(ex);

                                    HubConnection.Start().Wait();

                                    if (Update == true)
                                    {
                                        title = "Update: " + Subject;

                                        UserIdsToNotify = Notification.AddUserIdsForWorkItem(UpdatedWorkItem);

                                        GlobalNotificationHubContext.Invoke("SendGlobalDesktopNotificationOnNewMail", Mapper.Map<WorkItem, AutoMap.WorkItem>(UpdatedWorkItem), UpdatedEmail.Id, UserIdsToNotify, false, title, body, icon, data, tag, sticky, noscreen).Wait();
                                    }
                                    else
                                    {
                                        title = "New: " + UpdatedWorkItem.ExternalUId + "- " + Subject;

                                        UserIdsToNotify = Notification.AddUserIdsOfHierarchy(Hierarchy);

                                        GlobalNotificationHubContext.Invoke("SendGlobalDesktopNotificationOnNewMail", Mapper.Map<WorkItem, AutoMap.WorkItem>(UpdatedWorkItem), UpdatedEmail.Id, UserIdsToNotify, true, title, body, icon, data, tag, sticky, noscreen).Wait();
                                    }
                                    #endregion
                                }
                            }
                            catch (Exception ex)
                            {
                                logger.Error(ex);
                            }
                        }
                    }
                    else
                    {
                        Response.ResponseMessage = Hierarchy.Name + " does not have an email configured to download the file.";
                        Response.IsWarning = true;
                    }
                    #endregion
                }
                else
                {
                    Response.ResponseMessage = "No hierarchy.";
                    Response.IsWarning = true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                logger.Error(ex);
            }

        }
    }
}
