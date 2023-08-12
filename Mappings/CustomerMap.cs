using DataModels;
using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mappings
{
    public class CustomerMap : ClassMap<Customer>
    {
        public CustomerMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.ExternalUId);
            Map(x => x.Name);
            Map(x => x.EmailId);
            Map(x => x.ContactNumber);
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy);
            Map(x => x.UpdatedOn).Nullable();
        }
    }
}
