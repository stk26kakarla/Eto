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
    public class HierarchyMap : ClassMap<Hierarchy>
    {
        public HierarchyMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.Name);
            References(x => x.Parent).Not.LazyLoad();
            References(x => x.Manager).Not.LazyLoad();
            Map(x => x.IMAPHostName);
            Map(x => x.IMAPPort);
            Map(x => x.SMTPHostName);
            Map(x => x.SMTPPort);
            Map(x => x.UserName);
            Map(x => x.Password);
            Map(x => x.IsMailSynced);
            Map(x => x.AcknowledgementTemplate).Length(4001);
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();

            HasMany(x => x.HierarchyList).KeyColumn("Parent_id").Inverse().Cascade.None();

        }
    }
}
