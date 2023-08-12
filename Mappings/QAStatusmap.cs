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
    public class QAStatusMap : ClassMap<QAStatus>
    {
        public QAStatusMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.Name);
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
        }
    }
}
