using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoMap
{
    public class User : BasicItem
    {
        public virtual string Password { get; set; }
        public virtual string EmailId { get; set; }
        public virtual string SecondaryEmailId { get; set; }
        public virtual string ContactNumber { get; set; }
        public virtual string EmailSignature { get; set; }
        public virtual Shift Shift { get; set; }
        public virtual DateTime? OOOFrom { get; set; }
        public virtual DateTime? OOOTo { get; set; }
        public virtual Hierarchy Hierarchy { get; set; }
        public virtual Country Country { get; set; }
        public virtual string WorkItemGridColumnState { get; set; }
        public virtual IList<User> UserList { get; set; }

    }
}
