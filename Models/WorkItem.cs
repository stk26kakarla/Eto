using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace AutoMap
{
    public class WorkItem : BasicItem
    {
        //public virtual DateTime? _dateTime
        //{
        //    get
        //    {
        //        return CurrentTargetDate;
        //    }
        //    set
        //    {
        //        if (CreatedDate.HasValue)
        //        {
        //            CreatedDate = TimeZoneInfo.ConvertTimeFromUtc(CreatedDate.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            CreatedDate = null;
        //        }
        //        if (OriginalReviewDate.HasValue)
        //        {
        //            OriginalReviewDate = TimeZoneInfo.ConvertTimeFromUtc(OriginalReviewDate.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            OriginalReviewDate = null;
        //        }
        //        if (CurrentReviewDate.HasValue)
        //        {
        //            CurrentReviewDate = TimeZoneInfo.ConvertTimeFromUtc(CurrentReviewDate.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            CurrentReviewDate = null;
        //        }
        //        if (OriginalTargetDate.HasValue)
        //        {
        //            OriginalTargetDate = TimeZoneInfo.ConvertTimeFromUtc(OriginalTargetDate.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            OriginalTargetDate = null;
        //        }
        //        if (CurrentTargetDate.HasValue)
        //        {
        //            CurrentTargetDate = TimeZoneInfo.ConvertTimeFromUtc(CurrentTargetDate.Value, TimeZoneInfo.FindSystemTimeZoneById(ConfigurationManager.AppSettings["TimeZoneId"]));
        //        }
        //        else
        //        {
        //            CurrentTargetDate = null;
        //        }

        //    }
        //}

        public virtual DateTime? CreatedDate { get; set; }
        public virtual DateTime? OriginalReviewDate { get; set; }
        public virtual DateTime? CurrentReviewDate { get; set; }
        public virtual DateTime? OriginalTargetDate { get; set; }
        public virtual DateTime? CurrentTargetDate { get; set; }
        public virtual Business Business { get; set; }
        public virtual WorkType WorkType { get; set; }
        public virtual Status Status { get; set; }
        public virtual string Notes { get; set; }
        public virtual QAStatus QAStatus { get; set; }
        public virtual int Duration { get; set; }
        public virtual Shift Shift { get; set; }
        public virtual Country Country { get; set; }
        public virtual DelayCause DelayCause { get; set; }
        public virtual Hierarchy Hierarchy { get; set; }
        public virtual bool IsLocked { get; set; }

        public virtual int PriorityColor { get; set; }

        public virtual string ColorName { get; set; }

        //public virtual IList<EtoMail> EtoMails { get; set; }

        //public virtual Email Email { get; set; }
        //public virtual WorkPlan WorkPlan { get; set; }
    }

    public enum PriorityColor
    {
        Blank = 0,
        Black = 1,
        Red = 2,
        Yellow = 3,
        Green = 4,
        White = 5
    }

    public class WorkItemGraph : BasicItem
    {
        public virtual double BlankItemsCount { get; set; }
        public virtual double BlackItemsCount { get; set; }
        public virtual double RedItemsCount { get; set; }
        public virtual double YellowItemsCount { get; set; }
        public virtual double GreenItemsCount { get; set; }
        public virtual double WhiteItemsCount { get; set; }
        public virtual object Category { get; set; }
        public virtual DateTime DateTimeCategory { get; set; }
    }
}
