using DataModels;
using NHibernate;
using NHibernate.Criterion;
using NHibernate.Transform;
using NhibernateSessionManagement.Common;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using SmartFormat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class HierarchyRepository
    {
        //https://ayende.com/blog/4151/nhibernate-tips-tricks-efficiently-selecting-a-tree
        public static IList<Hierarchy> GetHierarchy(User User, IList<int> ParentId = null, bool IfTree = false)
        {
            if (ParentId == null)
            {
                ParentId = new List<int>();
            }
            IList<Hierarchy> HierarchyList = new List<Hierarchy>();
            if (User != null)
            {
                FNHRepository.CloseSession();
                FNHRepository.OpenSession();
                string HierarchyListQuery;
                if (ParentId.Count() == 0)
                {

                    HierarchyListQuery = "select h from Hierarchy h where h.Manager.Id = " + User.Id;
                }
                else
                {
                    HierarchyListQuery = "select h from Hierarchy h where h.Parent.Id in (" + string.Join(",", ParentId.Select(i => i.ToString()).ToArray()) + ")";
                    if (!IfTree)
                    {
                        HierarchyListQuery += "or h.Id in (" + string.Join(",", ParentId.Select(i => i.ToString()).ToArray()) + ")";
                    }
                }

                HierarchyList = FNHRepository.Session.CreateQuery(HierarchyListQuery)
                       .SetResultTransformer(new DistinctRootEntityResultTransformer())
                       .List<Hierarchy>();
            }

            if (HierarchyList == null)
            {
                HierarchyList = new List<Hierarchy>();
            }
            return HierarchyList;
        }

        #region HierarchyGridCRUD
        public static Hierarchy Create(Hierarchy Hierarchy)
        {
            if (Hierarchy.Manager != null && Hierarchy.Manager.Id == 0)
            {
                Hierarchy.Manager = null;
            }
            if (Hierarchy.Parent != null && Hierarchy.Parent.Id == 0)
            {
                Hierarchy.Parent = null;
            }

            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var CreatedHierarchy = FNHRepository.SaveOrUpdate<Hierarchy>(Hierarchy);
            FNHRepository.CommitTransaction();
            return CreatedHierarchy;
        }

        public static IList<Hierarchy> Read(User LoggedInUser)
        {
            var Hierarchies = GetHierarchy(LoggedInUser).Flatten<Hierarchy>(o => o.HierarchyList).ToList();

            return Hierarchies;
        }

        public static Hierarchy Update(Hierarchy Hierarchy)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();
            var UpdatedHierarchy = FNHRepository.SaveOrUpdate<Hierarchy>(Hierarchy);
            FNHRepository.CommitTransaction();
            return UpdatedHierarchy;
        }

        public static Hierarchy Destroy(Hierarchy Hierarchy)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            FNHRepository.BeginTransaction();

            Hierarchy.IsDeleted = true;

            var DeletedHierarchy = FNHRepository.SaveOrUpdate<Hierarchy>(Hierarchy);
            FNHRepository.CommitTransaction();

            return DeletedHierarchy;
        }
        #endregion

        #region Hierarchy to connect to IMAP and SMTP servers
        public static Hierarchy BestUserHierarchyFromRecipientAndSender(User User, string Recipient, string Sender)
        {
            Hierarchy BestUserHierarchy;
            char[] charsToTrim = { ',', ';', ' ' };

            if (User.Hierarchy != null && (!string.IsNullOrEmpty(User.Hierarchy.UserName) && !string.IsNullOrWhiteSpace(User.Hierarchy.UserName)))
            {
                BestUserHierarchy = User.Hierarchy;
            }
            else
            {
                MailAddressCollection EmailIds = new MailAddressCollection();
                if (!string.IsNullOrEmpty(Recipient))
                {
                    EmailIds.Add(Recipient.Replace(';', ',').TrimEnd(charsToTrim));
                }
                if (!string.IsNullOrEmpty(Sender))
                {
                    EmailIds.Add(Sender.Replace(';', ',').TrimEnd(charsToTrim));
                }

                IList<string> CompareEmailIds = new List<string>();

                foreach (var EmailId in EmailIds)
                {
                    CompareEmailIds.Add(EmailId.Address);
                }

                BestUserHierarchy = HierarchyRepository.GetHierarchy(User).Flatten<Hierarchy>(o => o.HierarchyList).ToList()
                    .Where(w => CompareEmailIds.Contains(w.UserName)).FirstOrDefault();
            }
            return BestUserHierarchy;
        }

        public static Hierarchy BestUserHierarchyFromSender(User User, string[] Sender)
        {
            Hierarchy BestUserHierarchy;

            if (User.Hierarchy != null && (!string.IsNullOrEmpty(User.Hierarchy.UserName) && !string.IsNullOrWhiteSpace(User.Hierarchy.UserName)))
            {
                BestUserHierarchy = User.Hierarchy;
            }
            else
            {

                BestUserHierarchy = HierarchyRepository.GetHierarchy(User).Where(w => Sender.Contains(w.UserName)).FirstOrDefault();

                //Hierarchy = FNHRepository.Session.QueryOver<Hierarchy>()
                //    .Where(
                //    Restrictions.On<Hierarchy>(r => r.UserName).IsIn(Recipients)
                //    ).List().FirstOrDefault();
            }
            return BestUserHierarchy;
        }
        #endregion

        #region Acknowledge the request
        public static string GetAcknowledgementTemplate(User User, WorkItem WorkItem, string Recipient)
        {
            string AcknowldgementTemplate = "No acknowledgement template found.";
            Hierarchy Hierarchy = BestUserHierarchyFromRecipientAndSender(User, Recipient, "");

            if (Hierarchy != null && !string.IsNullOrEmpty(Hierarchy.AcknowledgementTemplate))
            {
                AcknowldgementTemplate = Smart.Format(Hierarchy.AcknowledgementTemplate, WorkItem);
            }

            return AcknowldgementTemplate;
        }
        #endregion
    }
}
