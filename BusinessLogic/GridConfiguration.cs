using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BusinessLogic
{
    public class GridConfiguration
    {
        public static IList<Column> GetGridColumns(string GridClass)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            return FNHRepository.Session.QueryOver<Column>().Where(w => w.Cofigurable && w.GridClass == GridClass).List()
                .OrderBy(o => o.ColumnOrder).ToList();

        }

        public static IList<Command> GetGridCommands(int CommandLevel, string GridClass)
        {
            FNHRepository.CloseSession();
            FNHRepository.OpenSession();
            return FNHRepository.Session.QueryOver<Command>().Where(w => w.Visible && w.CommandLevel == CommandLevel && w.GridClass == GridClass).List()
                    .OrderBy(c => c.CommandOrder).ToList();
        }

        public static IList<NameValuePair> GetDropdownData(string Field, string Model)
        {
            IList<NameValuePair> DropDownData = new List<NameValuePair>();
            switch (Field.ToLower())
            {
                #region Users
                case "manager":
                case "qualityanalyst":
                case "handoverto":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<User>()
                            .Select(s => new NameValuePair
                            {
                                Id = s.Id,
                                Value = s.Id,
                                Name = s.Name
                            })
                            .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Status
                case "status":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<Status>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region QAStatus
                case "qastatus":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<QAStatus>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Shift
                case "shift":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<Shift>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Country
                case "country":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<Country>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region DelayCause
                case "delaycause":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<DelayCause>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Hierarchy
                case "hierarchy":
                case "parent":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<Hierarchy>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region WorkType
                case "worktype":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<WorkType>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Business
                case "business":
                    FNHRepository.CloseSession();
                    FNHRepository.OpenSession();
                    DropDownData = FNHRepository.GetAll<Business>()
                        .Select(s => new NameValuePair
                        {
                            Id = s.Id,
                            Value = s.Id,
                            Name = s.Name
                        })
                        .OrderBy(c => c.Name).ToList();
                    FNHRepository.CommitTransaction();
                    break;
                #endregion

                #region Default
                default:
                    DropDownData = new List<NameValuePair>
                    {
                        new NameValuePair
                        {
                            Id = 404,
                            Value =404,
                            Name ="No default action defined."
                        }
                    };
                    break;
                    #endregion
            }

            return DropDownData;
        }

    }
}
