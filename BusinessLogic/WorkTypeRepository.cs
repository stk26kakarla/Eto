using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class WorkTypeRepository
    {
        #region WorkTypeGridCRUD
        public static WorkType Create(WorkType WorkType)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedWorkType = FNHRepository.SaveOrUpdate<WorkType>(WorkType);
            FNHRepository.CommitTransaction();
            return CreatedWorkType;
        }

        public static IList<WorkType> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<WorkType>()
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static WorkType Update(WorkType WorkType)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedWorkType = FNHRepository.SaveOrUpdate<WorkType>(WorkType);
            FNHRepository.CommitTransaction();
            return UpdatedWorkType;
        }

        public static WorkType Destroy(WorkType WorkType)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            WorkType.IsDeleted = true;

            var DeletedWorkType = FNHRepository.SaveOrUpdate<WorkType>(WorkType);
            FNHRepository.CommitTransaction();

            return DeletedWorkType;
        }
        #endregion
    }
}
