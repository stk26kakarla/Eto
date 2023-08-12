using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace AutoMap
{
    public class EtoMail : BasicItem
    {
        public virtual string EmailType { get; set; }
        public virtual string Sender { get; set; }
        public virtual string Recipient { get; set; }
        public virtual string CarbonCopy { get; set; }
        public virtual string BlindCarbonCopy { get; set; }
        public virtual string MailBody { get; set; }
        public virtual NameValuePair WorkItem { get; set; }

        public virtual IList<Attachment> Attachments { get; set; }

    }

    public class Attachment : BasicItem
    {
        public virtual string FileURL { get; set; }
        public virtual string FileSize { get; set; }
        public virtual long Size { get; set; }
        public virtual string FileType { get; set; }
        public virtual NameValuePair EtoMail { get; set; }
    }
}
