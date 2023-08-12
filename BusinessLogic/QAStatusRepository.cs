using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class QAStatusRepository
    {
        #region QAStatusGridCRUD
        public static QAStatus Create(QAStatus QAStatus)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedQAStatus = FNHRepository.SaveOrUpdate<QAStatus>(QAStatus);
            FNHRepository.CommitTransaction();
            return CreatedQAStatus;
        }

        public static IList<QAStatus> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<QAStatus>()
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static QAStatus Update(QAStatus QAStatus)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedQAStatus = FNHRepository.SaveOrUpdate<QAStatus>(QAStatus);
            FNHRepository.CommitTransaction();
            return UpdatedQAStatus;
        }

        public static QAStatus Destroy(QAStatus QAStatus)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            QAStatus.IsDeleted = true;

            var DeletedQAStatus = FNHRepository.SaveOrUpdate<QAStatus>(QAStatus);
            FNHRepository.CommitTransaction();

            return DeletedQAStatus;
        }
        #endregion
    }
}
