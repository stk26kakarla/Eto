using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NhibernateSessionManagement.Common
{
    public class SortField
    {       

       public string Field { get; set; }

       public bool Ascending { get; set; }
       
        public object Projection  {get;set;}
    }
}
