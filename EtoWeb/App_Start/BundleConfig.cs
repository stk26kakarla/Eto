using System.Web;
using System.Web.Optimization;

namespace EtoWeb
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/app").Include(
                     "~/Scripts/knockout-{version}.js",
                     "~/Scripts/app.js"));

            bundles.Add(new ScriptBundle("~/bundles/login").Include(
                        "~/Scripts/jquery-{version}.js",
                     "~/Scripts/Login/prefixfree.min.js",
                     "~/Scripts/Login/index.js"));

            bundles.Add(new ScriptBundle("~/bundles/scripts").Include(
                         "~/Scripts/jquery-{version}.js",
                         //"~/Scripts/Kendo/jquery.min.js",
                         "~/Scripts/jquery.signalR-2.2.1.min.js",
                         "~/Scripts/Eto/Eto.js",
                         "~/Scripts/modernizr-*",
                         "~/Scripts/Kendo/jszip.min.js",
                    "~/Scripts/Kendo/kendo.all.min.js",
                    "~/Scripts/Kendo/cultures/kendo.culture.en-IN.*",
                    //"~/Scripts/moment.js",
                    //"~/Scripts/moment-timezone-with-data.js"
                    "~/Scripts/SmartFormat/src/SmartFormat.core.js",
                    //"~/Scripts/SmartFormat/src/SmartFormat.mootools.js",
                    "~/Scripts/SmartFormat/src/SmartFormat.pluralRules.js"
                    ));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/smartformat").Include(
                       "~/Scripts/SmartFormat/src/SmartFormat.core.js",
                    "~/Scripts/SmartFormat/src/SmartFormat.mootools.js",
                    "~/Scripts/SmartFormat/src/SmartFormat.pluralRules.js"));

            bundles.Add(new StyleBundle("~/Content/login").Include(
                "~/Content/Login/normalize.css",
                "~/Content/Login/style.css"));

            bundles.Add(new StyleBundle("~/Content/Layout/css")
               .Include("~/Content/bootstrap.css",
               "~/Content/site.css"));


            bundles.Add(new StyleBundle("~/Content/css")
                 .Include("~/Content/bootstrap.css",
                 //"~/Content/site.css",
                 "~/Content/Eto.css")
                 .Include("~/Content/Kendo/kendo.common-material.min.css", new CssRewriteUrlTransform())
                 //.Include("~/Content/Kendo/kendo.common.min.css",)
                 .Include("~/Content/Kendo/kendo.material.min.css", new CssRewriteUrlTransform())
                 .Include("~/Content/Kendo/kendo.material.mobile.min.css", new CssRewriteUrlTransform()));
        }
    }
}
