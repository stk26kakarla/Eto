using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Linq.Expressions;
using NHibernate;
using System.Threading;
using NHibernate.Criterion;
using NhibernateSessionManagement.Common;
using DataModels;
using NHibernate.Envers;
using NHibernate.Envers.Query;

namespace NhibernateSessionManagement.DataBase.DataManager
{

    public static class FNHRepository
    {
        private static FNHSessionManager<User> fnhSessionManager;
        private static object lockObject = new object();
        private static Dictionary<Thread, ISession> sessionsByThread = new Dictionary<Thread, ISession>();
        #region Constructor
        static FNHRepository()
        {
            InitFNHRepository();
        }
        #endregion

        #region Private
        private static FNHSessionManager<User> CreateFNHSessionManager()
        {
            return new FNHSessionManager<User>(NhibernateSessionManagement.DataBase.DataManager.FNHSessionManager<User>.DatabaseType.MsSql, "");
        }
        /// <summary>
        /// Current session manager
        /// </summary>
        private static FNHSessionManager<User> CurrentDbSessionManager
        {
            get
            {
                if (fnhSessionManager == null)
                {
                    lock (lockObject)
                    {
                        //ensure objected is not created yet
                        if (fnhSessionManager == null)
                        {
                            fnhSessionManager = CreateFNHSessionManager();
                        }
                    }

                }
                return fnhSessionManager;
            }
        }

        public static ISession Session
        {
            get
            {
                ISession session;
                sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
                if (session == null)
                {
                    OpenSession();
                    sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
                    session.FlushMode = FlushMode.Commit;
                }

                return session;
            }
        }

        #endregion

        #region Initialization
        public static void InitFNHRepository()
        {
            fnhSessionManager = CreateFNHSessionManager();
        }
        #endregion
        #region Transaction
        /// <summary>
        /// Start open connection and start transaction
        /// </summary>
        /// <param name="isReadonlyOperation">Start transaction if isReadonlyOperation = false </param>
        public static void OnActionExecuting(bool isReadonlyOperation = true)
        {
            var session = CurrentDbSessionManager.SessionFactory.OpenSession();
            //  var session = CurrentDbSessionManager.Session;
            if (!sessionsByThread.ContainsKey(Thread.CurrentThread))
            {
                sessionsByThread.Add(Thread.CurrentThread, session);
            }

            //begin transaction only
            if (!isReadonlyOperation)
            {
                session.BeginTransaction();
            }
        }

        /// <summary>
        /// Complete contraction and close the connection
        /// </summary>
        /// <param name="rollback">Rollback trancation if rollback=true</param>
        public static void OnActionExecuted(bool rollback = true)
        {
            //var session =  CurrentDbSessionManager.Session;
            ISession session;
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
            if (session != null)
            {
                var transaction = session.Transaction;
                if (transaction != null && transaction.IsActive)
                {
                    if (rollback)
                    {
                        transaction.Rollback();
                    }
                    else
                    {
                        transaction.Commit();
                        session.Flush();
                    }
                }
                if (session.IsOpen)
                {
                    // session.Close();
                }
                sessionsByThread.Remove(Thread.CurrentThread);
            }
        }

        public static void OpenSession()
        {
            ISession session; // CurrentDbSessionManager.SessionFactory.OpenSession();
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);

            if (session == null)
            {
                session = CurrentDbSessionManager.SessionFactory.OpenSession();
                if (!sessionsByThread.ContainsKey(Thread.CurrentThread))
                {
                    sessionsByThread.Add(Thread.CurrentThread, session);
                }
            }
            else if (!session.IsOpen)
            {
                session.Connection.Open();
            }
        }

        public static void BeginTransaction()
        {
            ISession session; // CurrentDbSessionManager.SessionFactory.OpenSession();
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
            if (session != null)
            {
                session.BeginTransaction();
            }
        }

        public static void CommitTransaction()
        {
            ISession session; // CurrentDbSessionManager.SessionFactory.OpenSession();
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
            if (session != null)
            {
                var transaction = session.Transaction;
                if (transaction != null && transaction.IsActive)
                {
                    transaction.Commit();
                    session.Flush();
                }
            }
        }

        public static void RollbackTransaction()
        {
            ISession session; // CurrentDbSessionManager.SessionFactory.OpenSession();
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
            if (session != null)
            {
                var transaction = session.Transaction;
                if (transaction != null && transaction.IsActive)
                {
                    transaction.Rollback();
                }
            }
        }
        public static void CloseSession()
        {
            ISession session; // CurrentDbSessionManager.SessionFactory.OpenSession();
            sessionsByThread.TryGetValue(Thread.CurrentThread, out session);
            if (session != null)
            {
                if (session.IsOpen)
                {
                    session.Close();
                }
            }
            sessionsByThread.Remove(Thread.CurrentThread);
        }


        #endregion

        #region Database operations

        ///// <summary>
        ///// Update object
        ///// </summary>
        ///// <typeparam name="T">Model type to update</typeparam>
        ///// <param name="entity">Model object to save</param>
        ///// <returns>Updated object</returns>
        //public static T Update<T>(T entity)
        //{
        //    Session.Update(entity);
        //    return entity;
        //}

        /// <summary>
        /// Add or Update object
        /// </summary>
        /// <typeparam name="T">Model type to add or update</typeparam>
        /// <param name="entity">Model object to add or save</param>
        /// <param name="saveHistory">Save History of the entity that is being saved</param>
        /// <param name="UpdatedOnForTasks">During BM when tasks are updated or added the updatedOn of tasks are also being changed 
        /// which is not required hence this bool value for if condition</param>
        /// <returns>Updated object</returns>
        public static T SaveOrUpdate<T>(T entity)
        {
            var basicEntity = entity as BasicItem;

            if (basicEntity != null)
            {
                basicEntity.UpdatedOn = DateTime.UtcNow;
            }
            using (ITransaction t = Session.BeginTransaction())
            { Session.SaveOrUpdate(entity); t.Commit(); }

            return entity;
        }

        public static void Refresh(ref object entity, bool saveHistory = false)
        {
            Session.Refresh(entity, LockMode.Read);
        }
        /// <summary>
        /// Create object
        /// </summary>
        /// <typeparam name="T">Model type to create</typeparam>
        /// <param name="entity">Model object to create</param>
        /// <returns>Newly created object</returns>
        //public static T Create<T>(T entity)
        //{
        //    Session.Save(entity);
        //    return entity;
        //}

        /// <summary>
        /// Return object by id
        /// </summary>
        /// <typeparam name="T">Model type to return</typeparam>
        /// <returns>Retun object. Null if object not found for given id</returns>
        public static T RetrieveById<T>(int id)
        {
            return Session.Get<T>(id);
        }

        /// <summary>
        /// return object
        /// </summary>
        /// <param name="entityName"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public static object RetrieveById(int id, string entityName)
        {
            return Session.Load(entityName, id);
        }

        /// <summary>
        /// Delete an object from the database.
        /// </summary>
        /// <param name="objectToDelete">Object instance containing the information to delete from the database.</param>
        public static void Delete<T>(T objectToDelete)
        {
            Session.Delete(objectToDelete);

        }


        /// <summary>
        /// Execute the query that is passed by the calling program
        /// </summary>
        /// <param name="objectToDelete">Query object containing the query to be executed.</param>
        public static IList<T> ExecuteQuery<T>(string hqlQuery)
        {
            var result = Session.CreateQuery(hqlQuery).List<T>();
            return result;
        }

        /// <summary>
        /// Execute the query that is passed by the calling program
        /// </summary>
        /// <param name="objectToDelete">Query object containing the query to be executed.</param>
        public static int ExecuteUpdateQuery(string hqlUpdateQuery)
        {
            return Session.CreateQuery(hqlUpdateQuery).ExecuteUpdate();
        }

        ///<summary>
        /// Find an object meeting the specified criteria.
        ///  </summary>
        ///   <param name="expression">expression specifying the search criteria.</param>
        public static IList<T> FindBy<T>(Expression<Func<T, bool>> expression, bool loadDeletedItems = false) where T : class
        {
            var result = Session.QueryOver<T>().Where(expression).List<T>();
            if (!loadDeletedItems)
            {
                result = RemoveDeletedItems<T>(result);
            }
            return result;
        }

        ///<summary>
        /// Find an object meeting the specified criteria.
        ///  </summary>
        ///   <param name="expression">expression specifying the search criteria.</param>
        public static IList<T> GetAll<T>(bool loadDeletedItems = false) where T : class
        {
            var result = Session.QueryOver<T>().List<T>();
            if (!loadDeletedItems)
            {
                result = RemoveDeletedItems<T>(result);
            }

            var reader = AuditReaderFactory.Get(Session).CreateQuery()
     .ForEntitiesAtRevision(typeof(T), 12)
     .GetResultList();

            return result;
        }

        public static IList<T> GetHistory<T>(int Id) where T : class
        {
            var result = AuditReaderFactory.Get(Session)
                .CreateQuery()
                .ForEntitiesAtRevision(typeof(T), 100)
                .GetResultList<T>();

            return result;
        }

        private static IList<T> RemoveDeletedItems<T>(IList<T> items) where T : class
        {
            var isBasicItem = false;
            Type cur = typeof(T);

            while (cur != null)
            {
                if (cur.Equals(typeof(BasicItem)))
                {
                    isBasicItem = true;
                    break;
                }

                cur = cur.BaseType;
            }

            if (isBasicItem)
            {
                items = items.Where(p => (p as BasicItem != null && (p as BasicItem).IsDeleted == false)).ToList<T>();
            }
            return items;
        }
        #endregion

        public static void DetachObjectFromSession(object persistentObject)
        {
            Session.Evict(persistentObject);
        }

        public static object AttachObjectToSession(object persistentObject)
        {
            return Session.Merge(persistentObject);
        }

        #region SearchFilter
        public static void ApplyFilters(Junction criteria, IList<SearchFilter> filters, ICriteria rootCriteria, IList<string> aliases)
        {
            if (filters != null && filters.Any())
            {
                foreach (SearchFilter filter in filters)
                {
                    //if or filter exist add or filters
                    if (filter.Filters != null && filter.Filters.Any())
                    {
                        Junction oCriteria = null;
                        if (filter.Logic == "and")
                        {
                            oCriteria = Restrictions.Conjunction();
                        }
                        else
                        {
                            oCriteria = Restrictions.Disjunction();
                        }
                        foreach (SearchFilter orFilter in filter.Filters)
                        {
                            oCriteria.Add(ApplyFilter(criteria, orFilter, rootCriteria, aliases));
                        }
                        criteria.Add(oCriteria);
                    }
                    else
                    {
                        var cr = ApplyFilter(criteria, filter, rootCriteria, aliases);
                        criteria.Add(cr);
                    }
                }
            }
        }

        public static ICriterion ApplyFilter(Junction criteria, SearchFilter filter, ICriteria rootCriteria, IList<string> aliases)
        {
            if (filter != null && filter.Filters != null && filter.Filters.Any())
            {

                Junction oCriteria = null;
                if (filter.Operator == "and")
                {
                    oCriteria = Restrictions.Conjunction();
                }
                else
                {
                    oCriteria = Restrictions.Disjunction();
                }

                ApplyFilters(oCriteria, filter.Filters, rootCriteria, aliases);

                criteria.Add(oCriteria);
            }

            string field;

            if (filter.Field.StartsWith("*"))
            {
                field = filter.Field.Substring(1);
            }
            else
            {
                field = filter.Field;
                AddAlias(rootCriteria, aliases, field);
            }

            object value = filter.Value;

            //  if (filter.DataType != null)
            //  {
            switch (filter.DataType)
            {
                case "date":
                    filter.Value = new DateTime((long)filter.Value);

                    if (filter.Values != null)
                    {
                        for (int i = 0; i < filter.Values.Length; i++)
                        {
                            filter.Values[i] = new DateTime((long)filter.Values[i]);
                        }
                    }
                    break;
                case "int":
                    filter.Value = int.Parse(filter.Value.ToString());

                    if (filter.Values != null)
                    {
                        for (int i = 0; i < filter.Values.Length; i++)
                        {
                            filter.Values[i] = int.Parse(filter.Values[i].ToString());
                        }
                    }
                    break;
                case "bool":
                    filter.Value = bool.Parse(filter.Value.ToString());

                    if (filter.Values != null)
                    {
                        for (int i = 0; i < filter.Values.Length; i++)
                        {
                            filter.Values[i] = bool.Parse(filter.Values[i].ToString());
                        }
                    }
                    break;
                default:

                    if (filter.Value == null)
                    {
                        break;
                    }

                    int intValue = 0;
                    bool boolValue = false;
                    DateTime dateValue = DateTime.UtcNow;

                    if (DateTime.TryParse(filter.Value.ToString(), out dateValue))
                    {
                        filter.Value = dateValue;
                        break;
                    }

                    if (int.TryParse(filter.Value.ToString(), out intValue))
                    {
                        filter.Value = intValue;
                        break;
                    }

                    if (bool.TryParse(filter.Value.ToString(), out boolValue))
                    {
                        filter.Value = boolValue;
                        break;
                    }
                    break;
            }

            // }


            switch (filter.Operator.ToLower())
            {
                case "eq":
                    if (filter.Value == null)
                        return Restrictions.IsNull(field);
                    return Restrictions.Eq(field, filter.Value);
                case "neq":
                    if (filter.Value == null)
                        return Restrictions.IsNotNull(field);
                    return Restrictions.Not(Restrictions.Eq(field, filter.Value));
                case "lt":
                    return Restrictions.Lt(field, filter.Value);
                case "lte":
                case "le":
                    return Restrictions.Le(field, filter.Value);
                case "gt":
                    return Restrictions.Gt(field, filter.Value);
                case "gte":
                case "ge":
                    return Restrictions.Ge(field, filter.Value);
                case "in":
                    return Restrictions.In(field, filter.Values);
                case "contains":
                    return Restrictions.Like(field, string.Format("%{0}%", filter.Value));
                case "startswith":
                    return Restrictions.Like(field, string.Format("{0}%", filter.Value));
                default:
                    return Restrictions.Like(field, string.Format("%{0}%", filter.Value)); ;
            }

        }

        public static void ApplySortings(ICriteria criteria, IList<SortField> sortings, IList<string> aliases)
        {
            if (sortings != null && sortings.Any())
            {
                foreach (SortField sort in sortings)
                {
                    bool ascending = sort.Ascending;

                    string field = sort.Field;
                    bool addAlias = true;
                    if (field.StartsWith("*"))
                    {
                        addAlias = false;
                        field = sort.Field.Substring(1);
                    }
                    if (field.StartsWith("-"))
                    {
                        field = field.Substring(1);
                        ascending = !ascending;
                    }
                    if (addAlias)
                    {
                        // AddAlias(criteria, aliases, sort.Field);
                        field = AddAlias(criteria, aliases, field);
                    }

                    if (sort.Projection == null)
                    {
                        criteria.AddOrder(ascending
                                                  ? Order.Asc(field)
                                                  : Order.Desc(field));
                    }
                    else
                    {
                        var projection = (IProjection)sort.Projection;
                        criteria.AddOrder(ascending
                                                  ? Order.Asc(projection)
                                                  : Order.Desc(projection));
                    }
                }
            }
        }

        private static string AddAlias(ICriteria criteria, IList<string> aliases, string field)
        {

            int idx = field.IndexOf('.');
            //if (idx != -1)
            //{
            //    ICriteria subCriteria = criteria;
            //    string relation = field.Substring(0, idx);
            //    if (aliases.All(a => a != relation))
            //    {
            //        subCriteria = criteria.CreateAlias(relation, relation);
            //        aliases.Add(relation);
            //    }              
            //}
            string returnField = field;
            if (idx != -1)
            {
                var fields = field.Split('.');

                for (int i = 0; i < fields.Length - 1; i++)
                {
                    string associationPath = i > 0 ? fields[i - 1] + "." + fields[i] : fields[i];
                    string alias = fields[i];

                    returnField = fields[i] + "." + fields[i + 1];

                    if (aliases.All(a => a != associationPath))
                    {
                        criteria.CreateAlias(associationPath, alias);
                        aliases.Add(associationPath);
                    }
                }
            }

            return returnField;
        }
        #endregion
    }
}

