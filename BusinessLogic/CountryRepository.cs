using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class CountryRepository
    {
        #region CountryGridCRUD
        public static Country Create(Country Country)
        {
            if (Country.Manager != null && Country.Manager.Id == 0)
            {
                Country.Manager = null;
            }
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedCountry = FNHRepository.SaveOrUpdate<Country>(Country);
            FNHRepository.CommitTransaction();
            return CreatedCountry;
        }

        public static IList<Country> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<Country>()
                .OrderBy(o => o.Name).Asc
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return WorkItem;
        }

        public static Country Update(Country Country)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedCountry = FNHRepository.SaveOrUpdate<Country>(Country);
            FNHRepository.CommitTransaction();
            return UpdatedCountry;
        }

        public static Country Destroy(Country Country)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Country.IsDeleted = true;

            var DeletedCountry = FNHRepository.SaveOrUpdate<Country>(Country);
            FNHRepository.CommitTransaction();

            return DeletedCountry;
        }
        #endregion
    }
}
