using DataModels;
using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mappings
{
    public class AttachmentMap : ClassMap<Attachment>
    {
        public AttachmentMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.ExternalUId).Length(40001);
            Map(x => x.Name).Length(40001);
            Map(x => x.FileURL);
            Map(x => x.FileSize);
            Map(x => x.Size);
            Map(x => x.FileType);
            References(x => x.EtoMail).Not.LazyLoad();
        }
    }
}
