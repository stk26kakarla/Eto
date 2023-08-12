using System.Linq;
using System.Security.Claims;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Web;
using EtoWeb.Models;

namespace EtoWeb.MVC.Models
{
    // Configure the application user manager used in this application. UserManager is defined in ASP.NET Identity and is used by the application.

    public class ApplicationUserManager : UserManager<ApplicationUser, int>
    {
        public ApplicationUserManager(IUserStore<ApplicationUser, int> store)
            : base(store)
        {
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options,
            IOwinContext context)
        {
            var manager = new ApplicationUserManager(new UserStore(context.Get<ApplicationDbContext>()));
            // Configure validation logic for usernames
            manager.UserValidator = new UserValidator<ApplicationUser, int>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = true
            };
            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };
            // Configure user lockout defaults
            manager.UserLockoutEnabledByDefault = true;
            manager.DefaultAccountLockoutTimeSpan = TimeSpan.FromMinutes(5);
            manager.MaxFailedAccessAttemptsBeforeLockout = 5;
            // Register two factor authentication providers. This application uses Phone and Emails as a step of receiving a code for verifying the user
            // You can write your own provider and plug in here.
            manager.RegisterTwoFactorProvider("PhoneCode", new PhoneNumberTokenProvider<ApplicationUser, int>
            {
                MessageFormat = "Your security code is: {0}"
            });
            manager.RegisterTwoFactorProvider("EmailCode", new EmailTokenProvider<ApplicationUser, int>
            {
                Subject = "SecurityCode",
                BodyFormat = "Your security code is {0}"
            });
            manager.EmailService = new EmailService();
            manager.SmsService = new SmsService();
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider =
                    new DataProtectorTokenProvider<ApplicationUser, int>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }
    }

    // Configure the RoleManager used in the application. RoleManager is defined in the ASP.NET Identity core assembly
    public class ApplicationRoleManager : RoleManager<Role, int>
    {
        public ApplicationRoleManager(IRoleStore<Role, int> roleStore)
            : base(roleStore)
        {
        }

        public static ApplicationRoleManager Create(IdentityFactoryOptions<ApplicationRoleManager> options, IOwinContext context)
        {
            return new ApplicationRoleManager(new RoleStore<Role, int, UserRole>(context.Get<ApplicationDbContext>()));
            //return new ApplicationRoleManager(new RoleStore(context.Get<ApplicationDbContext>()));

        }
    }

    public class EmailService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your email service here to send an email.
            return Task.FromResult(0);
        }
    }

    public class SmsService : IIdentityMessageService
    {
        public Task SendAsync(IdentityMessage message)
        {
            // Plug in your sms service here to send a text message.
            return Task.FromResult(0);
        }
    }

    // This is useful if you do not want to tear down the database each time you run the application.
    // public class ApplicationDbInitializer : DropCreateDatabaseAlways<ApplicationDbContext>
    // This example shows you how to create a new database if the Model changes
    public class ApplicationDbInitializer : CreateDatabaseIfNotExists<ApplicationDbContext>
    {
        protected override void Seed(ApplicationDbContext context)
        {
            InitializeIdentityForEF(context);
            base.Seed(context);
        }

        //Create User=admin@eto.com with password=Eto@2016 in the Admin role        
        public static void InitializeIdentityForEF(ApplicationDbContext db)
        {
            var userManager = HttpContext.Current.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var roleManager = HttpContext.Current.GetOwinContext().Get<ApplicationRoleManager>();
            const string name = "admin@nieto.in";
            const string password = "Eto@2016";
            const string adminRoleName = "SystemAdmin";
            const string organizationAdminRoleName = "OrganizationAdmin";
            const string HODRoleName = "HOD";
            const string ResourceRoleName = "Resource";

            //Create Role SystemAdmin if it does not exist
            var systemAdminRole = roleManager.FindByName(adminRoleName);
            if (systemAdminRole == null)
            {
                systemAdminRole = new Role(adminRoleName);
                var roleresult = roleManager.Create(systemAdminRole);
            }

            //Create Role OrganizationAdmin if it does not exist
            var organizationAdminRole = roleManager.FindByName(organizationAdminRoleName);
            if (organizationAdminRole == null)
            {
                organizationAdminRole = new Role(organizationAdminRoleName);
                var roleresult = roleManager.Create(organizationAdminRole);
            }

            //Create Role HOD if it does not exist
            var HODRole = roleManager.FindByName(HODRoleName);
            if (HODRole == null)
            {
                HODRole = new Role(HODRoleName);
                var roleresult = roleManager.Create(HODRole);
            }

            //Create Role Resource if it does not exist
            var resourceRole = roleManager.FindByName(ResourceRoleName);
            if (resourceRole == null)
            {
                resourceRole = new Role(ResourceRoleName);
                var roleresult = roleManager.Create(resourceRole);
            }

            var user = userManager.FindByName(name);
            if (user == null)
            {
                user = new ApplicationUser { UserName = name, Email = name };
                var result = userManager.Create(user, password);
                result = userManager.SetLockoutEnabled(user.Id, false);
            }

            // Add user admin to Role Admin if not already added
            var rolesForUser = userManager.GetRoles(user.Id);
            if (!rolesForUser.Contains(systemAdminRole.Name))
            {
                var result = userManager.AddToRole(user.Id, systemAdminRole.Name);
            }

            //db.Clients.AddRange(BuildClientsList());
            db.SaveChanges();
        }

        //private static List<Client> BuildClientsList()
        //{

        //    List<Client> ClientsList = new List<Client>
        //    {
        //        new Client
        //        { Id = "dgxftApp",
        //            Secret= Helper.GetHash("abc@123"),
        //            Name="Atuthentication application",
        //            ApplicationType =  ApplicationTypes.JavaScript,
        //            Active = true,
        //            RefreshTokenLifeTime = 7200,
        //            AllowedOrigin = "http://www.degenxsoft.com"
        //        },
        //        new Client
        //        { Id = "consoleApp",
        //            Secret=Helper.GetHash("123@abc"),
        //            Name="Console Application",
        //            ApplicationType =ApplicationTypes.NativeConfidential,
        //            Active = true,
        //            RefreshTokenLifeTime = 14400,
        //            AllowedOrigin = "*"
        //        }
        //    };

        //    return ClientsList;
        //}
    }

    public class ApplicationSignInManager : SignInManager<ApplicationUser, int>
    {
        public ApplicationSignInManager(ApplicationUserManager userManager, IAuthenticationManager authenticationManager) :
            base(userManager, authenticationManager)
        { }

        public override Task<ClaimsIdentity> CreateUserIdentityAsync(ApplicationUser user)
        {
            return user.GenerateUserIdentityAsync((ApplicationUserManager)UserManager);
        }

        public static ApplicationSignInManager Create(IdentityFactoryOptions<ApplicationSignInManager> options, IOwinContext context)
        {
            return new ApplicationSignInManager(context.GetUserManager<ApplicationUserManager>(), context.Authentication);
        }
    }
}
