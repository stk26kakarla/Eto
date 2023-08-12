using System;

namespace Utility.LogService
{
   
    /// <summary>
    /// Logger methods.
    /// </summary>
    public interface ILogger
    {
        /// <summary>
        /// To add info log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Info(string messageText);

        /// <summary>
        /// To add info log.
        /// </summary>
        /// <param name="messageText">text message</param>
        /// <param name="x">system exception</param>
        void Info(string messageText, Exception x);

        /// <summary>
        /// To add Warning log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Warn(string messageText);

        /// <summary>
        /// To add Warning log.
        /// </summary>
        /// <param name="messageText">text message</param>
        /// <param name="x">system exception</param>
        void Warn(string messageText, Exception x);

        /// <summary>
        /// To add Debug log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Debug(string messageText);

        /// <summary>
        /// To add Debug log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Debug(string messageText, Exception x);

        /// <summary>
        /// To add Error log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Error(string messageText);

        /// <summary>
        /// To add Error log.
        /// </summary>
        /// <param name="messageText">text message</param>
        /// <param name="x">system exception</param>
        void Error(string messageText, Exception x);

        /// <summary>
        /// To add Error log.
        /// </summary>
        /// <param name="x">System exception</param>
        void Error(Exception x);

        /// <summary>
        /// To add Fatal log.
        /// </summary>
        /// <param name="messageText">text message</param>
        void Fatal(string messageText);

        /// <summary>
        /// To add Fatal log.
        /// </summary>
        /// <param name="x">System exception</param>
        void Fatal(Exception x);

        /// <summary>
        /// To add Fatal log.
        /// </summary>
        /// <param name="messageText">text message</param>
        /// <param name="x">System exception</param>
        void Fatal(string messageText, Exception x);
    }
}