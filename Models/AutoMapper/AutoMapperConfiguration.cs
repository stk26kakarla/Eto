using AutoMapper;
using System;
using DataModels;
using NLog;

namespace EtoWeb.AutoMapper
{

    public static class AutoMapperConfiguration
    {

        private static Logger logger = LogManager.GetCurrentClassLogger();

        public static void Configure()
        {
            logger.Info("Start: AutoMapperConfiguration.Configure");
            Mapper.Initialize(c =>
            {
                c.CreateMap<BasicItem, AutoMap.BasicItem>()
                .Include<Shift, AutoMap.Shift>()
                .Include<Country, AutoMap.Country>()
                .Include<Hierarchy, AutoMap.Hierarchy>()
                .Include<User, AutoMap.User>()
                .Include<Attachment, AutoMap.Attachment>()
                .Include<EtoMail, AutoMap.EtoMail>()
                .Include<DelayCause, AutoMap.DelayCause>()
                .Include<QAStatus, AutoMap.QAStatus>()
                .Include<WorkType, AutoMap.WorkType>()
                .Include<Business, AutoMap.Business>()
                .Include<Status, AutoMap.Status>()
                .Include<WorkItem, AutoMap.WorkItem>()
                .Include<Column, AutoMap.Column>()
                .Include<Command, AutoMap.Command>()
                .ForMember(u => u.UpdatedBy, ms => ms.MapFrom<User>(s => s.UpdatedBy == null ? null : new User
                {
                    Id = s.UpdatedBy.Id,
                    Name = s.UpdatedBy.Name
                }))
                .ForMember(m => m.Manager, ms => ms.MapFrom<User>(s => s.Manager == null ? null : new User
                {
                    Id = s.Manager.Id,
                    Name = s.Manager.Name
                }));

                c.CreateMap<NameValuePair, AutoMap.NameValuePair>();


                c.CreateMap<Column, AutoMap.Column>();
                c.CreateMap<Command, AutoMap.Command>();

                c.CreateMap<Shift, AutoMap.Shift>();
                c.CreateMap<Country, AutoMap.Country>();
                c.CreateMap<Hierarchy, AutoMap.Hierarchy>()
                .ForMember(p => p.Parent, ms => ms.MapFrom<Hierarchy>(s => s.Parent == null ? null : new Hierarchy
                {
                    Id = s.Parent.Id,
                    Name = s.Parent.Name
                }));
                c.CreateMap<User, AutoMap.User>();
                c.CreateMap<Attachment, AutoMap.Attachment>()
                .ForMember(e => e.EtoMail, ms => ms.MapFrom<NameValuePair>(s => s.EtoMail == null ? null : new NameValuePair
                {
                    Id = s.EtoMail.Id,
                    Name = s.EtoMail.Name,
                    ExternalUId = s.EtoMail.ExternalUId
                }));
                c.CreateMap<EtoMail, AutoMap.EtoMail>()
                .ForMember(w => w.WorkItem, ms => ms.MapFrom<NameValuePair>(s => s.WorkItem == null ? null : new NameValuePair
                {
                    Id = s.WorkItem.Id,
                    Name = s.WorkItem.Name,
                    ExternalUId = s.WorkItem.ExternalUId
                }));
                c.CreateMap<DelayCause, AutoMap.DelayCause>();
                c.CreateMap<QAStatus, AutoMap.QAStatus>();
                c.CreateMap<WorkType, AutoMap.WorkType>();
                c.CreateMap<Business, AutoMap.Business>();
                c.CreateMap<Status, AutoMap.Status>();
                c.CreateMap<WorkItem, AutoMap.WorkItem>()
                .ForMember(qa => qa.QualityAnalyst, ms => ms.MapFrom<User>(s => s.QualityAnalyst == null ? null : new User
                {
                    Id = s.QualityAnalyst.Id,
                    Name = s.QualityAnalyst.Name
                }))
                .ForMember(ht => ht.HandoverTo, ms => ms.MapFrom<User>(s => s.HandoverTo == null ? null : new User
                {
                    Id = s.HandoverTo.Id,
                    Name = s.HandoverTo.Name
                }))
                .ForMember(r => r.Requester, ms => ms.MapFrom<User>(s => s.Requester == null ? null : new User
                {
                    Id = s.Requester.Id,
                    Name = s.Requester.Name
                }));
            });

            logger.Info("End: AutoMapperConfiguration.Configure");
        }
    }
}