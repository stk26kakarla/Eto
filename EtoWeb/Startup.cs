using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.Facebook;
using Microsoft.Owin.Security.Google;
using Microsoft.Owin.Security.OAuth;
using Owin;
using System;
using System.Web.Http;
using EtoWeb.MVC.Models;
using EtoWeb.Providers;
using Microsoft.AspNet.SignalR;
using System.Data.Entity;
using EtoWeb.Areas.HelpPage;
using System.Web;

[assembly: OwinStartup(typeof(EtoWeb.Startup))]

namespace EtoWeb
{
    public class Startup
    {
        public static OAuthBearerAuthenticationOptions OAuthBearerOptions { get; private set; }
        public static GoogleOAuth2AuthenticationOptions googleAuthOptions { get; private set; }
        public static FacebookAuthenticationOptions facebookAuthOptions { get; private set; }

        public void Configuration(IAppBuilder app)
        {
            HttpConfiguration config = new HttpConfiguration();

    //        config.SetDocumentationProvider(new XmlDocumentationProvider(
    //HttpContext.Current.Server.MapPath("~/App_Data/XmlDocument.xml")));


            ConfigureAuth(app);
            //ApiConfigureOAuth(app);

            WebApiConfig.Register(config);
            app.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);
            app.UseWebApi(config);
            //if (Convert.ToBoolean(System.Configuration.ConfigurationManager.AppSettings["IfInstallation"]))
            //{
            //    Database.SetInitializer(new MigrateDatabaseToLatestVersion<ApplicationDbContext, EtoWeb.Migrations.Configuration>()); 
            //}

            GlobalHost.DependencyResolver.Register(typeof(IUserIdProvider), () => new EtoUserIdProvider());

            var hubConfiguration = new HubConfiguration();
            hubConfiguration.EnableDetailedErrors = true;
            hubConfiguration.EnableJSONP = true;
            
            app.MapSignalR(hubConfiguration);
        }

        public void ConfigureAuth(IAppBuilder app)
        {
            // Configure the db context, user manager and role manager to use a single instance per request
            app.CreatePerOwinContext(ApplicationDbContext.Create);
            app.CreatePerOwinContext<ApplicationUserManager>(ApplicationUserManager.Create);
            app.CreatePerOwinContext<ApplicationRoleManager>(ApplicationRoleManager.Create);
            app.CreatePerOwinContext<ApplicationSignInManager>(ApplicationSignInManager.Create);

            // Enable the application to use a cookie to store information for the signed in user
            // and to use a cookie to temporarily store information about a user logging in with a third party login provider
            // Configure the sign in cookie
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Account/Login"),
                Provider = new CookieAuthenticationProvider
                {
                    // Enables the application to validate the security stamp when the user logs in.
                    // This is a security feature which is used when you change a password or add an external login to your account.  
                    //OnValidateIdentity = SecurityStampValidator.OnValidateIdentity<ApplicationUserManager, ApplicationUser>(
                    //    validateInterval: TimeSpan.FromHours(12),
                    //    regenerateIdentity: (manager, user) => user.GenerateUserIdentityAsync(manager))
                    OnValidateIdentity = SecurityStampValidator
                    .OnValidateIdentity<ApplicationUserManager, ApplicationUser, int>(
                        validateInterval: TimeSpan.FromMinutes(30),
                        regenerateIdentityCallback: (manager, user) =>
                        user.GenerateUserIdentityAsync(manager),
                        getUserIdCallback: (id) => (id.GetUserId<int>()))
                }
            });
            app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);

            // Enables the application to temporarily store user information when they are verifying the second factor in the two-factor authentication process.
            app.UseTwoFactorSignInCookie(DefaultAuthenticationTypes.TwoFactorCookie, TimeSpan.FromMinutes(5));

            // Enables the application to remember the second login verification factor such as phone or email.
            // Once you check this option, your second step of verification during the login process will be remembered on the device where you logged in from.
            // This is similar to the RememberMe option when you log in.
            app.UseTwoFactorRememberBrowserCookie(DefaultAuthenticationTypes.TwoFactorRememberBrowserCookie);

            // Uncomment the following lines to enable logging in with third party login providers
            //app.UseMicrosoftAccountAuthentication(
            //    clientId: "",
            //    clientSecret: "");

            //app.UseTwitterAuthentication(
            //   consumerKey: "",
            //   consumerSecret: "");

            //app.UseFacebookAuthentication(
            //   appId: "",
            //   appSecret: "");

            //app.UseGoogleAuthentication(
            //    clientId: "",
            //    clientSecret: "");
        }

        //public void ApiConfigureOAuth(IAppBuilder app)
        //{
        //    //use a cookie to temporarily store information about a user logging in with a third party login provider
        //    app.UseExternalSignInCookie(Microsoft.AspNet.Identity.DefaultAuthenticationTypes.ExternalCookie);
        //    OAuthBearerOptions = new OAuthBearerAuthenticationOptions();

        //    OAuthAuthorizationServerOptions OAuthServerOptions = new OAuthAuthorizationServerOptions()
        //    {

        //        AllowInsecureHttp = true,
        //        TokenEndpointPath = new PathString("/token"),
        //        AccessTokenExpireTimeSpan = TimeSpan.FromHours(12),
        //        Provider = new SimpleAuthorizationServerProvider(),
        //        RefreshTokenProvider = new SimpleRefreshTokenProvider()
        //    };

        //    // Token Generation
        //    app.UseOAuthAuthorizationServer(OAuthServerOptions);
        //    app.UseOAuthBearerAuthentication(OAuthBearerOptions);

        //    //Configure Google External Login
        //    googleAuthOptions = new GoogleOAuth2AuthenticationOptions()
        //    {
        //        ClientId = "xxxxxx",
        //        ClientSecret = "xxxxxx",
        //        Provider = new GoogleAuthProvider()
        //    };
        //    app.UseGoogleAuthentication(googleAuthOptions);

        //    //Configure Facebook External Login
        //    facebookAuthOptions = new FacebookAuthenticationOptions()
        //    {
        //        AppId = "xxxxxx",
        //        AppSecret = "xxxxxx",
        //        Provider = new FacebookAuthProvider()
        //    };
        //    app.UseFacebookAuthentication(facebookAuthOptions);

        //}
    }
}
