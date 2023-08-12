using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EtoWeb.Controllers
{
    [Authorize(Roles = "SystemAdmin, OrganizationAdmin, HOD")]
    public class MasterDataController : Controller
    {
        public ActionResult Hierarchy()
        {
            return View();
        }
        public ActionResult Shift()
        {
            return View();
        }
        public ActionResult Country()
        {
            return View();
        }
        public ActionResult Status()
        {
            return View();
        }
        public ActionResult QAStatus()
        {
            return View();
        }
        public ActionResult DelayCause()
        {
            return View();
        }
        public ActionResult WorkType()
        {
            return View();
        }
        public ActionResult Business()
        {
            return View();
        }
    }
}