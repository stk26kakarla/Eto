using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using DataModels;
using AutoMapper;
using BusinessLogic;
using EtoWeb.Extensions;
using NLog;

namespace EtoWeb.Hubs
{
    public class UserGridHub : Hub
    {
        IList<string> UserIds;
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.User Create(User User)
        {
            try
            {
                var CreatedUser = Mapper.Map<User, AutoMap.User>(UserRepository.Create(User));

                UserIds = Notification.AddUserIdsForUsers(User);

                Clients.Users(UserIds).create(CreatedUser);

                return CreatedUser;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<User, AutoMap.User>(User);
            }
        }

        public IList<AutoMap.User> Read()
        {
            try
            {
                bool IsAdmin = Context.User.IsInRole("SystemAdmin") || Context.User.IsInRole("OrganizationAdmin");
                return Mapper.Map<IList<User>, IList<AutoMap.User>>(UserRepository.Read(Context.User.Identity.GetUserInfoDataModels(), IsAdmin)).ToList();
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(User User)
        {
            try
            {
                UserIds = Notification.AddUserIdsForUsers(User);

                Clients.Users(UserIds).update(Mapper.Map<User, AutoMap.User>(UserRepository.Update(User)));

                var GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();
                GlobalNotificationHubContext.Clients.Users(UserIds).globalKendoNotification(User.Name + "'s profile was updated. -" + (User.UpdatedBy != null ? User.UpdatedBy.Name : ""), "success");
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(User User)
        {
            try
            {
                UserIds = Notification.AddUserIdsForUsers(User);

                Clients.Users(UserIds).update(Mapper.Map<User, AutoMap.User>(UserRepository.Destroy(User)));

                var GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();
                GlobalNotificationHubContext.Clients.Users(UserIds).globalKendoNotification(User.Name + "'s profile was deleted. -" + (User.UpdatedBy != null ? User.UpdatedBy.Name : ""), "success");
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }
    }

}