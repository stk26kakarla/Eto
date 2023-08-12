using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using DataModels;
using BusinessLogic;
using AutoMapper;
using EtoWeb.Extensions;
using NLog;

namespace EtoWeb.Hubs
{
    public class ColumnConfigurationHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Column Create(Column Column)
        {
            try
            {
                var CreatedColumn = ColumnRepository.Create(Column);

                Clients.Others.create(CreatedColumn);

                GlobalNotificationHubContext.Clients.All.globalKendoNotification("Created new column(s) for " + Column.GridClass, "success");

                return Mapper.Map<Column, AutoMap.Column>(CreatedColumn);
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Column, AutoMap.Column>(Column);
            }
        }

        public IList<AutoMap.Column> Read()
        {
            try
            {
                return Mapper.Map<IList<Column>, IList<AutoMap.Column>>(ColumnRepository.Read()).ToList();
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Column Column)
        {
            try
            {
                Clients.Others.update(ColumnRepository.Update(Column));
                GlobalNotificationHubContext.Clients.All.globalKendoNotification("Updated column(s) configuration for " + Column.GridClass, "success");
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Column Column)
        {
            Clients.Others.update(ColumnRepository.Destroy(Column));
            var GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();
            GlobalNotificationHubContext.Clients.All.globalKendoNotification("Deleted column(s) for " + Column.GridClass, "success");
        }
    }
}