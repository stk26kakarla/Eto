using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoMap
{
    public class Shift : BasicItem
    {
        //public virtual DateTime? _dateTime
        //{
        //    get
        //    {
        //        return EndTime;
        //    }
        //    set
        //    {
        //        if (StartTime.HasValue)
        //        {
        //            StartTime = TimeZoneInfo.ConvertTimeFromUtc(StartTime.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            StartTime = null;
        //        }
        //        if (EndTime.HasValue)
        //        {
        //            EndTime = TimeZoneInfo.ConvertTimeFromUtc(EndTime.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            EndTime = null;
        //        }
        //    }
        //}

        public virtual DateTime? StartTime{ get; set; }
        public virtual DateTime? EndTime{ get; set; }
    }
}
