using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

namespace EtoWeb.Hubs
{
    public class EtoMailHub : Hub
    {
        public void UpdateEtoMail(int WorkItemId, int EtoMailId)
        {
            Clients.All.updateEtoMailListView(WorkItemId, EtoMailId);
        }
    }
}