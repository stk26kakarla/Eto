using Microsoft.AspNet.SignalR;
using EtoWeb.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EtoWeb.Providers
{
    public class EtoUserIdProvider : IUserIdProvider
    {
        public string GetUserId(IRequest request)
        {
            var userId = request.User.Identity.GetLoggedInUserId();
            return userId.ToString();
        }
    }
}
