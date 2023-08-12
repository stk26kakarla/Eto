using DataModels;
using FluentNHibernate.Mapping;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mappings
{
    public class LogMap : ClassMap<Log>
    {
        public LogMap()
        {
            Schema("dbo");
            Id(x => x.Id);
            Map(x => x.EventDateTime);     
            Map(x => x.EventLevel).Length(4001);     
            Map(x => x.UserName).Length(4001);     
            Map(x => x.MachineName).Length(4001);     
            Map(x => x.EventMessage).Length(4001);     
            Map(x => x.ErrorSource).Length(4001);     
            Map(x => x.ErrorClass).Length(4001);     
            Map(x => x.ErrorMethod).Length(4001);     
            Map(x => x.ErrorMessage).Length(4001);
            Map(x => x.InnerErrorMessage).Length(4001);
        }
    }
}   