using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NhibernateSessionManagement.DataBase.Interface
    {
    public interface IFNHRepository<T>
        {
        T Create(T objectToAdd);
        T RetrieveById(int Id);
        /* interfaces on these lines has to be written and made to work.
        T RetriveByProperty(string property, string value);
        T RetriveByProperty(string property, int value);
        T RetriveByExpression(string Expression, int value);
        IList<T> GetAll();
        */
        T Update(T objectToUpdate);
        T SaveOrUpdate(T objectToUpdate);
        void Delete(T objectToDelete);

        }
    }
