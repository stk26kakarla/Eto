using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using BusinessLogic;
using Newtonsoft.Json;
using EtoWeb.Extensions;
using S22.Imap;

namespace EtoWeb.Controllers
{
    [System.Web.Mvc.Authorize]
    public class EtoAuthenticatedController : Controller
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        // GET: EtoAuthenticated
        public ActionResult Index()
        {
            //Response Response = new Response("SyncMail started.");

            //var Hierarchy = User.Identity.GetUserInfoDataModels().Hierarchy;

            //Response = Mail.SyncInboxFolderForHierarchy(Hierarchy);

            //Response = Mail.SyncSentFolderForHierarchy(Hierarchy);

            //IList<Hierarchy> Hierarchies = FNHRepository.GetAll<Hierarchy>()
            //           .Where(w => !string.IsNullOrEmpty(w.IMAPHostName) && !string.IsNullOrEmpty(w.IMAPPort) && !string.IsNullOrEmpty(w.UserName) && !string.IsNullOrEmpty(w.Password)).ToList<Hierarchy>();

            //foreach (var Hierarchy in Hierarchies)
            //{
            //    Response Response = new Response("SyncMail started.");

            //    Response = Mail.SyncInboxFolderForHierarchy(Hierarchy);

            //    Response = Mail.SyncSentFolderForHierarchy(Hierarchy);
            //}

            return View();
        }

        public ActionResult Test()
        {
            return View();
        }

        public ActionResult TimeZoneList()
        {
            List<string> TimeZoneList = new List<string>();

            foreach (TimeZoneInfo z in TimeZoneInfo.GetSystemTimeZones())
            {
                string TimeZone = ""
                   + "<b>Display Name: </b>" + z.DisplayName + "<br>"
                   + "<b>Daylight Name: </b>" + z.DaylightName + "<br>"
                   + "<b>Standard Name: </b>" + z.StandardName + "<br>"
                   + "<b>Id: </b>" + z.Id + "<br>"
                   + "<b>Date Time: </b>" + TimeZoneInfo.ConvertTime(DateTime.Now, TimeZoneInfo.FindSystemTimeZoneById(z.Id)) + "<br>";

                TimeZoneList.Add(TimeZone);
            }
            return View(TimeZoneList.ToArray());
        }

        public ActionResult SaveAttachments(IEnumerable<HttpPostedFileBase> UploadAttachements, string Subject)
        {
            if (UploadAttachements != null)
            {
                foreach (var file in UploadAttachements)
                {
                    string tempServerMapPathFromConfig = @"~\Attachments\" + Subject;

                    var tempFileName = Path.GetFileName(file.FileName);
                    string physicalPathInTempFolder = Path.Combine(Server.MapPath(tempServerMapPathFromConfig), tempFileName);

                    string verifyDirectory = Server.MapPath(tempServerMapPathFromConfig);
                    if (!Directory.Exists(verifyDirectory))
                    {
                        Directory.CreateDirectory(verifyDirectory);
                    }
                    file.SaveAs(physicalPathInTempFolder);
                    System.IO.File.SetAttributes(physicalPathInTempFolder, FileAttributes.Archive);
                }
            }

            return Content("");
        }

        public ActionResult Remove(string[] fileNames, string Subject)
        {
            if (fileNames != null)
            {
                foreach (var fullName in fileNames)
                {
                    var fileName = Path.GetFileName(fullName);
                    var physicalPath = Path.Combine(Server.MapPath(@"~\Attachments\" + Subject), fileName);

                    if (System.IO.File.Exists(physicalPath))
                    {
                        System.IO.File.Delete(physicalPath);
                    }
                }
            }

            return Content("");
        }

        [ValidateInput(false)]
        public ActionResult DownloadAttachment(int CurrentLoggedInUserId, string Recipient, string Sender, string EmailType, string StringifiedAttachment)
        {
            Response Response = new Response("Downlaod Attachment method called.");

            try
            {
                DataModels.Attachment Attachment = JsonConvert.DeserializeObject<DataModels.Attachment>(StringifiedAttachment);

                MailMessage Message = null;

                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);
                Hierarchy Hierarchy = HierarchyRepository.BestUserHierarchyFromRecipientAndSender(CurrentLoggedInUser, Recipient, Sender);

                #region If Hierarchy is not null
                if (Hierarchy != null)
                {
                    #region If Hierarchy IMAP Hostname and Port number are not null
                    if (!string.IsNullOrEmpty(Hierarchy.IMAPHostName) && !string.IsNullOrEmpty(Hierarchy.IMAPPort))
                    {
                        ImapClient Client = new ImapClient(Hierarchy.IMAPHostName, Convert.ToInt32(Hierarchy.IMAPPort), Hierarchy.UserName, Hierarchy.Password, AuthMethod.Login, true);

                        string MailBox = EmailType;

                        int UniqueMessageId = Convert.ToInt32(Attachment.EtoMail.ExternalUId.Substring(Hierarchy.Name.Length + MailBox.Length));


                        Message = Client.GetMessage(Convert.ToUInt32(UniqueMessageId), FetchOptions.Normal, true, MailBox);

                        //if (string.IsNullOrEmpty(Message.Subject) || string.IsNullOrEmpty(Message.From.ToString()))
                        //{
                        //    Message = Client.GetMessage(Convert.ToUInt32(UniqueMessageId), FetchOptions.Normal, true, "Sent");
                        //}
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
                    Response.ResponseMessage = "User is not authorized to download.";
                    Response.IsWarning = true;
                }
                #endregion

                #region If Message not null
                if (Message != null)
                {
                    foreach (var attachment in Message.Attachments)
                    {
                        if (Attachment.Name.Equals(attachment.ContentDisposition.FileName))
                        {
                            Response.ResponseMessage = "Attachment fetched, it will be downloaded soon.";
                            Response.IsSuccess = true;

                            var AttachmentDataStream = attachment.ContentStream;
                            byte[] AttachmentByteArray = new byte[AttachmentDataStream.Length];

                            using (MemoryStream ms = new MemoryStream())
                            {
                                attachment.ContentStream.CopyTo(ms);
                                AttachmentByteArray = ms.ToArray();
                            }
                            return File(AttachmentByteArray, attachment.ContentType.Name, attachment.Name);

                        }
                        else
                        {
                            Response.ResponseMessage = "Could not find the attachment in the mail.";
                            Response.IsError = true;
                        }
                    }
                }
                else
                {
                    Response.ResponseMessage = "Could not find mail with this attachment.";
                    Response.IsError = true;
                }
                #endregion

            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while sending mail. \n'" + ex.Message + "'.";
                Response.IsError = true;
                //Response.Object = ex;
                logger.Error(ex);
            }
            return Json(Response, JsonRequestBehavior.AllowGet);

        }
    }
}