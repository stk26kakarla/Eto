using EtoWeb.AutoMapper;
using NLog;
using System;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace EtoWeb
{
    public class WebApiApplication : System.Web.HttpApplication
    {
        private static Logger logger = LogManager.GetCurrentClassLogger();

        protected void Application_Start()
        {
            GlobalConfiguration.Configure(WebApiConfig.Register);

            AreaRegistration.RegisterAllAreas();
            //GlobalConfiguration.Configure(WebApiConfig.Register);
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            AutoMapperConfiguration.Configure();

            //string nlogPath = Server.MapPath("nlog-web.log");
            //InternalLogger.LogFile = nlogPath;
            //InternalLogger.LogLevel = NLog.LogLevel.Error;

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception ex = Server.GetLastError();
            logger.Error(ex);
            //if (ex is HttpAntiForgeryException)
            //{
            //    Response.Clear();
            //    Server.ClearError(); //make sure you log the exception first
            //    Response.Redirect("/Account/Login", true);
            //}
        }
    }
}
