using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NhibernateSessionManagement.Common
{
    public class SearchFilter
    {
       public void FilterCriteria() {
           Filters = new List<SearchFilter>();
       }

       public IList<SearchFilter> Filters { get; set; }

       public string Logic { get; set; }

       public string Operator { get; set; }

       public string Field { get; set; }

       public object Value { get; set; }

       public object[] Values { get; set; }

       public string DataType { get; set; }  
    }
}
