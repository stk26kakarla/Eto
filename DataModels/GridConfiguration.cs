using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class Column : BasicItem
    {
        public virtual string GridClass { get; set; }
        public virtual string Field { get; set; }
        public virtual string Title { get; set; }
        public virtual string Format { get; set; }
        public virtual int Width { get; set; }
        public virtual bool Visible { get; set; }
        public virtual bool Editable { get; set; }
        public virtual string EditTemplateType { get; set; }
        public virtual string Template { get; set; }
        public virtual bool Coloured { get; set; }
        public virtual bool Filterable { get; set; }
        public virtual string HtmlAttributes { get; set; }
        public virtual string DefaultValue { get; set; }
        public virtual double ColumnOrder { get; set; }
        public virtual string FilterField { get; set; }
        public virtual bool Required { get; set; }
        public virtual bool Cofigurable { get; set; }
    }

    public class Command : BasicItem
    {
        public virtual string GridClass { get; set; }
        public virtual string Class { get; set; }
        public virtual string ClickHandler { get; set; }
        public virtual string ToolTip { get; set; }
        public virtual string Style { get; set; }
        public virtual string Text { get; set; }
        public virtual double CommandOrder { get; set; }
        public virtual int CommandLevel { get; set; }
        public virtual string CommandTemplate { get; set; }
        public virtual string Width { get; set; }
        public virtual bool Visible { get; set; }
        public virtual bool Cofigurable { get; set; }
    }
}
