using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class DelayCauseRepository
    {
        #region DelayCauseGridCRUD
        public static DelayCause Create(DelayCause DelayCause)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedDelayCause = FNHRepository.SaveOrUpdate<DelayCause>(DelayCause);
            FNHRepository.CommitTransaction();
            return CreatedDelayCause;
        }

        public static IList<DelayCause> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<DelayCause>()
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static DelayCause Update(DelayCause DelayCause)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedDelayCause = FNHRepository.SaveOrUpdate<DelayCause>(DelayCause);
            FNHRepository.CommitTransaction();
            return UpdatedDelayCause;
        }

        public static DelayCause Destroy(DelayCause DelayCause)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            DelayCause.IsDeleted = true;

            var DeletedDelayCause = FNHRepository.SaveOrUpdate<DelayCause>(DelayCause);
            FNHRepository.CommitTransaction();

            return DeletedDelayCause;
        }
        #endregion
    }
}
