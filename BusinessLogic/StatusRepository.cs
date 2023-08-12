using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class StatusRepository
    {
        #region StatusGridCRUD
        public static Status Create(Status Status)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedStatus = FNHRepository.SaveOrUpdate<Status>(Status);
            FNHRepository.CommitTransaction();
            return CreatedStatus;
        }

        public static IList<Status> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<Status>()
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static Status Update(Status Status)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedStatus = FNHRepository.SaveOrUpdate<Status>(Status);
            FNHRepository.CommitTransaction();
            return UpdatedStatus;
        }

        public static Status Destroy(Status Status)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Status.IsDeleted = true;

            var DeletedStatus = FNHRepository.SaveOrUpdate<Status>(Status);
            FNHRepository.CommitTransaction();

            return DeletedStatus;
        }
        #endregion
    }
}
