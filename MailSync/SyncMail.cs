using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace MailSync
{
    public partial class SyncMail : ServiceBase
    {
        string sSource = "Mail Sync";
        string sLog = "MailSync";
        string sEvent = "Sample Event";
  
        public SyncMail()
        {
            InitializeComponent();
           

            if (!EventLog.SourceExists(sSource))
                EventLog.CreateEventSource(sSource, sLog);

            //if (!System.Diagnostics.EventLog.SourceExists("MySource"))
            //{
            //    System.Diagnostics.EventLog.CreateEventSource(
            //        "MySource", "MyNewLog");
            //}

        }

        protected override void OnStart(string[] args)
        {
            EventLog.WriteEntry(sSource, "On Start");
            EventLog.WriteEntry(sSource, "On start error", EventLogEntryType.Warning, 234);
        }

        protected override void OnStop()
        {
            EventLog.WriteEntry(sSource, "On Stop");
            EventLog.WriteEntry(sSource, "On stop error", EventLogEntryType.Warning, 234);
        }
    }
}
