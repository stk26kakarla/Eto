using AutoMapper;
using BusinessLogic;
using DataModels;
using Microsoft.AspNet.SignalR;
using Newtonsoft.Json;
using NHibernate.Criterion;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Mail;
using System.Web.Http;

namespace EtoWeb.Controllers
{
    public class MailServiceController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        [HttpGet]
        public Response GetMailsForWorkItem(int CurrentLoggedUserId, int WorkItemId)
        {
            Response Response = new Response("GetMailsForWorkItem method called");

            try
            {
                WorkItem WorkItem = FNHRepository.RetrieveById<WorkItem>(WorkItemId);

                if (WorkItem != null)
                {
                    IList<EtoMail> EtoMails = FNHRepository.FindBy<EtoMail>(w => w.WorkItem != null && w.WorkItem.Id == WorkItem.Id).ToList();
                    Response.Object = Mapper.Map<IList<EtoMail>, IList<AutoMap.EtoMail>>(EtoMails);
                }
                else
                {
                    Response.Object = null;
                }

                Response.ResponseMessage = "Mails retrieved successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving mails. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

        [HttpPost]
        public Response SendMail(SendMailParameters SendMailParameters)
        {
            Response Response = new Response("SendMail method called");

            try
            {
                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(SendMailParameters.CurrentLoggedInUserId);

                EtoMail EtoMail = JsonConvert.DeserializeObject<EtoMail>(SendMailParameters.EtoMail);
                char[] charsToTrim = { ',', ';', ' ' };
                EtoMail.Sender = EtoMail.Sender.Replace(';', ',').TrimEnd(charsToTrim);
                EtoMail.Recipient = EtoMail.Recipient.Replace(';', ',').TrimEnd(charsToTrim);
                EtoMail.CarbonCopy = EtoMail.CarbonCopy.Replace(';', ',').TrimEnd(charsToTrim);
                EtoMail.BlindCarbonCopy = EtoMail.BlindCarbonCopy.Replace(';', ',').TrimEnd(charsToTrim);

                IList<DataModels.Attachment> Attachments = new List<DataModels.Attachment>();

                foreach (DataModels.Attachment Attachment in EtoMail.Attachments)
                {
                    Attachment.FileURL = @"~\Attachments\" + EtoMail.Name + @"\" + Attachment.Name;
                    //Attachment.ExternalUId = Guid.NewGuid().ToString();
                    Attachments.Add(Attachment);
                }

                Hierarchy Hierarchy = HierarchyRepository.BestUserHierarchyFromRecipientAndSender(CurrentLoggedInUser, "", EtoMail.Sender);

                #region If Hierarchy is not null
                if (Hierarchy != null)
                {
                    MailMessage mail = new MailMessage();

                    mail.Sender = new MailAddress(Hierarchy.UserName, Hierarchy.Name);

                    mail.From = new MailAddress(Hierarchy.UserName, Hierarchy.Name);

                    mail.Subject = EtoMail.Name;
                    mail.To.Add(EtoMail.Recipient);
                    if (!string.IsNullOrEmpty(EtoMail.CarbonCopy) && !string.IsNullOrWhiteSpace(EtoMail.CarbonCopy))
                    {
                        mail.CC.Add(EtoMail.CarbonCopy);
                    }
                    if (!string.IsNullOrEmpty(EtoMail.BlindCarbonCopy) && !string.IsNullOrWhiteSpace(EtoMail.BlindCarbonCopy))
                    {
                        mail.Bcc.Add(EtoMail.BlindCarbonCopy);
                    }
                    mail.IsBodyHtml = true;
                    mail.Body = EtoMail.MailBody;
                    //mail.Headers.Add("Seen", "Unseen");


                    foreach (DataModels.Attachment Attachment in Attachments)
                    {
                        System.Net.Mail.Attachment MailAttachment = new System.Net.Mail.Attachment(System.Web.Hosting.HostingEnvironment.MapPath(Attachment.FileURL));
                        //MailAttachment.ContentId = Attachment.ExternalUId;

                        mail.Attachments.Add(MailAttachment);
                    }

                    SmtpClient SmtpClient = new SmtpClient(Hierarchy.SMTPHostName, Convert.ToInt32(Hierarchy.SMTPPort));
                    SmtpClient.Credentials = new System.Net.NetworkCredential(Hierarchy.UserName, Hierarchy.Password);
                    SmtpClient.EnableSsl = true;
                    try
                    {
                        SmtpClient.Send(mail);


                        //WorkItem UpdatedWorkItem = FNHRepository.RetrieveById<WorkItem>(EtoMail.WorkItem.Id);

                        //IHubContext WorkItemGridHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.WorkItemGridHub>();
                        //WorkItemGridHubContext.Clients.All.update(Mapper.Map<WorkItem, AutoMap.WorkItem>(UpdatedWorkItem));

                        //string title = EtoMail.Name;
                        //string body = EtoMail.Sender;
                        //string icon = "";
                        //string data = EtoMail.WorkItem.Id.ToString();
                        //string tag = EtoMail.WorkItem.Id.ToString();
                        //bool sticky = true;
                        //bool noscreen = true;
                        //IList<string> UserIds = Notification.AddUserIdsForWorkItem(UpdatedWorkItem);

                        //IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();
                        //GlobalNotificationHubContext.Clients.Users(UserIds).globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);

                        Response.ResponseMessage = "Mail sent successfully. Please wait for a while to reload.";
                        Response.IsSuccess = true;
                    }
                    catch (SmtpException smtpex)
                    {
                        Response.ResponseMessage = "Could not send mail. \n'" + smtpex.Message + "'.";
                        Response.IsError = true;
                        Response.Object = smtpex;
                        logger.Error(smtpex);
                    }

                    Response.Object = null;

                }
                else
                {
                    Response.ResponseMessage = "Sender doesn't exist or the user is not authorized to send.";
                    Response.IsWarning = true;
                }
                #endregion
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while sending mail. \n'" + ex.Message + "'.";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }
    }

    public class SendMailParameters
    {
        public int CurrentLoggedInUserId { get; set; }
        public string EtoMail { get; set; }
    }
}