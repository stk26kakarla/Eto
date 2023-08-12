using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class ColumnRepository
    {

        public static Column Create(Column Column)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedColumn = FNHRepository.SaveOrUpdate<Column>(Column);
            FNHRepository.CommitTransaction();
            return CreatedColumn;
        }

        public static IList<Column> Read()
        {
            var WorkItem = FNHRepository.Session.QueryOver<Column>()
                .Where(w => w.Cofigurable)
                .List()
                .OrderBy(o => o.ColumnOrder)
                .OrderBy(o => o.GridClass)
                .ToList();

            return WorkItem;
        }

        public static Column Update(Column Column)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedColumn = FNHRepository.SaveOrUpdate<Column>(Column);
            FNHRepository.CommitTransaction();
            return UpdatedColumn;
        }

        public static Column Destroy(Column Column)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Column.IsDeleted = true;

            var DeletedColumn = FNHRepository.SaveOrUpdate<Column>(Column);
            FNHRepository.CommitTransaction();

            return DeletedColumn;
        }
    }
}
