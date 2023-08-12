using AutoMapper;
using DataModels;
using Newtonsoft.Json;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web.Script.Serialization;

namespace EtoWeb.Extensions
{
    public static class IdentityExtensions
    {
        public static string GetJsonUserInfo(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst("EtoUserId");
            // Test for null to avoid issues during local testing
            int EtoUserId = (claim != null) ? Convert.ToInt32(claim.Value) : 0;

            User CurrentLoggedinUser = FNHRepository.RetrieveById<User>(EtoUserId);

            return JsonConvert.SerializeObject(Mapper.Map<User, AutoMap.User>(CurrentLoggedinUser));
            //return new JavaScriptSerializer().Serialize(Mapper.Map<User, AutoMap.User>(CurrentLoggedinUser));
        }

        public static AutoMap.User GetUserInfo(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst("EtoUserId");
            // Test for null to avoid issues during local testing
            int EtoUserId = (claim != null) ? Convert.ToInt32(claim.Value) : 0;

            return Mapper.Map<User, AutoMap.User>(FNHRepository.RetrieveById<User>(EtoUserId));
        }

        public static User GetUserInfoDataModels(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst("EtoUserId");
            // Test for null to avoid issues during local testing
            int EtoUserId = (claim != null) ? Convert.ToInt32(claim.Value) : 0;

            return FNHRepository.RetrieveById<User>(EtoUserId);
        }

        public static int GetLoggedInUserId(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst("EtoUserId");
            // Test for null to avoid issues during local testing
            int EtoUserId = (claim != null) ? Convert.ToInt32(claim.Value) : 0;

            return EtoUserId;
        }

        public static string GetUserSignature(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst("EtoUserId");
            // Test for null to avoid issues during local testing
            int EtoUserId = (claim != null) ? Convert.ToInt32(claim.Value) : 0;

            return FNHRepository.RetrieveById<User>(EtoUserId).EmailSignature;
        }
    }
}
