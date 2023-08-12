using System;
using System.Diagnostics.CodeAnalysis;

namespace Utility.LogService
{
    /// <summary>
    /// Logging exception utility.
    /// </summary>
    public static class LogUtility
    {
        /// <summary>
        /// Build exception message
        /// </summary>
        /// <param name="x">Exception</param>
        /// <returns>Exception message</returns>
        [SuppressMessage("StyleCop.CSharp.DocumentationRules", "SA1630:DocumentationTextMustContainWhitespace", Justification = "Reviewed. Suppression is OK here.")]
        public static string BuildExceptionMessage(Exception x)
        {
            if (x == null)
            {
                throw new ArgumentNullException("x");
            }

            var logException = x;
            if (x.InnerException != null)
            {
                logException = x.InnerException;
            }

            // start of message
            var strErrorMsg = Environment.NewLine + "-------------------------- Start of log -----------------------------------";

           // strErrorMsg += Environment.NewLine + "Error in Path :" + System.Web.HttpContext.Current.Request.Path;

            // Get the QueryString along with the Virtual Path
           // strErrorMsg += Environment.NewLine + "Raw Url :" + System.Web.HttpContext.Current.Request.RawUrl;

            // Get the error message
            strErrorMsg += Environment.NewLine + "Message :" + logException.Message;

            // Source of the message
            strErrorMsg += Environment.NewLine + "Source :" + logException.Source;

            // Stack Trace of the error
            strErrorMsg += Environment.NewLine + "Stack Trace :" + logException.StackTrace;

            // Method where the error occurred
            strErrorMsg += Environment.NewLine + "TargetSite :" + logException.TargetSite;

            if (logException.InnerException != null)
            {
                // Start of inner exception
                strErrorMsg += Environment.NewLine +
                               "-------------------------- Inner Exception -----------------------------------";
                // Log inner exception if any
                strErrorMsg += BuildExceptionMessage(logException.InnerException);

                // End of inner exception
                strErrorMsg += Environment.NewLine +
                               "-------------------------- End Inner Exception -----------------------------------";
            }

            // End of message
            strErrorMsg += Environment.NewLine + "-------------------------- End of log -----------------------------------";

            return strErrorMsg;
        }
    }
}