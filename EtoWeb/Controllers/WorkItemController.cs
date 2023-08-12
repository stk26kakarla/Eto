using AutoMapper;
using BusinessLogic;
using DataModels;
using EtoWeb.Extensions;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EtoWeb.Controllers
{
    public class WorkItemController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();
               
        [HttpPost]
        public Response SaveWorkItemGridColumnState(SaveWorkItemGridColumnStateParameters SaveWorkItemGridColumnStateParameters)
        {
            Response Response = new Response("SaveWorkItemGridColumnState method called");

            try
            {
                Response.Object = Mapper.Map<User, AutoMap.User>(WorkItemRepository.SaveWorkItemGridColumnState(FNHRepository.RetrieveById<User>(SaveWorkItemGridColumnStateParameters.CurrentLoggedInUserId), SaveWorkItemGridColumnStateParameters.WorkItemGridColumnState));

                Response.ResponseMessage = "Saved WorkItems grid column state successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while saving WorkItems grid column state. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }

            //var response = Request.CreateResponse<Response>(HttpStatusCode.Created, Response);

            //string uri = Url.Link("DefaultApi", new { responseMessage = Response.ResponseMessage });
            //response.Headers.Location = new Uri(uri);
            return Response;
        }

        [HttpGet]
        public Response LoadWorkItemGridColumnState(int CurrentLoggedInUserId)
        {
            Response Response = new Response("LoadWorkItemGridColumnState method called");

            try
            {
                Response.Object = null;
                var CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);
                if (CurrentLoggedInUser != null)
                {
                    Response.Object = CurrentLoggedInUser.WorkItemGridColumnState;
                }
                Response.ResponseMessage = "WorkItems grid column state loaded successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while loading WorkItems grid column state. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

    }
    public class SaveWorkItemGridColumnStateParameters
    {
        public int CurrentLoggedInUserId { get; set; }
        public string WorkItemGridColumnState { get; set; }
    }

}
