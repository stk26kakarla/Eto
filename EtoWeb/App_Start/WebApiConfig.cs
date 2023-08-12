using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Web.Http;
using WebApiContrib.Formatting.Jsonp;

namespace EtoWeb
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services

            // Web API routes
            config.MapHttpAttributeRoutes();

            //config.Routes.MapHttpRoute(
            //    name: "HierarchyApi",
            //     routeTemplate: "api/{controller}/{action}/{Parameter1}/{Parameter2}",
            //    defaults: new { Parameter1 = RouteParameter.Optional, Parameter2 = RouteParameter.Optional }
            //);
            
            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                 routeTemplate: "api/{controller}/{action}",
                defaults: new { Parameter = RouteParameter.Optional }
            );

            //config.Routes.MapHttpRoute(
            //    name: "WorkItemApi",
            //     routeTemplate: "api/{controller}/{action}/{Parameter}",
            //    defaults: new { Parameter = RouteParameter.Optional }
            //);

            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/html"));
            //config.Formatters.Insert(0, new JsonpMediaTypeFormatter(new JsonMediaTypeFormatter(), "jsonp"));

            config.AddJsonpFormatter();
            config.Formatters.JsonFormatter.SerializerSettings.ContractResolver = new NHibernateContractResolver();

            //((DefaultContractResolver)config.Formatters.JsonFormatter.SerializerSettings.ContractResolver).IgnoreSerializableAttribute = true;
        }
    }

    public class NHibernateContractResolver : DefaultContractResolver
    {
        protected override JsonContract CreateContract(Type objectType)
        {
            if (typeof(NHibernate.Proxy.INHibernateProxy).IsAssignableFrom(objectType))
                return base.CreateContract(objectType.BaseType);

            return base.CreateContract(objectType);
        }
    }
}
