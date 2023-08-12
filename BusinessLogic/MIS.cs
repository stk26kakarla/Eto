using DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class MIS
    {
        public static IList<AutoMap.WorkItemGraph> GenerateReportByCategory(string ReportCategory, DateTime FromDate, DateTime ToDate, User LoggedInUser, bool IsAdmin, IList<int> ParentId)
        {
            IList<AutoMap.WorkItemGraph> WorkItemGraph = new List<AutoMap.WorkItemGraph>();
            IList<WorkItem> WorkItems = WorkItemRepository.ReadAllWorkItems(LoggedInUser, IsAdmin, ParentId, FromDate, ToDate);

            if (WorkItems == null)
            {
                WorkItems = new List<WorkItem>();
            }

            IList<WorkItem> WorkItemsNotAssigned = null;

            switch (ReportCategory.ToLower())
            {
                #region Status
                case "status":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Status == null).ToList();
                    var WorkItemsGroupByStatus = WorkItems.Where(w => w.Status != null).GroupBy(g => g.Status.Id);
                    foreach (var WorkItem in WorkItemsGroupByStatus)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Status.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region Shift
                case "shift":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Shift == null).ToList();
                    var WorkItemsGroupByShift = WorkItems.Where(w => w.Shift != null).GroupBy(g => g.Shift.Id);
                    foreach (var WorkItem in WorkItemsGroupByShift)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Shift.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region Country
                case "country":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Country == null).ToList();
                    var WorkItemsGroupByCountry = WorkItems.Where(w => w.Country != null).GroupBy(g => g.Country.Id);
                    foreach (var WorkItem in WorkItemsGroupByCountry)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Country.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region WorkType
                case "worktype":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.WorkType == null).ToList();
                    var WorkItemsGroupByWorkType = WorkItems.Where(w => w.WorkType != null).GroupBy(g => g.WorkType.Id);
                    foreach (var WorkItem in WorkItemsGroupByWorkType)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().WorkType.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region Business
                case "business":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Business == null).ToList();
                    var WorkItemsGroupByBusiness = WorkItems.Where(w => w.Business != null).GroupBy(g => g.Business.Id);
                    foreach (var WorkItem in WorkItemsGroupByBusiness)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Business.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region Hierarchy
                case "hierarchy":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Hierarchy == null).ToList();
                    var WorkItemsGroupByHierarchy = WorkItems.Where(w => w.Hierarchy != null).GroupBy(g => g.Hierarchy.Id);
                    foreach (var WorkItem in WorkItemsGroupByHierarchy)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Hierarchy.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                #region Manager
                case "manager":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.Manager == null).ToList();
                    var WorkItemsGroupByManager = WorkItems.Where(w => w.Manager != null).GroupBy(g => g.Manager.Id);
                    foreach (var WorkItem in WorkItemsGroupByManager)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Manager.Name;
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }

                    break;
                #endregion
                #region Date
                case "date":
                    WorkItemsNotAssigned = WorkItems.Where(w => w.CreatedDate == null).ToList();
                    var WorkItemsGroupByDate = WorkItems.Where(w => w.CreatedDate != null).GroupBy(g => g.CreatedDate.Value.Date);
                    foreach (var WorkItem in WorkItemsGroupByDate)
                    {
                        AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
                        GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
                        GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
                        GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
                        GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
                        GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
                        GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
                        if (WorkItem.FirstOrDefault() != null)
                        {
                            GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().CreatedDate.Value.Date.ToShortDateString();
                        }

                        WorkItemGraph.Add(GroupedWorkItemForGraph);
                    }
                    break;
                #endregion
                default:
                    break;
            }

            if (WorkItemsNotAssigned != null)
            {
                AutoMap.WorkItemGraph NullWorkItemsForGraph = new AutoMap.WorkItemGraph();
                NullWorkItemsForGraph.BlankItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 0).Count();
                NullWorkItemsForGraph.BlackItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 1).Count();
                NullWorkItemsForGraph.RedItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 2).Count();
                NullWorkItemsForGraph.YellowItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 3).Count();
                NullWorkItemsForGraph.GreenItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 4).Count();
                NullWorkItemsForGraph.WhiteItemsCount = WorkItemsNotAssigned.Where(w => w.PriorityColor == 5).Count();
                NullWorkItemsForGraph.Category = "Not assigned";

                WorkItemGraph.Add(NullWorkItemsForGraph);
            }

            #region TODO: Generalise this code to all switch cases
            //var WorkItemsGroupByReportCategory = WorkItems.Where(w => w.Manager != null).GroupBy(g => g.Manager.Id);

            //foreach (var WorkItem in WorkItemsGroupByReportCategory)
            //{
            //    AutoMap.WorkItemGraph GroupedWorkItemForGraph = new AutoMap.WorkItemGraph();
            //    GroupedWorkItemForGraph.BlankItemsCount = WorkItem.Where(w => w.PriorityColor == 0).Count();
            //    GroupedWorkItemForGraph.BlackItemsCount = WorkItem.Where(w => w.PriorityColor == 1).Count();
            //    GroupedWorkItemForGraph.RedItemsCount = WorkItem.Where(w => w.PriorityColor == 2).Count();
            //    GroupedWorkItemForGraph.YellowItemsCount = WorkItem.Where(w => w.PriorityColor == 3).Count();
            //    GroupedWorkItemForGraph.GreenItemsCount = WorkItem.Where(w => w.PriorityColor == 4).Count();
            //    GroupedWorkItemForGraph.WhiteItemsCount = WorkItem.Where(w => w.PriorityColor == 5).Count();
            //    if (WorkItem.FirstOrDefault() != null)
            //    {  
            //        GroupedWorkItemForGraph.Category = WorkItem.FirstOrDefault().Manager.Name;
            //    }

            //    WorkItemGraph.Add(GroupedWorkItemForGraph);
            //} 
            #endregion

            return WorkItemGraph;
        }
    }
}
