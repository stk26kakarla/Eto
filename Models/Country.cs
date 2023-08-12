using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoMap
{
    public class Country : BasicItem
    {
        public virtual Shift Shift { get; set; }
    }
}
