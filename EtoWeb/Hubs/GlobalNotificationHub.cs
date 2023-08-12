using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using BusinessLogic;
using DataModels;
using AutoMapper;

namespace EtoWeb.Hubs
{
    public class GlobalNotificationHub : Hub
    {
        public void SendGlobalDesktopNotification(string title, string body, string icon, string data, string tag, bool sticky, bool noscreen)
        {
            Clients.All.globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);
        }

        public void SendGlobalKendoNotification(string Message, string MessageType)
        {
            Clients.All.globalKendoNotification(Message, MessageType);
        }

        public void SendGlobalDesktopNotificationOnNewMail(AutoMap.WorkItem WorkItem, int EtoMailId, IList<string> UserIdsToNotify, bool Global, string title, string body, string icon, string data, string tag, bool sticky, bool noscreen)
        {

            var WorkItemGridHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.WorkItemGridHub>();

            var EtoMailHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.EtoMailHub>();

            if (!Global && UserIdsToNotify.Count() > 0)
            {
                Clients.Users(UserIdsToNotify).globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);
                WorkItemGridHubContext.Clients.Users(UserIdsToNotify).update(WorkItem);
            }
            else
            {
                Clients.All.globalDesktopNotification(title, body, icon, data, tag, sticky, noscreen);
                WorkItemGridHubContext.Clients.All.create(WorkItem);
            }

            EtoMailHubContext.Clients.All.updateEtoMailListView(WorkItem.Id, EtoMailId);
        }

        public void SendGlobalKendoNotificationOnNewMail(string Message, string MessageType)
        {
            Clients.All.globalKendoNotification(Message, MessageType);
        }
    }
}