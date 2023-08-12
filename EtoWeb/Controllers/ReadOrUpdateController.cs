using BusinessLogic;
using DataModels;
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
    public class ReadOrUpdateController : ApiController
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        [HttpGet]
        public Response UpdateDynamicEditor(int CurrentLoggedInUserId, int RowId, string GridClass, string EditorFor, string EditorValue)
        {
            Response Response = new Response("UpdateDynamicEditor method called");

            try
            {
                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);

                Response.Object = null;

                if (ReadOrUpdateRepository.UpdateDynamicEditor(CurrentLoggedInUser, RowId, GridClass, EditorFor, EditorValue))
                {
                    Response.ResponseMessage = "Updated " + EditorFor + " for " + GridClass + " successfully.";
                    Response.IsSuccess = true;
                }
                else
                {
                    Response.ResponseMessage = "Could not update " + EditorFor + " for " + GridClass + ".";
                    Response.IsError = true;
                }
            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while updating " + EditorFor + " for " + GridClass + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

        [HttpGet]
        public Response ReadValueForDynamicEditor(int CurrentLoggedInUserId, int RowId, string GridClass, string EditorFor)
        {
            Response Response = new Response("ReadValueForDynamicEditor method called");

            try
            {
                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);

                Response.Object = ReadOrUpdateRepository.ReadValueForDynamicEditor(CurrentLoggedInUser, RowId, GridClass, EditorFor);
                Response.ResponseMessage = "Retrieved " + EditorFor + " for " + GridClass + " successfully.";
                Response.IsSuccess = true;

            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving " + EditorFor + " for " + GridClass + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }

        [HttpGet]
        public Response ReadHistory(int CurrentLoggedInUserId, int RowId, string GridClass)
        {
            Response Response = new Response("ReadHistory method called");

            try
            {
                User CurrentLoggedInUser = FNHRepository.RetrieveById<User>(CurrentLoggedInUserId);

                Response.Object = ReadOrUpdateRepository.ReadHistory(CurrentLoggedInUser, RowId, GridClass);
                Response.ResponseMessage = "Retrieved history for " + GridClass + " successfully.";
                Response.IsSuccess = true;

            }
            catch (Exception ex)
            {
                Response.ResponseMessage = "Exception while retrieving history for " + GridClass + ". \n'" + ex.Message + "' ";
                Response.IsError = true;
                Response.Object = ex;
                logger.Error(ex);
            }
            return Response;
        }
    }
}