using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class WorkPlan : BasicItem
    {
        public virtual DateTime? EstimatedCompletion { get; set; }
        public virtual WorkItem WorkItem { get; set; }
    }
}
