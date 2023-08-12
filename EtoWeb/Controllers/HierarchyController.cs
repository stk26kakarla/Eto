using BusinessLogic;
using DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Microsoft.AspNet.Identity;
using EtoWeb.MVC.Models;
using System.Web;
using NhibernateSessionManagement.DataBase.DataManager;
using EtoWeb.Extensions;
using NLog;
using AutoMapper;
using System.Web.Http.Results;

namespace EtoWeb.Controllers
{
    public class HierarchyController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        [HttpGet]
        //[Route("api/Hierarchy/GetHierarchyForTreeView/{CurrentUser}/{ParentId}")]       
        public Response GetHierarchyForTreeView(int CurrentLoggedUserId, int? id)
        {
            Response Response = new Response("GetHierarchyForTreeView method called");

            try
            {
                IList<int> ParentId = new List<int>();

                if (id != null && id.Value != 0)
                {
                    ParentId.Add(id.Value);
                }

                Response.Object = HierarchyRepository.GetHierarchy(FNHRepository.RetrieveById<User>(CurrentLoggedUserId), ParentId, true)
                    .Select(h => new
                    {
                        id = h.Id,
                        name = h.Name,
                        hasChildren = h.HierarchyList.Any()
                    }).ToList();

                Response.ResponseMessage = "TreeView retrieved successfully";
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving list for TreeView. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

        [HttpGet]
        public JsonResult<Response> GetAcknowledgement(int CurrentLoggedInUserId, int EtoMailId, int WorkItemId, string Recipients)
        {
            Response Response = new Response("GetAcknowledgement method called");

            try
            {
                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);

                WorkItem WorkItem = FNHRepository.RetrieveById<WorkItem>(WorkItemId);

                Response.Object = Mapper.Map<WorkItem, AutoMap.WorkItem>(WorkItem);

                Response.ResponseMessage = HierarchyRepository.GetAcknowledgementTemplate(CurrentLoggedInUser, WorkItem, Recipients);
                Response.IsSuccess = true;
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving/processing Acknowledgement. \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Json(Response);
        }
    }
}
