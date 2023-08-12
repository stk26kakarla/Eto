using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace DataModels
{
    public class WorkItem : BasicItem
    {
        public virtual DateTime? CreatedDate { get; set; }
        public virtual DateTime? OriginalReviewDate { get; set; }
        public virtual DateTime? CurrentReviewDate { get; set; }
        public virtual DateTime? OriginalTargetDate { get; set; }
        public virtual DateTime? CurrentTargetDate { get; set; }
        public virtual WorkType WorkType { get; set; }
        public virtual Business Business { get; set; }
        public virtual Status Status { get; set; }
        public virtual string Notes { get; set; }
        public virtual QAStatus QAStatus { get; set; }
        public virtual int Duration { get; set; }
        public virtual Shift Shift { get; set; }
        public virtual Country Country { get; set; }
        public virtual DelayCause DelayCause { get; set; }
        public virtual Hierarchy Hierarchy { get; set; }
        public virtual bool IsLocked { get; set; }

        [ScriptIgnore]
        public virtual IList<EtoMail> EtoMails { get; set; }

        public virtual int PriorityColor { get; set; }

        public virtual string ColorName
        {
            get
            {
                PriorityColor = CalculateColorCode();
                return SetColorName();
            }
            set { }
        }


        public WorkItem()
        {
            EtoMails = new List<EtoMail>();
        }

        private int CalculateColorCode()
        {
            try
            {
                Color Color = Color.Blank;
                DateTime Today = DateTime.UtcNow;
                if (Status != null && (Status.Id != 1 || Status.Id != 2))
                {
                    if (CurrentReviewDate.HasValue)
                    {
                        if (Today >= CurrentReviewDate.Value)
                        {
                            Color = Color.Black;
                        }
                        else if (Today >= CurrentReviewDate.Value.AddMinutes(-((Duration) + (Duration * 0.33))))
                        {
                            Color = Color.Red;
                        }
                        else if (Today >= CurrentReviewDate.Value.AddMinutes(-((Duration) + (Duration * 0.66))))
                        {
                            Color = Color.Yellow;
                        }
                        else
                        {
                            Color = Color.Green;
                        }
                    }
                    else
                    {
                        Color = Color.Blank;
                    }
                }
                else
                {
                    return PriorityColor;
                }

                return (int)Color;
            }
            catch (Exception)
            {
                return (int)Color.Black;
            }
        }

        private string SetColorName()
        {
            string colorName = "black";
            switch (PriorityColor)
            {
                case 0:
                    colorName = "blank";
                    break;
                case 1:
                    colorName = "black";
                    break;
                case 2:
                    colorName = "red";
                    break;
                case 3:
                    colorName = "yellow";
                    break;
                case 4:
                    colorName = "green";
                    break;
                case 5:
                    colorName = "white";
                    break;
            }
            return colorName;
        }
        //public virtual Email Email { get; set; }
        //public virtual WorkPlan WorkPlan { get; set; }
    }

    public enum Color
    {
        Blank = 0,
        Black = 1,
        Red = 2,
        Yellow = 3,
        Green = 4,
        White = 5
    }
}
