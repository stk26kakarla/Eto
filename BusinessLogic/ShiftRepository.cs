using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class ShiftRepository
    {
        #region ShiftGridCRUD
        public static Shift Create(Shift Shift)
        {
            if (Shift.Manager != null && Shift.Manager.Id == 0)
            {
                Shift.Manager = null;
            }
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedShift = FNHRepository.SaveOrUpdate<Shift>(Shift);
            FNHRepository.CommitTransaction();
            return CreatedShift;
        }

        public static IList<Shift> Read()
        {
            var Shift = FNHRepository.Session.QueryOver<Shift>().OrderBy(o => o.StartTime).Asc
                // .Where(w => w.Cofigurable)
                .List()
                .ToList();

            return Shift;
        }

        public static Shift Update(Shift Shift)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedShift = FNHRepository.SaveOrUpdate<Shift>(Shift);
            FNHRepository.CommitTransaction();
            return UpdatedShift;
        }

        public static Shift Destroy(Shift Shift)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Shift.IsDeleted = true;

            var DeletedShift = FNHRepository.SaveOrUpdate<Shift>(Shift);
            FNHRepository.CommitTransaction();

            return DeletedShift;
        }
        #endregion
    }
}
