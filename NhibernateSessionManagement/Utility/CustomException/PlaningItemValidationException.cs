using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Utility.CustomException
{
    /// <summary>
    /// This class implements validation exception for planing items
    /// </summary>
    public class PlaningItemValidationException : Exception
    {
        public PlaningItemValidationException()
            : base()
        {
        }

        public PlaningItemValidationException(string message)
            : base(message)
        { }

        public PlaningItemValidationException(SerializationInfo info, StreamingContext context)
            : base(info, context)
        { }

        public PlaningItemValidationException(string message, Exception innerException)
            : base(message, innerException)
        { }

    }
}
