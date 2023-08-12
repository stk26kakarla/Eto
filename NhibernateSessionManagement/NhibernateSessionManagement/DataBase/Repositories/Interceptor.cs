using NHibernate;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NhibernateSessionManagement.DataBase.Repositories
{
    public class Interceptor
    {
        public class SqlStatementInterceptor : EmptyInterceptor
        {
            public override NHibernate.SqlCommand.SqlString OnPrepareStatement(NHibernate.SqlCommand.SqlString sql)
            {
                return sql;
            }

            public override void PostFlush(System.Collections.ICollection entities)
            {

                //var entityArray = new ArrayList();

                //foreach (var entity in entities)
                //{
                //    entityArray.Add(entity);
                //}

                //foreach (var entity in entityArray)
                //{
                //    var executionItem = entity as BasicItems;
                //    if (executionItem != null)
                //    {
                //        //Get history Object
                //        var executionItemHistory = executionItem.GetHistoryObject();
                //        if (executionItemHistory != null && entity as IHistory == null)
                //        {
                //            executionItemHistory.UpdatedBy = executionItem.UpdatedBy;
                //            //Save History Object
                //            FNHRepository.SaveOrUpdate(executionItemHistory);
                //        }
                //    }
                //}
            }

            public override bool OnSave(object entity, object id, object[] state, string[] propertyNames, NHibernate.Type.IType[] types)
            {
                return true;
            }
        }
    }
}
