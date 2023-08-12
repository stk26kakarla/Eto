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
    public class UpdateHistoryMap : ClassMap<UpdateHistory>
    {
        public UpdateHistoryMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
        }
    }
}
