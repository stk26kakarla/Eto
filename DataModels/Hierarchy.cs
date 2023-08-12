using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace DataModels
{
    public class Hierarchy : BasicItem
    {
        public virtual Hierarchy Parent { get; set; }
        public virtual string SMTPHostName { get; set; }
        public virtual string SMTPPort { get; set; }
        public virtual string IMAPHostName { get; set; }
        public virtual string IMAPPort { get; set; }
        public virtual string UserName { get; set; }
        public virtual string Password { get; set; }
        public virtual bool IsMailSynced { get; set; }
        public virtual string AcknowledgementTemplate { get; set; }

        public virtual IList<Hierarchy> HierarchyList { get; set; }

        public Hierarchy()
        {
            HierarchyList = new List<Hierarchy>();
        }
    }

    public class HierarchyTreeView
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual bool HasChildren { get; set; }
    }
}
