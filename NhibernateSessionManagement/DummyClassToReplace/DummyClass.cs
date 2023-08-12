using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DummyClassToReplace
{
    public class DummyClass
    {

    }

    public abstract class BasicItem
    {
        public virtual int Id { get; set; }
        public virtual string Name { get; set; }
        public virtual bool IsDeleted { get; set; }
        public virtual DummyClass UpdatedBy { get; set; }
        [DataType(DataType.Date)]
        public virtual DateTime? UpdatedOn { get; set; }
        public virtual string Action { get; set; }
        public abstract BasicItem GetHistoryObject();
    }

    public interface IHistory
    {
        BasicItem OriginalItem
        {
            get;
            set;
        }
    }
}
