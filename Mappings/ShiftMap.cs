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
    public class ShiftMap : ClassMap<Shift>
    {
        public ShiftMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.Name);
            Map(x => x.StartTime).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.EndTime).CustomType<UtcDateTimeType>().Nullable();
            References(x => x.Manager).Not.LazyLoad();
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
        }
    }
}
