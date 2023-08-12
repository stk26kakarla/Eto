using DataModels;
using NHibernate.Transform;
using NhibernateSessionManagement.Common;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class UserRepository
    {
        public static IList<User> GeSubordinatesList(User User, bool IfAdmin)
        {
            IList<User> UsersList = new List<User>();
            if (User != null)
            {
                FNHRepository.CloseSession();
                FNHRepository.OpenSession();
                string UserListQuery;

                if (!IfAdmin)
                {
                    UserListQuery = "select u from User u where u.Id = " + User.Id;
                }
                else
                {
                    UserListQuery = "select u from User u ";
                }


                UsersList = FNHRepository.Session.CreateQuery(UserListQuery)
                       .SetResultTransformer(new DistinctRootEntityResultTransformer())
                       .List<User>().Flatten<User>(o => o.SubordinatesList).ToList();
            }

            if (UsersList == null)
            {
                UsersList = new List<User>();
            }
            return UsersList;
        }

        public static IList<User> GeUsersOfHierarchy(Hierarchy Hierarchy)
        {
            IList<User> Users = new List<User>();
            if (Hierarchy != null)
            {
                Users = FNHRepository.Session.QueryOver<User>().Where(w => w.Hierarchy == Hierarchy).List().ToList();

                if (Users == null)
                {
                    Users = new List<User>();
                }
                Users.Add(Hierarchy.Manager);
            }

            return Users;
        }

        public static IList<User> GetUsers(User User, bool IfAdmin, IList<int> ParentId, IList<Hierarchy> HierarchiesUnderMe, bool BirdsView = false)
        {
            IList<User> Users = new List<User>();

            IList<User> Subordinates = GeSubordinatesList(User, IfAdmin).ToList();

            if (HierarchiesUnderMe == null)
            {
                HierarchiesUnderMe = HierarchyRepository.GetHierarchy(User, ParentId).Flatten<Hierarchy>(o => o.HierarchyList).ToList();
            }
            IList<User> UsersUnderMyHierarchies = new List<User>();

            if (BirdsView)
            {
                if (User.Hierarchy != null && !HierarchiesUnderMe.Contains(User.Hierarchy))
                {
                    HierarchiesUnderMe.Add(User.Hierarchy);
                }
            }

            foreach (var Hierarchy in HierarchiesUnderMe)
            {
                IList<User> UsersUnderMyHierarchy = GeUsersOfHierarchy(Hierarchy);

                foreach (var UserUnderMyHierarchy in UsersUnderMyHierarchy)
                {
                    if (!UsersUnderMyHierarchies.Contains(UserUnderMyHierarchy))
                    {
                        UsersUnderMyHierarchies.Add(UserUnderMyHierarchy);
                    }
                }
            }

            //if (ParentId.Count > 0)
            //{
            //    Subordinates = Subordinates.Where(w => HierarchiesUnderMe.Contains(w.Hierarchy)).ToList();
            //}

            var merged = new List<User>(Subordinates);
            merged.AddRange(UsersUnderMyHierarchies.Where(u2 =>
                            Subordinates.All(u1 => u1.Id != u2.Id)));

            Users = merged.ToList();

            return Users;
        }

        #region UserGridCRUD
        public static User Create(User User)
        {
            if (User.Manager != null && User.Manager.Id == 0)
            {
                User.Manager = null;
            }
            if (User.Shift != null && User.Shift.Id == 0)
            {
                User.Shift = null;
            }
            if (User.Hierarchy != null && User.Hierarchy.Id == 0)
            {
                User.Hierarchy = null;
            }
            if (User.Country != null && User.Country.Id == 0)
            {
                User.Country = null;
            }
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedUser = FNHRepository.SaveOrUpdate<User>(User);
            FNHRepository.CommitTransaction();
            return CreatedUser;
        }

        public static IList<User> Read(User LoggedInUser, bool IfAdmin)
        {
            var Users = GeSubordinatesList(LoggedInUser, IfAdmin);

            return Users;
        }

        public static User Update(User User)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedUser = FNHRepository.SaveOrUpdate<User>(User);
            FNHRepository.CommitTransaction();
            return UpdatedUser;
        }

        public static User Destroy(User User)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            User.IsDeleted = true;

            var DeletedUser = FNHRepository.SaveOrUpdate<User>(User);
            FNHRepository.CommitTransaction();

            return DeletedUser;
        }
        #endregion
    }

}
