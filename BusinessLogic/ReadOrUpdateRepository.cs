using DataModels;
using NhibernateSessionManagement.DataBase.DataManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class ReadOrUpdateRepository
    {
        public static bool UpdateDynamicEditor(User User, int RowId, string GridClass, string EditorFor, string EditorValue)
        {
            bool UpdateSuccess = false;
            switch (GridClass.ToLower())
            {
                #region WorkItem
                case "workitem":
                    WorkItem WorkItem = FNHRepository.RetrieveById<WorkItem>(RowId);

                    if (WorkItem != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Notes
                            case "notes":
                                WorkItem.Notes = EditorValue;

                                UpdateSuccess = true;

                                break;
                            #endregion
                            default:
                                break;
                        }

                        FNHRepository.BeginTransaction();
                        FNHRepository.SaveOrUpdate<WorkItem>(WorkItem);
                        FNHRepository.CommitTransaction();
                    }

                    break;
                #endregion

                #region Hierarchy
                case "hierarchy":
                    Hierarchy Hierarchy = FNHRepository.RetrieveById<Hierarchy>(RowId);

                    if (Hierarchy != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Acknowledgement Template
                            case "acknowledgementtemplate":
                                Hierarchy.AcknowledgementTemplate = EditorValue;

                                UpdateSuccess = true;

                                break;
                            #endregion
                            default:
                                break;
                        }

                        FNHRepository.BeginTransaction();
                        FNHRepository.SaveOrUpdate<Hierarchy>(Hierarchy);
                        FNHRepository.CommitTransaction();
                    }

                    break;
                #endregion

                #region User
                case "user":
                    User UpdateUser = FNHRepository.RetrieveById<User>(RowId);

                    if (UpdateUser != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Email Signature
                            case "emailsignature":
                                UpdateUser.EmailSignature = EditorValue;

                                UpdateSuccess = true;

                                break;
                            #endregion
                            default:
                                break;
                        }

                        FNHRepository.BeginTransaction();
                        FNHRepository.SaveOrUpdate<User>(UpdateUser);
                        FNHRepository.CommitTransaction();
                    }

                    break;
                #endregion

                default:
                    UpdateSuccess = false;
                    break;
            }
            return UpdateSuccess;
        }

        public static string ReadValueForDynamicEditor(User User, int RowId, string GridClass, string EditorFor)
        {
            string NewEditorValue = "No data";
            switch (GridClass.ToLower())
            {
                #region WorkItem
                case "workitem":
                    WorkItem WorkItem = FNHRepository.RetrieveById<WorkItem>(RowId);

                    if (WorkItem != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Notes
                            case "notes":
                                NewEditorValue = WorkItem.Notes;
                                break;
                            #endregion
                            default:
                                break;
                        }
                    }

                    break;
                #endregion

                #region Hierarchy
                case "hierarchy":
                    Hierarchy Hierarchy = FNHRepository.RetrieveById<Hierarchy>(RowId);

                    if (Hierarchy != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Acknowledgement Template
                            case "acknowledgementtemplate":
                                NewEditorValue = Hierarchy.AcknowledgementTemplate;
                                break;
                            #endregion
                            default:
                                break;
                        }
                    }

                    break;
                #endregion

                #region User
                case "user":
                    User UpdateUser = FNHRepository.RetrieveById<User>(RowId);

                    if (UpdateUser != null)
                    {
                        switch (EditorFor.ToLower())
                        {
                            #region Email Signature
                            case "emailsignature":
                                NewEditorValue = UpdateUser.EmailSignature;

                                break;
                            #endregion
                            default:
                                break;
                        }
                    }

                    break;
                #endregion

                default:
                    NewEditorValue = "No data";
                    break;
            }
            return NewEditorValue;
        }

        public static string ReadHistory(User User, int RowId, string GridClass)
        {
            string NewEditorValue = "No data";
            switch (GridClass.ToLower())
            {
                #region WorkItem
                case "workitem":
                    WorkItem WorkItem = FNHRepository.RetrieveById<WorkItem>(RowId);
                   var history = FNHRepository.GetHistory<WorkItem>(RowId);


                    break;
                #endregion

               
                default:
                    NewEditorValue = "No data";
                    break;
            }
            return NewEditorValue;
        }

    }
}