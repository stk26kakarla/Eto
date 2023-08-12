using DataModels;
using NHibernate.Criterion;
using NhibernateSessionManagement.Common;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class WorkItemRepository
    {
        public static WorkItem Create(WorkItem WorkItem)
        {
            if (WorkItem.Manager != null && WorkItem.Manager.Id == 0)
            {
                WorkItem.Manager = null;
            }

            if (WorkItem.Status != null && WorkItem.Status.Id == 0)
            {
                WorkItem.Status = null;
            }

            if (WorkItem.WorkType != null && WorkItem.WorkType.Id == 0)
            {
                WorkItem.WorkType = null;
            }
            if (WorkItem.QAStatus != null && WorkItem.QAStatus.Id == 0)
            {
                WorkItem.QAStatus = null;
            }

            if (WorkItem.QualityAnalyst != null && WorkItem.QualityAnalyst.Id == 0)
            {
                WorkItem.QualityAnalyst = null;
            }

            if (WorkItem.HandoverTo != null && WorkItem.HandoverTo.Id == 0)
            {
                WorkItem.HandoverTo = null;
            }
            if (WorkItem.Requester != null && WorkItem.Requester.Id == 0)
            {
                WorkItem.Requester = null;
            }

            if (WorkItem.Shift != null && WorkItem.Shift.Id == 0)
            {
                WorkItem.Shift = null;
            }

            if (WorkItem.Country != null && WorkItem.Country.Id == 0)
            {
                WorkItem.Country = null;
            }
            if (WorkItem.DelayCause != null && WorkItem.DelayCause.Id == 0)
            {
                WorkItem.DelayCause = null;
            }
            if (WorkItem.Hierarchy != null && WorkItem.Hierarchy.Id == 0)
            {
                WorkItem.Hierarchy = null;
            }

            WorkItem.OriginalReviewDate = WorkItem.CurrentReviewDate;
            WorkItem.OriginalTargetDate = WorkItem.CurrentTargetDate;

            WorkItem.CreatedDate = DateTime.UtcNow;

            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
            FNHRepository.CommitTransaction();

            CreatedWorkItem.ExternalUId = "ETO" + CreatedWorkItem.Id;

            FNHRepository.BeginTransaction();
            CreatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(CreatedWorkItem);
            FNHRepository.CommitTransaction();

            return CreatedWorkItem;
        }

        public static IList<WorkItem> ReadMyWorkItems(User LoggedInUser, bool IsAdmin, IList<int> ParentId)
        {
            var disjunction = new Disjunction();
            var Hierarchies = HierarchyRepository.GetHierarchy(LoggedInUser, ParentId).ToList<Hierarchy>();
            var Users = UserRepository.GetUsers(LoggedInUser, IsAdmin, ParentId, Hierarchies, false).ToList<User>();

            if (ParentId.Count > 0)
            {
                disjunction.Add(Restrictions.On<WorkItem>(r => r.Manager).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.QualityAnalyst).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.HandoverTo).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.Requester).IsIn(Users) &&
                Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies));
            }
            else
            {
                disjunction.Add(Restrictions.On<WorkItem>(r => r.Manager).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.QualityAnalyst).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.HandoverTo).IsIn(Users) ||
                Restrictions.On<WorkItem>(r => r.Requester).IsIn(Users));
            }

            var WorkItem = FNHRepository.Session.QueryOver<WorkItem>()
                .Where(w => w.Status != null && (w.Status.Id != 1 && w.Status.Id != 2))
                .Where(disjunction).List().OrderByDescending(o => o.CreatedDate).OrderBy(o => o.PriorityColor).ToList();

            return WorkItem;
        }

        public static IList<WorkItem> ReadAllActiveWorkItems(User LoggedInUser, bool IsAdmin, IList<int> ParentId)
        {
            var disjunction = new Disjunction();
            var Hierarchies = HierarchyRepository.GetHierarchy(LoggedInUser, ParentId).Flatten<Hierarchy>(o => o.HierarchyList).ToList();

            if (ParentId.Count > 0)
            {
                disjunction.Add(Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies));
            }
            else
            {
                var Users = UserRepository.GetUsers(LoggedInUser, IsAdmin, ParentId, Hierarchies, true).ToList<User>();
                disjunction.Add(Restrictions.On<WorkItem>(r => r.Manager).IsIn(Users) ||
                    Restrictions.On<WorkItem>(r => r.Manager).IsNull ||
                    Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies));
            }

            var WorkItem = FNHRepository.Session.QueryOver<WorkItem>()
                .Where(w => w.Status != null && (w.Status.Id != 1 && w.Status.Id != 2))
                .Where(disjunction).List().OrderByDescending(o => o.CreatedDate).ToList();

            return WorkItem;
        }

        public static WorkItem Update(WorkItem WorkItem)
        {
            if (WorkItem.OriginalReviewDate == null)
            {
                WorkItem.OriginalReviewDate = WorkItem.CurrentReviewDate;
            }
            if (WorkItem.OriginalTargetDate == null)
            {
                WorkItem.OriginalTargetDate = WorkItem.CurrentTargetDate;
            }
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
            FNHRepository.CommitTransaction();
            return UpdatedWorkItem;
        }

        public static WorkItem Destroy(WorkItem WorkItem)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            WorkItem.IsDeleted = true;

            var DeletedWorkItem = FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
            FNHRepository.CommitTransaction();

            return DeletedWorkItem;
        }

        public static IList<WorkItem> ReadReslovedWorkItems(User LoggedInUser, IList<int> ParentId)
        {
            var Hierarchies = HierarchyRepository.GetHierarchy(LoggedInUser, ParentId).ToList<Hierarchy>();
            if (LoggedInUser.Hierarchy != null)
            {
                Hierarchies.Add(LoggedInUser.Hierarchy);
            }

            var WorkItem = FNHRepository.Session.QueryOver<WorkItem>()
                .Where(w => w.Status != null && (w.Status.Id == 1))
                .Where(Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies))
                .List()
                .OrderByDescending(o => o.UpdatedOn)
                .ToList();

            return WorkItem;
        }

        public static IList<WorkItem> ReadClosedWorkItems(User LoggedInUser, IList<int> ParentId)
        {
            var Hierarchies = HierarchyRepository.GetHierarchy(LoggedInUser, ParentId).ToList<Hierarchy>();
            if (LoggedInUser.Hierarchy != null)
            {
                Hierarchies.Add(LoggedInUser.Hierarchy);
            }

            var WorkItem = FNHRepository.Session.QueryOver<WorkItem>()
                .Where(w => w.Status != null && (w.Status.Id == 2))
                .Where(Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies))
                .List()
                .OrderByDescending(o => o.UpdatedOn)
                .ToList();

            return WorkItem;
        }

        public static User SaveWorkItemGridColumnState(User CurrentLoggedInUser, string WorkItemGridColumnState)
        {
            CurrentLoggedInUser.WorkItemGridColumnState = WorkItemGridColumnState;
            FNHRepository.BeginTransaction();
            var UpdatedCurrentLoggedInUser = FNHRepository.SaveOrUpdate<User>(CurrentLoggedInUser);
            FNHRepository.CommitTransaction();

            return UpdatedCurrentLoggedInUser;
        }

        public static IList<WorkItem> ReadAllWorkItems(User LoggedInUser, bool IsAdmin, IList<int> ParentId, DateTime FromDate, DateTime ToDate)
        {
            var conjunction = new Conjunction();
            var Hierarchies = HierarchyRepository.GetHierarchy(LoggedInUser, ParentId).Flatten<Hierarchy>(o => o.HierarchyList).ToList();

            if (ParentId.Count > 0)
            {
                conjunction.Add(Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies));
            }
            else
            {
                var Users = UserRepository.GetUsers(LoggedInUser, IsAdmin, ParentId, Hierarchies, true).ToList<User>();
                conjunction.Add(Restrictions.On<WorkItem>(r => r.Manager).IsIn(Users) ||
                    Restrictions.On<WorkItem>(r => r.Manager).IsNull ||
                    Restrictions.On<WorkItem>(r => r.Hierarchy).IsIn(Hierarchies));
            }
            if (FromDate != null && ToDate != null)
            {
                conjunction.Add<WorkItem>(d => d.CreatedDate.Value.Date >= FromDate.Date && d.CreatedDate.Value.Date <= ToDate.Date);
            }

            var WorkItem = FNHRepository.Session.QueryOver<WorkItem>()
                //.Where(w => w.Status != null && (w.Status.Id != 1 && w.Status.Id != 2))
                .Where(conjunction)
                .List()
                //.OrderByDescending(o => o.CreatedDate)
                .ToList();

            return WorkItem;
        }

        [Obsolete]
        public static string GenerateTicketNumber()
        {
            string RequestId = "";

            int LastRequestNumber = 0;
            var LastRequest = FNHRepository.Session.QueryOver<WorkItem>().OrderBy(x => x.Id).Desc().Take(1).List().FirstOrDefault();
            if (LastRequest != null)
            {
                LastRequestNumber = LastRequest.Id;
            }

            RequestId = "ETO" + (LastRequestNumber + 1).ToString();

            return RequestId;
        }
    }
}
