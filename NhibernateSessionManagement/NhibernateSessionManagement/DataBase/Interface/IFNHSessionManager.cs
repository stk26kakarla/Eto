using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NHibernate;

namespace NhibernateSessionManagement.DataBase.Interface
{
    public interface IFNHSessionManager
    {
        ISession Session { get; }

        void CleanUp();
        //void Rollback();
        //void Commit();
    }
}
