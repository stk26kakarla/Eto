using NHibernate.Envers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace DataModels
{
    //[RevisionEntity]
    public class UpdateHistory : BasicItem
    {
        public override bool Equals(object obj)
        {
            var casted = obj as UpdateHistory;
            if (casted == null)
                return false;
            return (Id == casted.Id &&
                    UpdatedOn.Equals(casted.UpdatedOn));
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode() ^ UpdatedOn.GetHashCode();
        }
    }

    public class UpdateHistoryListener : IRevisionListener
    {
        public void NewRevision(object revisionEntity)
        {
            ((UpdateHistory)revisionEntity).UpdatedOn = DateTime.UtcNow;
        }
    }
}
