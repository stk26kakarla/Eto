using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AutoMap
{
    public class BasicItem
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual User UpdatedBy { get; set; }
        public virtual DateTime? UpdatedOn { get; set; }
        public virtual bool IsDeleted { get; set; }
        public virtual string ExternalUId { get; set; }
        /// <summary>
        /// Shift/User/Hierarchy/WorkItem Manager
        /// </summary>
        public virtual User Manager { get; set; }

        #region WorkItem
        public virtual User QualityAnalyst { get; set; }
        public virtual User HandoverTo { get; set; }
        public virtual User Requester { get; set; }
        #endregion


    }

    public interface INameValuePair
    {
        int Id { get; set; }
        string Name { get; set; }
        int Value { get; set; }
    }

    public class NameValuePair : INameValuePair
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual string ExternalUId { get; set; }
        /// <summary>
        /// Property for generic dropdown value
        /// </summary>
        public virtual int Value { get; set; }
    }

    public interface IHistory
    {
        int OriginalItemId
        {
            get;
            set;
        }
    }
}
