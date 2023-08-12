using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class BusinessRepository
    {
        #region BusinessGridCRUD
        public static Business Create(Business Business)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedBusiness = FNHRepository.SaveOrUpdate<Business>(Business);
            FNHRepository.CommitTransaction();
            return CreatedBusiness;
        }

        public static IList<Business> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<Business>()
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static Business Update(Business Business)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedBusiness = FNHRepository.SaveOrUpdate<Business>(Business);
            FNHRepository.CommitTransaction();
            return UpdatedBusiness;
        }

        public static Business Destroy(Business Business)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Business.IsDeleted = true;

            var DeletedBusiness = FNHRepository.SaveOrUpdate<Business>(Business);
            FNHRepository.CommitTransaction();

            return DeletedBusiness;
        }
        #endregion
    }
}
