using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataModels
{
    public class Response
    {
        public virtual string ResponseMessage { get; set; }
        public virtual bool IsSuccess { get; set; }
        public virtual bool IsWarning { get; set; }
        public virtual bool IsError { get; set; }
        public virtual object Object { get; set; }

        public Response(string responseMessage)
        {
            ResponseMessage = responseMessage;
            IsSuccess = false;
            IsWarning = false;
            IsError = false;
        }       
    }
}
