using BusinessLogic;
using DataModels;
using EtoWeb.Extensions;
using Newtonsoft.Json;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EtoWeb.Controllers
{
    public class MISController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        [HttpPost]
        public Response GenerateReport(ProcessGraphParameters ProcessGraphParameters)
        {
            Response Response = new Response("ProcessGraph method called");

            try
            {
                bool IsAdmin = User.IsInRole("SystemAdmin") || User.IsInRole("OrganizationAdmin");

                User LoggedInUser = User.Identity.GetUserInfoDataModels();

                Response.Object = MIS.GenerateReportByCategory(ProcessGraphParameters.ReportCategory, ProcessGraphParameters.FromDate, ProcessGraphParameters.ToDate, LoggedInUser, IsAdmin, ProcessGraphParameters.HierarchyIds != null ? ProcessGraphParameters.HierarchyIds : new List<int>());
                Response.ResponseMessage = "Successfully processed graph.";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while processing graph. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }
    }

    public class ProcessGraphParameters
    {
        public IList<int> HierarchyIds { get; set; }
        public string ReportCategory { get; set; }
        public DateTime FromDate { get; set; }
        public DateTime ToDate { get; set; }
    }
}
