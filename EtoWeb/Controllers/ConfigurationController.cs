using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EtoWeb.Controllers
{
    [Authorize(Roles = "OrganizationAdmin, HOD")]
    public class ConfigurationController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}