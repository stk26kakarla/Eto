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
    public class EtoMailMap : ClassMap<EtoMail>
    {
        public EtoMailMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.ExternalUId).Length(4001);
            Map(x => x.Name).Length(4001);
            Map(x => x.EmailType).Length(4001);
            Map(x => x.Sender).Length(4001);
            Map(x => x.Recipient).Length(4001);
            Map(x => x.CarbonCopy).Length(4001);
            Map(x => x.BlindCarbonCopy).Length(4001);
            Map(x => x.MailBody).Length(4001);
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
            References(x => x.WorkItem).Not.LazyLoad();

            HasMany(x => x.Attachments).KeyColumn("EtoMail_id").Inverse().Cascade.All().Fetch.Select();

        }
    }   
}
