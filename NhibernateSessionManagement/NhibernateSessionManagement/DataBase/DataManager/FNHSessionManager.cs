using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NhibernateSessionManagement.DataBase.Interface;
using NHibernate;
using NHibernate.Context;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using NHibernate.Tool.hbm2ddl;
//using System.Web;
using FluentNHibernate.Automapping;
using System.Reflection;
using System.Configuration;
using NhibernateSessionManagement.DataBase.Repositories;
using DataModels;
using Mappings;
using NHibernate.Envers.Configuration;
using NHibernate.Cfg;

namespace NhibernateSessionManagement.DataBase.DataManager
{
    public class FNHSessionManager<T> : IFNHSessionManager, IDisposable
    {

        #region Enumerations

        /// <summary>
        /// The database type that we are using to execute the operations.
        /// </summary>
        public enum DatabaseType
        {
            MsSql = 0,
            MsSqlCe
        }

        #endregion

        #region Properties

        private readonly ISessionFactory _sessionFactory;

        public ISessionFactory SessionFactory
        {
            get { return _sessionFactory; }
        }

        public ISession Session { get; set; }
        //public ISession Session
        //{
        //    get
        //    {
        //        if (!ManagedWebSessionContext.HasBind(HttpContext.Current, SessionFactory))
        //        {
        //            ManagedWebSessionContext.Bind(HttpContext.Current, SessionFactory.OpenSession());
        //        }
        //        return _sessionFactory.GetCurrentSession();
        //    }
        //}

        //private readonly ITransaction _transaction;

        #endregion

        #region Constructors

        /// <summary>
        /// Constructor to create a Fluent NHibernate Manager.
        /// </summary>
        /// <param name="dbConfigKey">The database connection string.</param>
        /// <param name="dbType">The database type to create a connection. </param>
        public FNHSessionManager(DatabaseType dbType, string dbConfigKey)
        {
            // dbConfigKey should come from Organization table.  program change to be done when multi-company access management is implemented

            if (string.IsNullOrEmpty(dbConfigKey))
            {
                // dbConfigKey = Configuration.WebConfigurationManager.AppSettings.Get("DatabaseConnectionString");
                //   dbConfigKey = System.Configuration.ConfigurationManager.AppSettings.Get("DatabaseConnectionString");
                dbConfigKey = System.Configuration.ConfigurationManager.ConnectionStrings["EtoConnectionString"].ConnectionString;

            }

            switch (dbType)
            {
                case DatabaseType.MsSql:
                    _sessionFactory = Fluently.Configure()
                        .Database(
                            MsSqlConfiguration.MsSql2008
                                .ConnectionString(dbConfigKey)
                                .ShowSql()
                        )
                        .Mappings(m =>
                        {
                            m.FluentMappings.AddFromAssemblyOf<T>();
                            m.FluentMappings.AddFromAssemblyOf<User>();
                            m.FluentMappings.AddFromAssemblyOf<UserMap>();
                        })
                        .ExposeConfiguration(SetupEnvers)
                        .ExposeConfiguration(cfg => new SchemaUpdate(cfg).Execute(false, true))
                        .ExposeConfiguration(x =>
                        {
                            x.SetInterceptor(new Interceptor.SqlStatementInterceptor());
                        })
                        .CurrentSessionContext(typeof(WebSessionContext).FullName)
                        .BuildSessionFactory();
                    break;
                case DatabaseType.MsSqlCe:
                    _sessionFactory = Fluently.Configure()
                        .Database(
                            MsSqlConfiguration.MsSql2008
                                .ConnectionString(c => c.FromConnectionStringWithKey(dbConfigKey))
                        )
                        .Mappings(m =>
                        {
                            m.FluentMappings.AddFromAssemblyOf<T>();
                            m.FluentMappings.AddFromAssemblyOf<User>();
                            m.FluentMappings.AddFromAssemblyOf<UserMap>();
                        })
                        .ExposeConfiguration(SetupEnvers)
                        .ExposeConfiguration(cfg => new SchemaUpdate(cfg).Execute(false, true))
                        .CurrentSessionContext(typeof(WebSessionContext).FullName)

                        .BuildSessionFactory();
                    break;
            }
            //if (HttpContext.Current != null && HttpContext.Current.ApplicationInstance != null)
            //{
            //    HttpContext.Current.ApplicationInstance.EndRequest += (sender, args) => CleanUp();
            //}

            // _transaction = Session.BeginTransaction();
        }

        private static void SetupEnvers(NHibernate.Cfg.Configuration Configuration)
        {
            var enversConf = new NHibernate.Envers.Configuration.Fluent.FluentConfiguration();

            //Tables that needs auditing
            enversConf.Audit<User>();
            //enversConf.Audit<Email>();
            enversConf.Audit<Shift>();
            enversConf.Audit<Country>();
            enversConf.Audit<Status>();
            enversConf.Audit<WorkType>();
            enversConf.Audit<Business>();
            enversConf.Audit<QAStatus>();
            enversConf.Audit<DelayCause>();
            enversConf.Audit<Hierarchy>();
            enversConf.Audit<WorkItem>().Exclude(x => x.EtoMails);
            enversConf.Audit<WorkPlan>();
            enversConf.Audit<Column>();
            enversConf.Audit<Command>();

            enversConf.SetRevisionEntity<UpdateHistory>(e => e.Id, e => e.UpdatedOn, new UpdateHistoryListener());

            Configuration.SetEnversProperty(ConfigurationKey.StoreDataAtDelete, true);
            Configuration.SetEnversProperty(ConfigurationKey.AuditTableSuffix, "History");
            //Configuration.SetEnversProperty(ConfigurationKey.AuditStrategy, typeof(ValidityAuditStrategy));

            Configuration.IntegrateWithEnvers(enversConf);
        }


        #endregion

        #region Public Functions

        /// <summary>
        /// Rollback the current transaction set.
        /// </summary>
        //public void Rollback()
        //{
        //    if (_transaction.IsActive)
        //        _transaction.Rollback();
        //}

        /// <summary>
        /// Commit the current transaction set to the database.
        /// </summary>
        //public void Commit()
        //{
        //    if (_transaction.IsActive)
        //        _transaction.Commit();
        //}

        /// <summary>
        /// Clean up the session.
        /// </summary>
        public void CleanUp()
        {
            //  CleanUp(HttpContext.Current, _sessionFactory);
        }

        /// <summary>
        /// Static function to clean up the session.
        /// </summary>
        /// <param name="context">The context to which the session has been bound.</param>
        /// <param name="sessionFactory">The session factory that contains the session.</param>
        //public static void CleanUp(HttpContext context, ISessionFactory sessionFactory)
        //{
        //    ISession session = ManagedWebSessionContext.Unbind(context, sessionFactory);

        //    if (session != null)
        //    {
        //        if (session.Transaction != null && session.Transaction.IsActive)
        //        {
        //            session.Transaction.Rollback();
        //        }
        //        else if (context.Error == null && session.IsDirty())
        //        {
        //            session.Flush();
        //        }
        //        session.Close();
        //    }
        //}

        /// <summary>
        /// Dispose of the session factory.
        /// </summary>
        public void Dispose()
        {
            CleanUp();
            _sessionFactory.Dispose();
        }

        #endregion
    }
}
