using BusinessLogic;
using DataModels;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EtoWeb.Controllers
{
    public class GridConfigurationController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        [HttpGet]
        public Response GetGridColumns(string GridClass)
        {
            Response Response = new Response("GetGridColumns method called");
            
            try
            {
                Response.Object = GridConfiguration.GetGridColumns(GridClass);
                Response.ResponseMessage = "Columns retrieved successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving columns. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

        [HttpGet]
        public Response GetGridCommands(int CommandLevel, string GridClass)
        {
            Response Response = new Response("GetGridCommands method called");
     
            try
            {
                Response.Object = GridConfiguration.GetGridCommands(CommandLevel, GridClass);
                Response.ResponseMessage = "Commands retrieved successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving commands. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;

        }

        [HttpGet]
        public Response GetDropdownData(string Field, string Model)
        {
            Response Response = new Response("GetDropdownData method called");

            try
            {
                Response.Object = GridConfiguration.GetDropdownData(Field, Model);
                Response.ResponseMessage = "List for " + Field + " retrieved successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving DropDown Data for " + Field + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;

        }
    }
}
