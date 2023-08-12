using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class User : BasicItem
    {
        public virtual string Password { get; set; }
        public virtual string EmailId { get; set; }
        public virtual string SecondaryEmailId { get; set; }
        public virtual string ContactNumber { get; set; }
        public virtual string EmailSignature { get; set; }
        public virtual Shift Shift { get; set; }

        //public virtual DateTime? _dateTime
        //{
        //    get
        //    {
        //        return OOOTo;
        //    }
        //    set
        //    {
        //        if (OOOFrom.HasValue)
        //        {
        //            OOOFrom = TimeZoneInfo.ConvertTimeFromUtc(OOOFrom.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            OOOFrom = null;
        //        }
        //        if (OOOTo.HasValue)
        //        {
        //            OOOTo = TimeZoneInfo.ConvertTimeFromUtc(OOOTo.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            OOOTo = null;
        //        }
        //    }
        //}

        public virtual DateTime? OOOFrom { get; set; }
        public virtual DateTime? OOOTo { get; set; }
        public virtual Hierarchy Hierarchy { get; set; }
        public virtual Country Country { get; set; }
        public virtual string WorkItemGridColumnState { get; set; }

        public virtual IList<User> SubordinatesList { get; set; }

        public User()
        {
            SubordinatesList = new List<User>();
        }
    }
}
