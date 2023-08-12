using DataModels;
using FluentNHibernate.Mapping;
using NHibernate.Type;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mappings
{
    public class WorkItemMap : ClassMap<WorkItem>
    {
        public WorkItemMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.ExternalUId);
            Map(x => x.Name);
            References(x => x.Manager).Not.LazyLoad();
            Map(x => x.CreatedDate).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.OriginalReviewDate).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.CurrentReviewDate).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.OriginalTargetDate).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.CurrentTargetDate).CustomType<UtcDateTimeType>().Nullable();
            References(x => x.Status).Not.LazyLoad();
            References(x => x.Business).Not.LazyLoad();
            References(x => x.WorkType).Not.LazyLoad();
            Map(x => x.Notes).Length(4001);
            References(x => x.QAStatus).Not.LazyLoad();
            References(x => x.QualityAnalyst).Not.LazyLoad();
            References(x => x.HandoverTo).Not.LazyLoad();
            Map(x => x.PriorityColor);
            Map(x => x.Duration);
            References(x => x.Requester).Not.LazyLoad();
            References(x => x.Shift).Not.LazyLoad();
            References(x => x.Country).Not.LazyLoad();
            References(x => x.DelayCause).Not.LazyLoad();
            References(x => x.Hierarchy).Not.LazyLoad();
            Map(x => x.IsLocked);
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();

            HasMany(x => x.EtoMails).KeyColumn("WorkItem_id").Inverse().Cascade.All().Fetch.Select();
        }
    }
}
