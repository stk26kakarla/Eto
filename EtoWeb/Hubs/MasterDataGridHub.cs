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
    public class HierarchyGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Hierarchy Create(Hierarchy Hierarchy)
        {
            try
            {
                var CreatedHierarchy = Mapper.Map<Hierarchy, AutoMap.Hierarchy>(HierarchyRepository.Create(Hierarchy));

                Clients.Others.create(CreatedHierarchy);

                return CreatedHierarchy;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Hierarchy, AutoMap.Hierarchy>(Hierarchy);
            }


        }

        public IList<AutoMap.Hierarchy> Read()
        {
            try
            {
                return Mapper.Map<IList<Hierarchy>, IList<AutoMap.Hierarchy>>(HierarchyRepository.Read(Context.User.Identity.GetUserInfoDataModels())).ToList();
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Hierarchy Hierarchy)
        {
            try
            {
                Clients.Others.update(Mapper.Map<Hierarchy, AutoMap.Hierarchy>(HierarchyRepository.Update(Hierarchy)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Hierarchy Hierarchy)
        {
            Clients.Others.update(Mapper.Map<Hierarchy, AutoMap.Hierarchy>(HierarchyRepository.Destroy(Hierarchy)));

        }
    }

    public class ShiftGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Shift Create(Shift Shift)
        {
            try
            {
                var CreatedShift = Mapper.Map<Shift, AutoMap.Shift>(ShiftRepository.Create(Shift));

                Clients.Others.create(CreatedShift);

                return CreatedShift;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Shift, AutoMap.Shift>(Shift);

            }
        }

        public IList<AutoMap.Shift> Read()
        {
            try
            {
                return Mapper.Map<IList<Shift>, IList<AutoMap.Shift>>(ShiftRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Shift Shift)
        {
            try
            {
                Clients.Others.update(Mapper.Map<Shift, AutoMap.Shift>(ShiftRepository.Update(Shift)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Shift Shift)
        {
            Clients.Others.update(Mapper.Map<Shift, AutoMap.Shift>(ShiftRepository.Destroy(Shift)));

        }
    }

    public class CountryGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Country Create(Country Country)
        {
            try
            {
                var CreatedCountry = Mapper.Map<Country, AutoMap.Country>(CountryRepository.Create(Country));

                Clients.Others.create(CreatedCountry);

                return CreatedCountry;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Country, AutoMap.Country>(Country);
            }
        }

        public IList<AutoMap.Country> Read()
        {
            try
            {
                return Mapper.Map<IList<Country>, IList<AutoMap.Country>>(CountryRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Country Country)
        {
            try
            {
                Clients.Others.update(Mapper.Map<Country, AutoMap.Country>(CountryRepository.Update(Country)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Country Country)
        {
            Clients.Others.update(Mapper.Map<Country, AutoMap.Country>(CountryRepository.Destroy(Country)));

        }
    }

    public class StatusGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Status Create(Status Status)
        {
            try
            {
                var CreatedStatus = Mapper.Map<Status, AutoMap.Status>(StatusRepository.Create(Status));

                Clients.Others.create(CreatedStatus);

                return CreatedStatus;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Status, AutoMap.Status>(Status);
            }
        }

        public IList<AutoMap.Status> Read()
        {
            try
            {
                return Mapper.Map<IList<Status>, IList<AutoMap.Status>>(StatusRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Status Status)
        {
            //IList<string> UserIds = new List<string>();

            //UserIds.Add("1");

            try
            {
                Clients.Others.update(Mapper.Map<Status, AutoMap.Status>(StatusRepository.Update(Status)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Status Status)
        {
            Clients.Others.update(Mapper.Map<Status, AutoMap.Status>(StatusRepository.Destroy(Status)));

        }
    }

    public class QAStatusGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.QAStatus Create(QAStatus QAStatus)
        {
            try
            {
                var CreatedQAStatus = Mapper.Map<QAStatus, AutoMap.QAStatus>(QAStatusRepository.Create(QAStatus));

                Clients.Others.create(CreatedQAStatus);

                return CreatedQAStatus;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<QAStatus, AutoMap.QAStatus>(QAStatus);
            }
        }

        public IList<AutoMap.QAStatus> Read()
        {
            try
            {
                return Mapper.Map<IList<QAStatus>, IList<AutoMap.QAStatus>>(QAStatusRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(QAStatus QAStatus)
        {
            try
            {
                Clients.Others.update(Mapper.Map<QAStatus, AutoMap.QAStatus>(QAStatusRepository.Update(QAStatus)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(QAStatus QAStatus)
        {
            Clients.Others.update(Mapper.Map<QAStatus, AutoMap.QAStatus>(QAStatusRepository.Destroy(QAStatus)));

        }
    }

    public class DelayCauseGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.DelayCause Create(DelayCause DelayCause)
        {
            try
            {
                var CreatedDelayCause = Mapper.Map<DelayCause, AutoMap.DelayCause>(DelayCauseRepository.Create(DelayCause));

                Clients.Others.create(CreatedDelayCause);

                return CreatedDelayCause;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<DelayCause, AutoMap.DelayCause>(DelayCause);
            }
        }

        public IList<AutoMap.DelayCause> Read()
        {
            try
            {
                return Mapper.Map<IList<DelayCause>, IList<AutoMap.DelayCause>>(DelayCauseRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(DelayCause DelayCause)
        {
            try
            {
                Clients.Others.update(Mapper.Map<DelayCause, AutoMap.DelayCause>(DelayCauseRepository.Update(DelayCause)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(DelayCause DelayCause)
        {
            Clients.Others.update(Mapper.Map<DelayCause, AutoMap.DelayCause>(DelayCauseRepository.Destroy(DelayCause)));

        }
    }

    public class WorkTypeGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.WorkType Create(WorkType WorkType)
        {
            try
            {
                var CreatedWorkType = Mapper.Map<WorkType, AutoMap.WorkType>(WorkTypeRepository.Create(WorkType));

                Clients.Others.create(CreatedWorkType);

                return CreatedWorkType;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<WorkType, AutoMap.WorkType>(WorkType);
            }
        }

        public IList<AutoMap.WorkType> Read()
        {
            try
            {
                return Mapper.Map<IList<WorkType>, IList<AutoMap.WorkType>>(WorkTypeRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(WorkType WorkType)
        {
            try
            {
                Clients.Others.update(Mapper.Map<WorkType, AutoMap.WorkType>(WorkTypeRepository.Update(WorkType)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(WorkType WorkType)
        {
            Clients.Others.update(Mapper.Map<WorkType, AutoMap.WorkType>(WorkTypeRepository.Destroy(WorkType)));

        }
    }

    public class BusinessGridHub : Hub
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
        IHubContext GlobalNotificationHubContext = GlobalHost.ConnectionManager.GetHubContext<Hubs.GlobalNotificationHub>();

        public AutoMap.Business Create(Business Business)
        {
            try
            {
                var CreatedBusiness = Mapper.Map<Business, AutoMap.Business>(BusinessRepository.Create(Business));

                Clients.Others.create(CreatedBusiness);

                return CreatedBusiness;
            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return Mapper.Map<Business, AutoMap.Business>(Business);
            }
        }

        public IList<AutoMap.Business> Read()
        {
            try
            {
                return Mapper.Map<IList<Business>, IList<AutoMap.Business>>(BusinessRepository.Read()).ToList();

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");

                return null;
            }
        }

        public void Update(Business Business)
        {
            try
            {
                Clients.Others.update(Mapper.Map<Business, AutoMap.Business>(BusinessRepository.Update(Business)));

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                GlobalNotificationHubContext.Clients.User(Context.User.Identity.GetLoggedInUserId().ToString()).globalKendoNotification("Error occurred. " + ex.Message + ".", "error");
            }
        }

        public void Destroy(Business Business)
        {
            Clients.Others.update(Mapper.Map<Business, AutoMap.Business>(BusinessRepository.Destroy(Business)));

        }
    }
}