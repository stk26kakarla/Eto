using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FluentNHibernate.Mapping;
using DataModels;
using NHibernate.Type;

namespace Mappings
{
    public class UserMap : ClassMap<User>
    {
        public UserMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.ExternalUId);
            Map(x => x.Name);
            Map(x => x.Password);
            Map(x => x.EmailId);
            Map(x => x.SecondaryEmailId);
            Map(x => x.ContactNumber);
            Map(x => x.EmailSignature).Length(40001);
            References(x => x.Shift).Not.LazyLoad();
            References(x => x.Manager).Not.LazyLoad();
            Map(x => x.OOOFrom).CustomType<UtcDateTimeType>().Nullable();
            Map(x => x.OOOTo).CustomType<UtcDateTimeType>().Nullable();
            References(x => x.Hierarchy).Not.LazyLoad();
            References(x => x.Country).Not.LazyLoad();
            Map(x => x.WorkItemGridColumnState).Length(40001);
            Map(x => x.IsDeleted);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();

            HasMany(x => x.SubordinatesList).KeyColumn("Manager_id").Inverse().Cascade.None();

        }
    }
}