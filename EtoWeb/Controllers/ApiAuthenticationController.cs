using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EtoWeb.Controllers
{
    //[Authorize]
    public class ApiAuthenticationController : ApiController
    {
        /// <summary>
        /// Test User's API token based authentication.
        /// </summary>
        /// <returns>String to display that User's API token based authentication is successful</returns>
        [HttpGet]
        public string Authenticated()
        {
            return "You have successfully logged in.";
        }      
    }
}
