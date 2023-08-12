using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class Log
    {
        public virtual int Id { get; set; }
        public virtual DateTime EventDateTime { get; set; }
        public virtual string EventLevel { get; set; }
        public virtual string UserName { get; set; }
        public virtual string MachineName { get; set; }
        public virtual string EventMessage { get; set; }
        public virtual string ErrorSource { get; set; }
        public virtual string ErrorClass { get; set; }
        public virtual string ErrorMethod { get; set; }
        public virtual string ErrorMessage { get; set; }
        public virtual string InnerErrorMessage { get; set; }
    }
}