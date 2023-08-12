using DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class Notification
    {
        public static IList<string> AddUserIdsForWorkItem(WorkItem WorkItem)
        {
            IList<string> UserIds = new List<string>();

            if (WorkItem.Manager != null)
            {
                UserIds.Add(WorkItem.Manager.Id.ToString());
                if (WorkItem.Manager.Shift != null && WorkItem.Manager.Shift.Manager != null)
                {
                    UserIds.Add(WorkItem.Manager.Shift.Manager.Id.ToString());
                }
            }
            if (WorkItem.QualityAnalyst != null)
            {
                UserIds.Add(WorkItem.QualityAnalyst.Id.ToString());
            }
            if (WorkItem.HandoverTo != null)
            {
                UserIds.Add(WorkItem.HandoverTo.Id.ToString());
            }
            if (WorkItem.Requester != null)
            {
                UserIds.Add(WorkItem.Requester.Id.ToString());
            }
            if (WorkItem.UpdatedBy != null)
            {
                UserIds.Add(WorkItem.UpdatedBy.Id.ToString());
            }

            return UserIds;
        }

        public static IList<string> AddUserIdsForUsers(User User)
        {
            IList<string> UserIds = new List<string>();

            if (User != null)
            {
                UserIds.Add(User.Id.ToString());
            }
            if (User.UpdatedBy != null)
            {
                UserIds.Add(User.UpdatedBy.Id.ToString());
            }
            if (User.Manager != null)
            {
                UserIds.Add(User.Manager.Id.ToString());
            }

            return UserIds;
        }

        public static IList<string> AddUserIdsOfHierarchy(Hierarchy Hierarchy)
        {
            IList<string> UserIds = UserRepository.GeUsersOfHierarchy(Hierarchy).Select(s => s.Id.ToString()).ToList();

            if (UserIds == null)
            {
                UserIds = new List<string>();
            }

            return UserIds;
        }
    }
}
