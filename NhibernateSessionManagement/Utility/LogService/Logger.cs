using log4net;
using System;
using System.Web;

//Here is the once-per-application setup information
[assembly: log4net.Config.XmlConfigurator(Watch = true)]
namespace Utility.LogService
    {   
    /// <summary>
    /// Logger class.
    /// </summary>
    public  class Logger : ILogger
        {
        private readonly ILog _logger;
        private static readonly Logger logger = new Logger();

        public Logger()
            {
                log4net.Config.XmlConfigurator.Configure();
             _logger = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
            }

        /// <summary>
        /// Gets new instance of logger.
        /// </summary>
        public static Logger Instance
            {
            get
                {
                return logger;
                }
            }

        #region ILogger Members

        public void Info(string messageText)
            {
            _logger.Info(messageText);
            }

        public void Info(string messageText, Exception x)
            {
            _logger.Info(messageText, x);
            }

        public void Warn(string messageText)
            {
            _logger.Warn(messageText);
            }

        public void Debug(string messageText)
            {
            _logger.Debug(messageText);            
            }

        public void Warn(string messageText, Exception x)
            {
            _logger.Warn(messageText, x);
            }

        public void Debug(string messageText, Exception x)
            {
            _logger.Debug(messageText, x);
            }

        public void Error(string messageText)
            {
            _logger.Error(messageText);
            }

        public void Error(string messageText, Exception x)
            {
            _logger.Error(messageText,x);
            }

        public void Error(Exception x)
            {
            _logger.Error(LogUtility.BuildExceptionMessage(x));
            }

        public void Fatal(string messageText)
            {
            _logger.Fatal(messageText);
            }

        public void Fatal(Exception x)
            {
            _logger.Fatal(LogUtility.BuildExceptionMessage(x));
            }
        public void Fatal(string messageText, Exception x)
            {
            _logger.Fatal(messageText, x);
            }
        #endregion
        }
    }