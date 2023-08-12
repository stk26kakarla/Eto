using BusinessLogic;
using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Timers;

namespace EtoWindowsService
{
    public partial class SyncMail : ServiceBase
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        string sSource = ConfigurationManager.AppSettings["EventLogSource"].ToString();
        string sLog = "Application";

        private IList<Hierarchy> Hierarchies = new List<Hierarchy>();

        //private Timer RestartTimer;

        public SyncMail()
        {
            InitializeComponent();

            try
            {
                if (!EventLog.SourceExists(sSource))
                    EventLog.CreateEventSource(sSource, sLog);

                Hierarchies = FNHRepository.GetAll<Hierarchy>()
                       .Where(w => !string.IsNullOrEmpty(w.IMAPHostName) && !string.IsNullOrEmpty(w.IMAPPort) && !string.IsNullOrEmpty(w.UserName) && !string.IsNullOrEmpty(w.Password)).ToList<Hierarchy>();
            }
            catch (Exception ex)
            {
                EventLog.WriteEntry(sSource, "Error: " + ex.Message, EventLogEntryType.Error);
                logger.Error(ex);
            }
        }

        protected override void OnStart(string[] args)
        {
            try
            {
                //RestartTimer = new Timer(1200000);  // 1200000 milliseconds = 20 minutes
                //RestartTimer.AutoReset = false;
                //RestartTimer.Elapsed += new ElapsedEventHandler(this.RestartTimer_Elapsed);
                //RestartTimer.Start();

                foreach (var Hierarchy in Hierarchies)
                {
                    Response Response = new Response("SyncMail started.");

                    Response = Mail.SyncInboxFolderForHierarchy(Hierarchy);

                    if (Response.IsSuccess)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.SuccessAudit);
                    }
                    else if (Response.IsWarning)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.Warning);
                    }
                    else if (Response.IsWarning)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.Error);
                    }

                    Response = Mail.SyncSentFolderForHierarchy(Hierarchy);

                    if (Response.IsSuccess)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.SuccessAudit);
                    }
                    else if (Response.IsWarning)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.Warning);
                    }
                    else if (Response.IsWarning)
                    {
                        EventLog.WriteEntry(sSource, Response.ResponseMessage, EventLogEntryType.Error);
                    }
                }

                EventLog.WriteEntry(sSource, "Eto Window services started", EventLogEntryType.SuccessAudit);

            }
            catch (Exception ex)
            {
                logger.Error(ex);
                EventLog.WriteEntry(sSource, "Error: " + ex.Message, EventLogEntryType.Error);
            }
        }

        //private void RestartTimer_Elapsed(object sender, System.Timers.ElapsedEventArgs e)
        //{
        //    Environment.Exit(1);
        //}


        protected override void OnStop()
        {
            EventLog.WriteEntry(sSource, "Eto Window services stopped", EventLogEntryType.Warning);
        }
    }
}
