using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using AutoMapper;
using Microsoft.AspNet.SignalR;
using Kendo.Mvc.UI;
using BusinessLogic;
using EtoWeb.Extensions;
using NLog;

namespace EtoWeb.Hubs
{
    public class ReadRequestData
    {
        public string FetchMode { get; set; }
        public IList<int> HierarchyIds { get; set; }
    }
    public class WorkItemGridHub : Hub
    {
        IList<string> UserIds;

        string title;
        string body;
        string icon;
        string data;
        string tag;
        bool sticky;
        bool noscreen;

        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();


        public AutoMap.WorkItem Create(WorkItem WorkItem)
        {
            try
            {
                WorkItem.UpdatedBy = HttpContext.Current.User.Identity.GetUserInfoDataModels();
                var CreatedWorkItem = Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItemRepository.Create(WorkItem));

                UserIds = Notification.AddUserIdsForWorkItem(WorkItem);

                Clients.Users(UserIds).update(CreatedWorkItem);
                Clients.Caller.update(CreatedWorkItem);

                title = "New: " + WorkItem.ExternalUId + "- " + WorkItem.Name;
                body = "Created work item for " + (WorkItem.Manager != null ? WorkItem.Manager.Name : "---") + " by " + (WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "---");
                icon = "";
                data = WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "";
                tag = WorkItem.ExternalUId;
                sticky = true;
                noscreen = true;

                GlobalNotificationHubContext.Clients.All.globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);

                return CreatedWorkItem;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItem);
            }
        }

        public IList<AutoMap.WorkItem> Read(ReadRequestData data)
        {
            try
            {
                IList<WorkItem> WorkItems;
                bool IsAdmin = Context.User.IsInRole("SystemAdmin") || Context.User.IsInRole("OrganizationAdmin");

                User LoggedInUser = Context.User.Identity.GetUserInfoDataModels();

                switch (data.FetchMode)
                {
                    case "all":
                        WorkItems = WorkItemRepository.ReadAllActiveWorkItems(LoggedInUser, IsAdmin, data.HierarchyIds);
                        break;

                    case "mine":
                        WorkItems = WorkItemRepository.ReadMyWorkItems(LoggedInUser, IsAdmin, data.HierarchyIds);
                        break;

                    case "resolved":
                        WorkItems = WorkItemRepository.ReadReslovedWorkItems(LoggedInUser, data.HierarchyIds);
                        break;

                    case "closed":
                        WorkItems = WorkItemRepository.ReadClosedWorkItems(LoggedInUser, data.HierarchyIds);
                        break;

                    default:
                        WorkItems = new List<WorkItem>();
                        break;
                }

                return Mapper.Map<IList<WorkItem>, IList<AutoMap.WorkItem>>(WorkItems).ToList();
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(WorkItem WorkItem)
        {
            try
            {

                var UpdatedWorkItem = Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItemRepository.Update(WorkItem));

                UserIds = Notification.AddUserIdsForWorkItem(WorkItem);
                Clients.Users(UserIds).update(UpdatedWorkItem);
                Clients.Caller.update(UpdatedWorkItem);

                title = "Update: " + WorkItem.ExternalUId + "- " + WorkItem.Name;
                body = WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "";
                icon = "";
                data = "Updated work item for " + (WorkItem.Manager != null ? WorkItem.Manager.Name : "") + " by " + (WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "");
                tag = WorkItem.ExternalUId;
                sticky = true;
                noscreen = true;

                GlobalNotificationHubContext.Clients.Users(UserIds).globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }

        }

        public void Destroy(WorkItem WorkItem)
        {
            Clients.Others.update(Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItemRepository.Destroy(WorkItem)));

            UserIds = Notification.AddUserIdsForWorkItem(WorkItem);

            title = WorkItem.ExternalUId + "- " + WorkItem.Name;
            body = WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "";
            icon = "";
            data = "Deleted work item for " + (WorkItem.Manager != null ? WorkItem.Manager.Name : "") + " by " + (WorkItem.UpdatedBy != null ? WorkItem.UpdatedBy.Name : "");
            tag = WorkItem.ExternalUId;
            sticky = true;
            noscreen = true;

            GlobalNotificationHubContext.Clients.All.globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);
        }

        public void CreateNotifyOnNewMail(WorkItem WorkItem)
        {
            Clients.All.create(Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItemRepository.Create(WorkItem)));
        }

        public void UpdateNotifyOnNewMail(WorkItem WorkItem)
        {
            IList<string> UserIdsToNotify = Notification.AddUserIdsForWorkItem(WorkItem);

            Clients.Users(UserIdsToNotify).update(Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItemRepository.Create(WorkItem)));

        }
    }
}