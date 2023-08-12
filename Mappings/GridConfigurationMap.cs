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
    public class ColumnMap : ClassMap<Column>
    {
        public ColumnMap()
        {
            Id(x => x.Id);
            Map(x => x.GridClass);
            Map(x => x.Field);
            Map(x => x.Title);
            Map(x => x.Format);
            Map(x => x.Width);
            Map(x => x.Visible);
            Map(x => x.Editable);
            Map(x => x.EditTemplateType);
            Map(x => x.Template).Length(4001);
            Map(x => x.Coloured);
            Map(x => x.Filterable);
            Map(x => x.HtmlAttributes).Length(4001);
            Map(x => x.DefaultValue);
            Map(x => x.ColumnOrder);
            Map(x => x.FilterField);
            Map(x => x.Required);
            Map(x => x.Cofigurable);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
        }
    }

    public class CommandMap : ClassMap<Command>
    {
        public CommandMap()
        {
            Id(x => x.Id);
            Map(x => x.GridClass);
            Map(x => x.Name);
            Map(x => x.Class);
            Map(x => x.ClickHandler);
            Map(x => x.ToolTip);
            Map(x => x.Style);
            Map(x => x.Text);
            Map(x => x.CommandOrder);
            Map(x => x.CommandLevel);
            Map(x => x.CommandTemplate).Length(4001);
            Map(x => x.Width);
            Map(x => x.Visible);
            Map(x => x.Cofigurable);
            References(x => x.UpdatedBy).Not.LazyLoad();
            Map(x => x.UpdatedOn).CustomType<UtcDateTimeType>().Nullable();
        }
    }


}
