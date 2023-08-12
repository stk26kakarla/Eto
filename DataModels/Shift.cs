using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class Shift : BasicItem
    {       
        public virtual DateTime? StartTime{ get; set; }
        public virtual DateTime? EndTime{ get; set; }
    }
}
