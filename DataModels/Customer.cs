using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    [Obsolete]
    public class Customer : BasicItem
    {
        public virtual string EmailId { get; set; }
        public virtual string ContactNumber { get; set; }
    }
}
