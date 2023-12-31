USE [Eto]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalUId] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[EmailId] [nvarchar](255) NULL,
	[SecondaryEmailId] [nvarchar](255) NULL,
	[ContactNumber] [nvarchar](255) NULL,
	[EmailSignature] [nvarchar](255) NULL,
	[OOOFrom] [datetime] NULL,
	[OOOTo] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Shift_id] [int] NULL,
	[Hierarchy_id] [int] NULL,
	[Country_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[WorkItemGridColumnState] [nvarchar](max) NULL,
	[Manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (11, NULL, N'Amit Pandey', NULL, N'amit.p@nieto.in', N'amit.p@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (12, NULL, N'Amit Singh', NULL, N'amit.s@nieto.in', N'amit.s@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (13, NULL, N'Anirudh Murdeshwar', NULL, N'anirudh.m@nieto.in', N'anirudh.m@nieto.in', NULL, N's', NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (14, NULL, N'Badresh Shah', NULL, N'badresh.m@nieto.in', N'badresh.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (15, NULL, N'Deneis Joseph', NULL, N'deneis.j@nieto.in', N'deneis.j@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (16, NULL, N'Neeraj Shah', NULL, N'neeraj.m@nieto.in', N'neeraj.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (17, NULL, N'Samiksha More', NULL, N'samiksha.m@nieto.in', N'samiksha.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (18, NULL, N'Sathyasree Malipedi', NULL, N'sathyasree.m@nieto.in', N'sathyasree.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 9, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (19, NULL, N'Stanley Nadar', NULL, N'stanley.n@nieto.in', N'stanley.n@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (20, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A68601370964 AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (21, NULL, N'Vaibhav Mestry', NULL, N'vaibhav.m@nieto.in', N'vaibhav.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (22, NULL, N'Vinitt Jaiswal', NULL, N'vinitt.j@nieto.in', N'vinitt.j@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (23, NULL, N'Ankush Mehra', NULL, N'ankush.m@nieto.in', N'ankush.m@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, 10, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [IsDeleted], [UpdatedOn], [Shift_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [WorkItemGridColumnState], [Manager_id]) VALUES (24, NULL, N'Accenture', NULL, N'accenture@nieto.in', N'accenture@nieto.in', NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013E9CD8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[WorkType]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WorkType] ON
INSERT [dbo].[WorkType] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, N'Page update', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkType] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, N'New page', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkType] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (3, N'Press release', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkType] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (4, N'Price update', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkType] OFF
/****** Object:  Table [dbo].[Shift]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shift](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
	[Manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Shift] ON
INSERT [dbo].[Shift] ([Id], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [UpdatedBy_id], [Manager_id]) VALUES (9, N'APAC', CAST(0x0000A67D00107AC0 AS DateTime), CAST(0x0000A67D00AD08E0 AS DateTime), 0, CAST(0x0000A67D00C6C1A4 AS DateTime), NULL, NULL)
INSERT [dbo].[Shift] ([Id], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [UpdatedBy_id], [Manager_id]) VALUES (10, N'NA', CAST(0x0000A67D0107AC00 AS DateTime), CAST(0x0000A67D0018B820 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL)
INSERT [dbo].[Shift] ([Id], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [UpdatedBy_id], [Manager_id]) VALUES (11, N'Later EMEA', CAST(0x0000A67D00BD83A0 AS DateTime), CAST(0x0000A67C015A11C0 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL)
INSERT [dbo].[Shift] ([Id], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [UpdatedBy_id], [Manager_id]) VALUES (12, N'EMEA', CAST(0x0000A67D006B1DE0 AS DateTime), CAST(0x0000A67D0107AC00 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Shift] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Shift_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (1, N'United Kingdom', 0, CAST(0x0000A67D00CC75CC AS DateTime), 12, NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (2, N'India', 0, CAST(0x0000A67D00CC75CC AS DateTime), 9, NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (3, N'North America', 0, CAST(0x0000A67D00CC9B4C AS DateTime), 10, NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (4, N'Brazil', 0, CAST(0x0000A67D00CCD710 AS DateTime), 11, NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[QAStatus]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QAStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[QAStatus] ON
INSERT [dbo].[QAStatus] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, N'Fail', 0, CAST(0x0000A67D00E95BD8 AS DateTime), NULL)
INSERT [dbo].[QAStatus] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, N'Pass', 0, CAST(0x0000A67D00E95BD8 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[QAStatus] OFF
/****** Object:  Table [dbo].[Hierarchy]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hierarchy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostName] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[IsMailSynced] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Parent_id] [int] NULL,
	[Manager_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[IMAPHostName] [nvarchar](255) NULL,
	[IMAPPort] [nvarchar](255) NULL,
	[SMTPHostName] [nvarchar](255) NULL,
	[SMTPPort] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hierarchy] ON
INSERT [dbo].[Hierarchy] ([Id], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, N'Shell', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), NULL, 13, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Hierarchy] ([Id], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'587')
INSERT [dbo].[Hierarchy] ([Id], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'587')
INSERT [dbo].[Hierarchy] ([Id], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'587')
INSERT [dbo].[Hierarchy] ([Id], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'587')
SET IDENTITY_INSERT [dbo].[Hierarchy] OFF
/****** Object:  Table [dbo].[DelayCause]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DelayCause](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DelayCause] ON
INSERT [dbo].[DelayCause] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, N'Client Action required', NULL, CAST(0x0000A6690168198C AS DateTime), NULL)
INSERT [dbo].[DelayCause] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, N'Scope creep', 0, CAST(0x0000A67D00E98BE4 AS DateTime), NULL)
INSERT [dbo].[DelayCause] ([Id], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (3, N'Re-Work', 0, CAST(0x0000A67D00E98D10 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[DelayCause] OFF
/****** Object:  Table [dbo].[Status]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalUId] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([Id], [ExternalUId], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, NULL, N'Resolved', 0, CAST(0x0000A670013B1428 AS DateTime), NULL)
INSERT [dbo].[Status] ([Id], [ExternalUId], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, NULL, N'Closed', 0, CAST(0x0000A670003D3650 AS DateTime), NULL)
INSERT [dbo].[Status] ([Id], [ExternalUId], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (3, NULL, N'Open', 0, CAST(0x0000A6690168198C AS DateTime), NULL)
INSERT [dbo].[Status] ([Id], [ExternalUId], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (4, NULL, N'Assigned', 0, CAST(0x0000A6690168198C AS DateTime), NULL)
INSERT [dbo].[Status] ([Id], [ExternalUId], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (5, NULL, N'In Process', 0, CAST(0x0000A6690168198C AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Status] OFF
/****** Object:  Table [dbo].[WorkItem]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalUId] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[OriginalReviewDate] [datetime] NULL,
	[CurrentReviewDate] [datetime] NULL,
	[OriginalTargetDate] [datetime] NULL,
	[CurrentTargetDate] [datetime] NULL,
	[PriorityColor] [int] NULL,
	[IsLocked] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Manager_id] [int] NULL,
	[Status_id] [int] NULL,
	[QAStatus_id] [int] NULL,
	[QualityAnalyst_id] [int] NULL,
	[HandoverTo_id] [int] NULL,
	[Requester_id] [int] NULL,
	[Shift_id] [int] NULL,
	[Country_id] [int] NULL,
	[DelayCause_id] [int] NULL,
	[Hierarchy_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[WorkType_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[WorkItem] ON
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (3, N'ETO00001', N'stk', CAST(0x0000A67E0148DCAC AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68E010A0FB8 AS DateTime), 15, 3, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (5, N'ETO00002', N'STK', NULL, CAST(0x0000A67C011FC970 AS DateTime), CAST(0x0000A6A0011FC970 AS DateTime), CAST(0x0000A67C011FC970 AS DateTime), CAST(0x0000A69C011FC970 AS DateTime), 0, 0, 0, CAST(0x0000A68E012A06EC AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (6, N'ETO00003', N'asdf', NULL, CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), 0, 0, 0, CAST(0x0000A68E01069644 AS DateTime), NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (7, N'ETO000025', N'Eto', NULL, CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), 0, 0, 0, CAST(0x0000A68E010A0658 AS DateTime), 11, 3, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 20, N'', NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (8, N'ETO5', N'Test2', CAST(0x0000A68500F0E844 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F0E844 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (9, N'ETO7', N'Test4', CAST(0x0000A68500F3924C AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F3924C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (10, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (11, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (12, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (13, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (14, N'ETO9', N'Test13442 ETO9', CAST(0x0000A68A01378344 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00DCEE34 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (15, N'ETO9', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074DBA0 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (16, N'ETO10', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074E050 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (17, N'ETO10', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074EF8C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (18, N'ETO10', N'Test7', CAST(0x0000A68A00D17900 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0076E198 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (19, N'ETO10', N'Test9', CAST(0x0000A68A01089E94 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00AE072C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (20, N'ETO10', N'Test9', CAST(0x0000A68A010C2F78 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00B19B94 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (21, N'ETO10', N'Test10', CAST(0x0000A68A0112A178 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00B80C68 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (22, N'ETO10', N'Test11', CAST(0x0000A68A01153668 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00BAA02C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (23, N'ETO10', N'Test12', CAST(0x0000A68A01160700 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00BB70C4 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (24, N'ETO10', N'Test14', CAST(0x0000A68A011EE3C0 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00C44FDC AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (25, N'ETO10', N'Test15', CAST(0x0000A68A0124F92C AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00CA7CB8 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (26, N'ETO10', N'Test16', CAST(0x0000A68A01331160 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00D87C50 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (27, N'ETO10', N'Test17', CAST(0x0000A68A0133C380 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00D96B60 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItem] ([Id], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [Notes], [WorkType_id]) VALUES (28, N'ETO11', N'Test 18 ETO11', CAST(0x0000A68A01369434 AS DateTime), NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00DBFA74 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[WorkItem] OFF
/****** Object:  Table [dbo].[WorkPlan]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPlan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[EstimatedCompletion] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[WorkItem_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Command]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Command](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GridClass] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Class] [nvarchar](255) NULL,
	[ClickHandler] [nvarchar](255) NULL,
	[ToolTip] [nvarchar](255) NULL,
	[Style] [nvarchar](255) NULL,
	[Text] [nvarchar](255) NULL,
	[CommandOrder] [float] NULL,
	[CommandLevel] [int] NULL,
	[CommandTemplate] [nvarchar](max) NULL,
	[Width] [nvarchar](255) NULL,
	[Visible] [bit] NULL,
	[Cofigurable] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Command] ON
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (1, N'WorkItem', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (2, N'WorkItem', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (3, N'WorkItem', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (4, N'WorkItem', N'AssignedToMe', N'k-button etoCommandButton', N'assignedToMeItems()', N'My Items', NULL, N'Mine', 3, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (5, N'WorkItem', N'Resloved', N'k-button etoCommandButton', N'readResolvedItems()', N'Resolved', NULL, N'Resolved', 5, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (6, N'WorkItem', N'Closed', N'k-button etoCommandButton', N'readClosedItems()', N'Closed', NULL, N'Closed', 6, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (7, N'WorkItem', N'Preferences', N'k-button etoCommandButton', N'saveGridPreferences()', N'Save Grid column Preferences', NULL, N'Save Preferences', 7, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (8, N'WorkItem', N'All', N'k-button etoCommandButton', N'allItems()', N'All Items', NULL, N'All', 4, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (9, N'ColumnConfiguration', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (10, N'ColumnConfiguration', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (11, N'Shift', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (12, N'Shift', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (13, N'Shift', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (14, N'Country', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (15, N'Country', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (16, N'Country', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (17, N'Status', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (18, N'Status', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (19, N'Status', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (20, N'QAStatus', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (21, N'QAStatus', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (22, N'QAStatus', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (23, N'DelayCause', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (24, N'DelayCause', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (25, N'DelayCause', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (26, N'Hierarchy', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (27, N'Hierarchy', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (28, N'Hierarchy', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (29, N'User', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (30, N'User', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (34, N'WorkType', N'create', NULL, NULL, NULL, NULL, N'', 0, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (35, N'WorkType', N'save', NULL, NULL, NULL, NULL, N'', 1, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (36, N'WorkType', N'cancel', NULL, NULL, NULL, NULL, N'', 2, 0, NULL, NULL, 1, NULL, NULL, NULL)
INSERT [dbo].[Command] ([Id], [GridClass], [Name], [Class], [ClickHandler], [ToolTip], [Style], [Text], [CommandOrder], [CommandLevel], [CommandTemplate], [Width], [Visible], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (37, N'WorkItem', N'Acknowledge', N'k-button etoCommandButton', N'acknowledgeMail(#=Id#)', N'Acknowledge Mail', NULL, N'Acknowledge', 1, 1, NULL, N'50px', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Command] OFF
/****** Object:  Table [dbo].[EtoMail]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EtoMail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalUId] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[EmailType] [nvarchar](max) NULL,
	[Sender] [nvarchar](max) NULL,
	[Recipient] [nvarchar](max) NULL,
	[CarbonCopy] [nvarchar](max) NULL,
	[BlindCarbonCopy] [nvarchar](max) NULL,
	[MailBody] [nvarchar](max) NULL,
	[UpdatedOn] [datetime] NULL,
	[WorkItem_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EtoMail] ON
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (1, N'59', N'stk', N'Received', N'stk26kakarla@gmail.com', N'"swetank" <swetank@degenxsoft.com>', N'', N'', N'Test
-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A67E0148FEA8 AS DateTime), 3)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (2, N'67', N'Test2', N'Received', N'stk26kakarla@gmail.com', N'"swetank" <swetank@degenxsoft.com>', N'', N'', N'Test

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68500F0D908 AS DateTime), 8)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (3, N'69', N'Test4', N'Received', N'stk26kakarla@gmail.com', N'"swetank" <swetank@degenxsoft.com>', N'', N'', N'Test

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68500F3924C AS DateTime), 9)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (4, N'4', N'Test5', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test5

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0072A344 AS DateTime), 11)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (5, N'4', N'Test5', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test5

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0072A344 AS DateTime), 13)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (6, N'4', N'Test5', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test5

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0072A344 AS DateTime), 12)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (7, N'4', N'Test5', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test5

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0072A344 AS DateTime), 10)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (8, N'5', N'Test6', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test6

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0074DBA0 AS DateTime), 15)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (9, N'5', N'Test6', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test6

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0074DF24 AS DateTime), 14)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (10, N'5', N'Test6', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test6

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0074ED34 AS DateTime), 16)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (11, N'5', N'Test6', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test6

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0074F43C AS DateTime), 17)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (12, N'6', N'Test7', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test7

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A0076E198 AS DateTime), 18)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (13, N'5', N'Test9', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test9

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00AE072C AS DateTime), 19)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (14, N'6', N'Test9', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test9

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00B19B94 AS DateTime), 20)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (15, N'7', N'Test10', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test10

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00B80C68 AS DateTime), 21)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (16, N'8', N'Test11', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test11

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00BAA02C AS DateTime), 22)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (17, N'9', N'Test12', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test12

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00BB70C4 AS DateTime), 23)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (18, N'11', N'Test14', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test14

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00C44FDC AS DateTime), 24)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (19, N'12', N'Test15', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test15

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00CA7CB8 AS DateTime), 25)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (20, N'13', N'Test16', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test16

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00D87C50 AS DateTime), 26)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (21, N'14', N'Test17', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test17

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00D96B60 AS DateTime), 27)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (22, N'15', N'Test18', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test17

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00DA34F0 AS DateTime), 28)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (23, N'17', N'Test 18 ETO11', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00DBFA74 AS DateTime), 28)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (24, N'18', N'Test13442 ETO9', N'Received', N'stk26kakarla@gmail.com', N'www@nieto.in', N'', N'', N'Test

-- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A68A00DCEE34 AS DateTime), 14)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (25, NULL, N'Test5 - ETO8', N'Sent', N'www@nieto.in', N'stk26kakarla@gmail.com', N'stk26kakarla@gmail.com;iqqi5192@gmail.com', N'swetank.kakarla@shell.com', N'<ul><li><span style="text-decoration:underline;"><em><strong>Thanlks</strong></em></span></li></ul><br /><br /><hr style="margin:3px;" /><br />Test5 -- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A69301060E54 AS DateTime), 11)
INSERT [dbo].[EtoMail] ([Id], [ExternalUId], [Name], [EmailType], [Sender], [Recipient], [CarbonCopy], [BlindCarbonCopy], [MailBody], [UpdatedOn], [WorkItem_id]) VALUES (26, NULL, N'Test5 - ETO8', N'Sent', N'stk26kakarla@gmail.com', N'www@nieto.in', N'stk26kakarla@gmail.com;iqqi5192@gmail.com', N'swetank.kakarla@shell.com', N'Welcome to <span style="text-decoration:underline;"><em><strong>Eto</strong></em></span><br /><br /><hr style="margin:3px;" /><br /><ul><li><span style="text-decoration:underline;"><em><strong>Thanlks</strong></em></span></li></ul><br /><br /><hr style="margin:3px;" /><br />Test5 -- 
Warm regards,
Swetank Kakarla,
8097541316

', CAST(0x0000A693010713A8 AS DateTime), 11)
SET IDENTITY_INSERT [dbo].[EtoMail] OFF
/****** Object:  Table [dbo].[Column]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Column](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GridClass] [nvarchar](255) NULL,
	[Field] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Format] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Visible] [bit] NULL,
	[Editable] [bit] NULL,
	[EditTemplateType] [nvarchar](255) NULL,
	[Template] [nvarchar](max) NULL,
	[Coloured] [bit] NULL,
	[Filterable] [bit] NULL,
	[HtmlAttributes] [nvarchar](max) NULL,
	[DefaultValue] [nvarchar](255) NULL,
	[ColumnOrder] [float] NULL,
	[FilterField] [nvarchar](255) NULL,
	[Required] [bit] NULL,
	[Cofigurable] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Column] ON
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (1, N'WorkItem', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 1, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (2, N'WorkItem', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (3, N'WorkItem', N'ExternalUId', N'ExternalUId', NULL, 10, 1, 0, NULL, N'#if(ExternalUId != undefined && ExternalUId != null ){#<button title="Click to copy to clipboard" class="k-button" onclick="copyExternalUIdToClipBoard(''#=ExternalUId#'')">#=ExternalUId# </button> #} else {#-#}#', 0, 1, N'{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#"}', NULL, 0, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (4, N'WorkItem', N'Manager', N'Manager', NULL, 10, 1, 1, N'dropdown', N'#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"}', NULL, 2, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (5, N'WorkItem', N'CreatedDate', N'CreatedDate', N'datetime', 10, 1, 0, NULL, N'#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), "dd-MM-yyyy" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 3, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (6, N'WorkItem', N'OriginalReviewDate', N'OriginalReviewDate', N'datetime', 10, 1, 0, NULL, N'#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), "dd-MM-yyyy HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 4, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (7, N'WorkItem', N'CurrentReviewDate', N'CurrentReviewDate', NULL, 10, 1, 1, N'date', N'#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), "dd-MM-yyyy HH:mm") # # } else { #-# }#', 0, 1, N'{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 5, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (8, N'WorkItem', N'OriginalTargetDate', N'OriginalTargetDate', N'datetime', 10, 1, 0, NULL, N'#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), "dd-MM-yyyy HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 6, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (9, N'WorkItem', N'CurrentTargetDate', N'CurrentTargetDate', NULL, 10, 1, 1, N'date', N'#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, "dd-MM-yyyy HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 7, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (10, N'WorkItem', N'Status', N'Status', NULL, 10, 1, 1, N'dropdown', N'#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"}', NULL, 8, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (11, N'WorkItem', N'Notes', N'Notes', NULL, 10, 1, 1, N'textarea', N'#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#', 0, 1, N'{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"}', NULL, 9, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (12, N'WorkItem', N'QAStatus', N'QAStatus', NULL, 10, 1, 1, N'dropdown', N'#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"}', NULL, 10, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (13, N'WorkItem', N'QualityAnalyst', N'QualityAnalyst', NULL, 10, 1, 1, N'dropdown', N'#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"}', NULL, 11, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (14, N'WorkItem', N'HandoverTo', N'HandoverTo', NULL, 10, 1, 1, N'dropdown', N'#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"}', NULL, 12, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (15, N'WorkItem', N'PriorityColor', N'PriorityColor', NULL, 10, 0, 0, NULL, NULL, 0, 1, NULL, NULL, 13, NULL, 0, 0, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (16, N'WorkItem', N'Requester', N'Requester', NULL, 10, 1, 0, NULL, N'#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"}', NULL, 14, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (17, N'WorkItem', N'Shift', N'Shift', NULL, 10, 1, 1, N'dropdown', N'#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"}', NULL, 15, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (18, N'WorkItem', N'Country', N'Country', NULL, 10, 1, 1, N'dropdown', N'#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"}', NULL, 16, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (19, N'WorkItem', N'DelayCause', N'DelayCause', NULL, 10, 1, 1, N'dropdown', N'#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"}', NULL, 17, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (20, N'WorkItem', N'Hierarchy', N'Hierarchy', NULL, 10, 0, 0, NULL, N'#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#"}', NULL, 18, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (23, N'ColumnConfiguration', N'Field', N'Field', NULL, 10, 1, 1, N'textbox', N'#if(Field != undefined && Field != null ){# #=Field# #} else {#-#}#', 0, 1, N'{"title":"#if(Field!= undefined && Field!=null) { # #=Field# # } else { '' '' }#"}', NULL, 0, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (24, N'ColumnConfiguration', N'Title', N'Title', NULL, 10, 1, 1, N'textbox', N'#if(Title != undefined && Title != null ){# #=Title# #} else {#-#}#', 0, 1, N'{"title":"#if(Title!= undefined && Title!=null) { # #=Title# # } else { '' '' }#"}', NULL, 1, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (25, N'ColumnConfiguration', N'Width', N'Width', NULL, 10, 1, 1, N'numeric', N'#if(Width!= undefined && Width!=null) { # #= kendo.toString( Width, "0" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(Width!= undefined && Width!=null) { # #=kendo.toString( Width, ''0'' )# # } else { '' '' }#"}', NULL, 2, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (26, N'ColumnConfiguration', N'Visible', N'Visible', NULL, 10, 1, 1, N'checkbox', N'#if(Visible!= undefined && Visible!=null) { if(Visible == true){# Yes #}else{# No #} } else { #-# }#', 0, 1, NULL, NULL, 3, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (27, N'ColumnConfiguration', N'Editable', N'Editable', NULL, 10, 1, 1, N'checkbox', N'#if(Editable!= undefined && Editable!=null) { if(Editable == true){# Yes #}else{# No #} } else { #-# }#', 0, 1, NULL, NULL, 4, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (28, N'ColumnConfiguration', N'ColumnOrder', N'ColumnOrder', NULL, 10, 1, 1, N'textbox', N'#if(ColumnOrder!= undefined && ColumnOrder!=null) { # #= kendo.toString( ColumnOrder, "0" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(ColumnOrder!= undefined && ColumnOrder!=null) { # #=kendo.toString( ColumnOrder, ''0'' )# # } else { '' '' }#"}', NULL, 5, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (29, N'ColumnConfiguration', N'Required', N'Required', NULL, 10, 1, 1, N'checkbox', N'#if(Required!= undefined && Required!=null) { if(Required == true){# Yes #}else{# No #} } else { #-# }#', 0, 1, NULL, NULL, 6, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (31, N'Shift', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (32, N'Shift', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (35, N'Shift', N'StartTime', N'StartTime', NULL, 10, 1, 1, N'time', N'#if(StartTime!= undefined && StartTime!=null) { # #= kendo.toString( toDate(StartTime), "HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(StartTime!= undefined && StartTime!=null) { # #=kendo.toString( toDate(StartTime), ''HH:mm'' )# # } else { '' '' }#"}', NULL, 2, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (36, N'Shift', N'EndTime', N'EndTime', NULL, 10, 1, 1, N'time', N'#if(EndTime!= undefined && EndTime!=null) { # #= kendo.toString( toDate(EndTime), "HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(EndTime!= undefined && EndTime!=null) { # #=kendo.toString( toDate(EndTime), ''HH:mm'' )# # } else { '' '' }#"}', NULL, 3, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (44, N'Shift', N'Manager', N'Manager', NULL, 10, 1, 1, N'dropdown', N'#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"}', NULL, 4, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (52, N'Country', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (53, N'Country', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (54, N'Country', N'Shift', N'Shift', NULL, 10, 1, 1, N'dropdown', N'#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"}', NULL, 4, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (59, N'QAStatus', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (60, N'QAStatus', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (62, N'DelayCause', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (63, N'DelayCause', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (65, N'Hierarchy', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (66, N'Hierarchy', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (67, N'Hierarchy', N'Parent', N'Parent', NULL, 10, 1, 1, N'dropdown', N'#if(Parent != undefined && Parent != null ){# #=Parent.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Parent!= undefined && Parent!=null) { # #=Parent.Name# # } else { '' '' }#"}', NULL, 2, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (68, N'Hierarchy', N'Manager', N'Manager', NULL, 10, 1, 1, N'dropdown', N'#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"}', NULL, 3, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (69, N'Hierarchy', N'IMAPHostName', N'IMAPHostName', NULL, 10, 1, 1, N'textbox', N'#if(IMAPHostName != undefined && IMAPHostName != null ){# #=IMAPHostName# #} else {#-#}#', 0, 1, N'{"title":"#if(IMAPHostName!= undefined && IMAPHostName!=null) { # #=IMAPHostName# # } else { '' '' }#"}', NULL, 4, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (70, N'Hierarchy', N'IMAPPort', N'IMAPPort', NULL, 10, 1, 1, N'textbox', N'#if(IMAPPort != undefined && IMAPPort != null ){# #=IMAPPort# #} else {#-#}#', 0, 1, N'{"title":"#if(IMAPPort!= undefined && IMAPPort!=null) { # #=IMAPPort# # } else { '' '' }#"}', NULL, 5, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (71, N'Hierarchy', N'UserName', N'UserName', NULL, 10, 1, 1, N'textbox', N'#if(UserName != undefined && UserName != null ){# #=UserName# #} else {#-#}#', 0, 1, N'{"title":"#if(UserName!= undefined && UserName!=null) { # #=UserName# # } else { '' '' }#"}', NULL, 6, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (72, N'Hierarchy', N'Password', N'Password', NULL, 10, 1, 1, N'password', N'#if(Password != undefined && Password != null ){# ********** #} else {#-#}#', 0, 1, N'{"title":"#if(Password!= undefined && Password!=null) { # ********** # } else { '' '' }#"}', NULL, 7, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (75, N'User', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (76, N'User', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (77, N'User', N'ExternalUId', N'ExternalUId', NULL, 10, 1, 1, N'textbox', N'#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#', 0, 1, N'{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#"}', NULL, 2, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (78, N'User', N'Password', N'Password', NULL, 10, 0, 0, N'password', NULL, 0, 1, N'{"title":"#if(Password!= undefined && Password!=null) { # ********** # } else { '' '' }#"}', NULL, 3, NULL, 1, 0, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (79, N'User', N'EmailId', N'EmailId', NULL, 10, 1, 1, N'textbox', N'#if(EmailId != undefined && EmailId != null ){# #=EmailId# #} else {#-#}#', 0, 1, N'{"title":"#if(EmailId!= undefined && EmailId!=null) { # EmailId # } else { '' '' }#"}', NULL, 4, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (80, N'User', N'SecondaryEmailId', N'SecondaryEmailId', NULL, 10, 1, 1, N'textbox', N'#if(SecondaryEmailId != undefined && SecondaryEmailId != null ){# #=SecondaryEmailId# #} else {#-#}#', 0, 1, N'{"title":"#if(SecondaryEmailId!= undefined && SecondaryEmailId!=null) { # SecondaryEmailId # } else { '' '' }#"}', NULL, 5, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (81, N'User', N'ContactNumber', N'ContactNumber', NULL, 10, 1, 1, N'textbox', N'#if(ContactNumber != undefined && ContactNumber != null ){# #=ContactNumber# #} else {#-#}#', 0, 1, N'{"title":"#if(ContactNumber!= undefined && ContactNumber!=null) { # ContactNumber # } else { '' '' }#"}', NULL, 6, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (82, N'User', N'EmailSignature', N'EmailSignature', NULL, 10, 1, 1, N'textbox', N'<button class="k-button" onclick="emailSignatureEditor(#=Id#)">ES</button>', 0, 1, N'{"title":"#if(EmailSignature!= undefined && EmailSignature!=null) { # In HTML # } else { '' '' }#"}', NULL, 7, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (83, N'User', N'Shift', N'Shift', NULL, 10, 1, 1, N'dropdown', N'#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"}', NULL, 8, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (84, N'User', N'Manager', N'Manager', NULL, 10, 1, 1, N'dropdown', N'#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Manager != undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"}', NULL, 9, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (85, N'User', N'OOOFrom', N'OOOFrom', NULL, 10, 1, 1, N'datetime', N'#if(OOOFrom!= undefined &&OOOFrom!=null) { # #= kendo.toString( toDate(OOOFrom), "dd-MM-yyyy HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(OOOFrom!= undefined && OOOFrom!=null) { # #=kendo.toString( toDate(OOOFrom), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 10, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (86, N'User', N'OOOTo', N'OOOTo', NULL, 10, 1, 1, N'datetime', N'#if(OOOTo!= undefined && OOOTo!=null) { # #= kendo.toString( toDate(OOOTo), "dd-MM-yyyy HH:mm" ) # # } else { #-# }#', 0, 1, N'{"title":"#if(OOOTo!= undefined && OOOTo!=null) { # #=kendo.toString( toDate(OOOTo), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"}', NULL, 11, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (87, N'User', N'Hierarchy', N'Hierarchy', NULL, 10, 1, 1, N'dropdown', N'#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#"}', NULL, 12, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (88, N'User', N'Country', N'Country', NULL, 10, 1, 1, N'dropdown', N'#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"}', NULL, 13, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (89, N'User', N'WorkItemGridColumnState', N'WorkItemGridColumnState', NULL, 10, 1, 1, N'textbox', N'#if(WorkItemGridColumnState != undefined && WorkItemGridColumnState != null ){# <button class="k-button" onclick="clearSavedPreferences(#=Id#)">Clear</button> #} else {#-#}#', 0, 1, N'{"title":"#if(WorkItemGridColumnState!= undefined && WorkItemGridColumnState!=null) { # In JSON # } else { '' '' }#"}', NULL, 14, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (91, N'WorkType', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (92, N'WorkType', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (94, N'Status', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (95, N'Status', N'Name', N'Name', NULL, 10, 1, 1, N'textbox', N'#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#', 0, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, 1, NULL, 1, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (96, N'Hierarchy', N'SMTPHostName', N'SMTPHostName', NULL, 10, 1, 1, N'textbox', N'#if(SMTPHostName != undefined && SMTPHostName != null ){# #=SMTPHostName# #} else {#-#}#', 0, 1, N'{"title":"#if(SMTPHostName!= undefined && SMTPHostName!=null) { # #=SMTPHostName# # } else { '' '' }#"}', NULL, 4, NULL, 0, 1, NULL, NULL)
INSERT [dbo].[Column] ([Id], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (97, N'Hierarchy', N'SMTPPort', N'SMTPPort', NULL, 10, 1, 1, N'textbox', N'#if(SMTPPort != undefined && SMTPPort != null ){# #=SMTPPort# #} else {#-#}#', 0, 1, N'{"title":"#if(SMTPPort!= undefined && SMTPPort!=null) { # #=SMTPPort# # } else { '' '' }#"}', NULL, 5, NULL, 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Column] OFF
/****** Object:  Table [dbo].[Attachment]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExternalUId] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Size] [nvarchar](255) NULL,
	[FileType] [nvarchar](255) NULL,
	[EtoMail_id] [int] NULL,
	[FileSize] [nvarchar](255) NULL,
	[FileURL] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attachment] ON
INSERT [dbo].[Attachment] ([Id], [ExternalUId], [Name], [Size], [FileType], [EtoMail_id], [FileSize], [FileURL]) VALUES (2, NULL, N'Doc', N'5', N'.doc', 26, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Attachment] OFF
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EtoUserId] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (1, 0, N'admin@nieto.in', 0, N'AFdmqHcVuOSm1FfIYMg2Mvk9ZcQ+2kawNyJ6Q0SQv0pdgqqpKgOBAwtDk3jPmgDo7A==', N'953efd73-945e-4623-8751-31796171a72d', NULL, 0, 0, NULL, 0, 0, N'admin@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (6, 11, N'amit.p@nieto.in', 0, N'ALFgAy+53cQmWIs+hcoKZw5M1Fze4Xi7UtWVzk9Kkm7Rxm1YeO2Zp1VjCtYy2FoYPQ==', N'94fbda81-32f5-4d3e-8fa1-890e278f0473', NULL, 0, 0, NULL, 1, 0, N'amit.p@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (7, 12, N'amit.s@nieto.in', 0, N'ADsdEkCG/v8lqiQvx9rz0wr/2i29q1wLe5QSOLm8zf771ZQZb/6S8BYjwdDJGPfEtQ==', N'47b15965-87b9-4cca-b6eb-698eb287ce95', NULL, 0, 0, NULL, 1, 0, N'amit.s@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (8, 13, N'anirudh.m@nieto.in', 0, N'ABS+kC2mBfhYwlX/4Rr4s5Jr5H156hvkmY0TvxaATFJChayXG3oQstSCBIysVrfUUA==', N'7d31f45b-8d10-4650-b165-832b0f3927b5', NULL, 0, 0, NULL, 1, 0, N'anirudh.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (9, 14, N'badresh.m@nieto.in', 0, N'AK6C9nCUp2sAaV/v3O7jrm+xuFI3hwUMrZxDs3eFzziL6hzW5eNoUpHKC3lY2N/ETg==', N'63465874-ce31-4dbb-8368-1536ec686764', NULL, 0, 0, NULL, 1, 0, N'badresh.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (10, 15, N'deneis.j@nieto.in', 0, N'AA/Wv7KdbcToGffU2+rQrRR8aGYSaqjVuIhTqnpk7tIVCMz8m0DUvhwPLMqe9gKyCA==', N'78bb67b8-6dc0-4859-b7e5-5ddcd55305d1', NULL, 0, 0, NULL, 1, 0, N'deneis.j@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (11, 16, N'neeraj.m@nieto.in', 0, N'AHpZ3qP0C86rpnP4uYOzYdiLDcPkvcgtqpvmu54V/ZBN62B8volLRYn2tk+yfYU9uw==', N'57b5357c-31d1-4da2-8fad-6be3df1ea78d', NULL, 0, 0, NULL, 1, 0, N'neeraj.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (12, 17, N'samiksha.m@nieto.in', 0, N'AEM4RaY0KUWgp4weDJg8AUvPTsS9u5GZp9rNozgZIE9/e6eyVrVl2B19z7wbIAwSwQ==', N'ea472e4e-04a1-4d18-96b9-605d709316a9', NULL, 0, 0, NULL, 1, 0, N'samiksha.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (13, 18, N'sathyasree.m@nieto.in', 0, N'AHOsLbaCOwdf+0orNFTL87UR4lU4rLXxSuNRPCkN5CcxYEtOJtYZDyPnDx90FhnOnQ==', N'dd17a548-00c5-4c9e-b587-c04bac516f88', NULL, 0, 0, NULL, 1, 0, N'sathyasree.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (14, 19, N'stanley.n@nieto.in', 0, N'ANOB8Il3HzQtXXMo9WRYFIHMsryoOcyMpRxVz9UQzArwvJEfngvfT5t8sIuAEi2h8Q==', N'7d4f48f3-f2ca-4cfc-9a34-ab685d61f9b1', NULL, 0, 0, NULL, 1, 0, N'stanley.n@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (15, 20, N'swetank.k@nieto.in', 0, N'AK/BTZYrwtVCTNzFT7x1jAB2iGT5kLImbu2c4G3AbGXPuAYO2+mdi1EimlJKFhVHiw==', N'c5c0b9f2-2aa8-43cb-b3fd-8e439fc45fc6', NULL, 0, 0, NULL, 1, 0, N'swetank.k@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (16, 21, N'vaibhav.m@nieto.in', 0, N'AEdifL6RAC4w4d/oAV5PfBTWUnbWylM2KDCkk4kZMqQKt3U42LZM8WJ5nMY38syjzw==', N'a65b900a-3f72-4e10-a26e-d7d302b9624e', NULL, 0, 0, NULL, 1, 0, N'vaibhav.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (17, 22, N'vinitt.j@nieto.in', 0, N'AGh23KSXmN67E6vA9jeb8wP+O9DaoC7/nDuko/SZdaL9oDj2iLcC4MXKk8Lehyl8bA==', N'b13d56c2-91fd-41df-8129-3d24da952161', NULL, 0, 0, NULL, 1, 0, N'vinitt.j@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (18, 23, N'ankush.m@nieto.in', 0, N'AOb2Xdd+nvqOfbuPgYJrUzlK2bhxzGXarPhDSd1tCSZVLrSvcVFd9QL2WTjetGqBYw==', N'be3fbd7d-0a28-4bec-9d9d-f85e0eca8de9', NULL, 0, 0, NULL, 1, 0, N'ankush.m@nieto.in')
INSERT [dbo].[AspNetUsers] ([Id], [EtoUserId], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (19, 24, N'accenture@nieto.in', 0, N'ALiJkgD2YJIdGXAJpz8xF2ZL9+48P01rKaNUZWqV0zfPjxtWXlvRZGdiglmAHWBBow==', N'fa1e4eda-7c56-4587-993d-d933cb560db2', NULL, 0, 0, NULL, 1, 0, N'accenture@nieto.in')
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
/****** Object:  Table [dbo].[Clients]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[Id] [nvarchar](128) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ApplicationType] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[RefreshTokenLifeTime] [int] NOT NULL,
	[AllowedOrigin] [nvarchar](100) NULL,
 CONSTRAINT [PK_dbo.Clients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clients] ([Id], [Secret], [Name], [ApplicationType], [Active], [RefreshTokenLifeTime], [AllowedOrigin]) VALUES (N'consoleApp', N'lCXDroz4HhR1EIx8qaz3C13z/quTXBkQ3Q5hj7Qx3aA=', N'Console Application', 1, 1, 14400, N'*')
INSERT [dbo].[Clients] ([Id], [Secret], [Name], [ApplicationType], [Active], [RefreshTokenLifeTime], [AllowedOrigin]) VALUES (N'dgxftApp', N'5YV7M1r981yoGhELyB84aC+KiYksxZf1OY3++C1CtRM=', N'Atuthentication application', 0, 1, 7200, N'http://www.degenxsoft.com')
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (2, N'HOD')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (1, N'OrganizationAdmin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (3, N'Resource')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (4, N'SystemAdmin')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201607252322254_InitialCreate', N'EtoWeb.Migrations.Configuration', 0x1F8B0800000000000400ED5DDB6EE4B8117D0F907F10FA2909BCDD6D0F269818ED5D78DB76E2C4374C7B26791BB025765B1989D24A94C746902FCB433E29BF1052575ED5A4A4BE7831586031CDCB61B158C52A96AA66FEF79FFFCE7E7A0903E71926A91FA1B3D1F1783A72207223CF47EBB35186573F7C18FDF4E36F7F33BBF4C217E77335EE1D1D4766A2F46CF484717C3A99A4EE130C413A0E7D3789D26885C76E144E80174D4EA6D33F4D8E8F2790408C0896E3CC3E6608FB21CC7F909FF308B930C619086E230F0669D94E7A1639AA73074298C6C08567A34B1CFD1D2EC7B79FE7E362F0C8390F7C400859C060357200421106989079FA29850B9C4468BD884903081E5F6348C6AD4090C292FCD366B8E94EA627742793666205E566298E424BC0E377256B26E2F44E0C1ED5AC23CCBB244CC6AF74D73903CF46F3C087088F1C71A9D37990D0610D7773CE8E8BF1474ED17A549F3F1113FADF9133CF029C25F00CC10C272038721EB265E0BB7F83AF8FD15788CE5016042C498428D2C73590A687248A61825F3FC25549E8B5377226FCBC8938B19EC6CC2936410E9D88EFC8B9052F3710ADF11311EC930F23E7CA7F815ED5524AC127E4136927937092919F778460B00C60DD3F695D7301DD04E29675C91FB7B12EFD7FDB6EA7D36DAC7A1EC7E4707389A14BD70410BD1B0B7DA93DB88BFDE71AF3E7280A2040D628448412983EE5D277E3AFE0A3DF30EA1AE17727F6740541F40D7AF789BFF6D1003C67579B4D1A156D555C765BE6EACBCEFAAEC47A25CE96FF846E9B16BFDF8A3A15B76BEB8EB7B3F0759A66D0FB84DD6AE50B804B4DB144BA7C897D22624340919F989C02F41E7DF7EBF6EF5473D523179189CAD5FEC898CE7873EAA6BB1C992D2F7094C03F43041372C6DE03C018268862C09C673D6DD6C9FB3F0E22EB77E0D95FE7040BEB136F302166E9230CF2DEF4C98F4BDB450FEC4BD97D954421FD5D1C7CD1FA651165894B898FA4AE4790ACA9B476922D0A612F5FD5AC3DC8185D5A9633E5504A611791AC96E863B3ABB5CD318C8F8CF17328A57627274CFE7E49C80605474308C06508FC6080CBC66015F2765DF94908BDBEAEEB0348D36F51E2FD05A44F0358BF8D0F972C21E7B1C0208CB7BEDAC35384E05D162EA9C2EC6EADC18EE6F15B74055C22D99788CEEA8D7713B95FA30C5F228FBA4B4AEFC910601072CE5D17A6E9151166E8CDA30CE17ECA471578DFC67E1E003F545B7BE112FE520D6D2CBF7A84E4056886A93C8236526F22F2B03423B51AAA27B518B191D472982DA914CC8CD272A49ED07CC0463A8B51BD7DACFC64EC9DAC7CDA7723BD15172DE72D1745DA9641C857FA0C826CE8A5AC4430D7387B11CCA7ED4104F37549F3B3EF519B6DE0EF578309BCD178F55362B3A00B94ED3A58C46D73D78BDB2B9E5E46B350FDAA29A3B7D7E95500D6CDD712D398A388D4577609C708B78357C26176D73C9B6E2175F7CABDFC153C83859BF831B118B9DA9F8DA61263B9197780869E736F31BF014150CF3C96D959308E6D3C4FD3C8F5F33D3386B28C28F0EB1297CFD187179A707A1115B8251CF2293FC909525A44ADBA47173080183A34784E3F38CD41EA024F962342B6674048656819429A10054FCC1FA435886AC3A4601F61654A8ED44758BE077CE4FA3108B45C1066181A48BAC71A5BECB9803144F464B53B3659541DD0A00BD7F802D3377164366124A75DA0344EABEE4C3779B0CAEF36453C632732B7C17516E4AF74DFB62280ED9CDA8130B6B3C284006D506E1F82593E514C0F5E7CAF1C9A600A0F2541304BA76E2782C9736A0F82C9B3E2CD0966F122353D77E1797A6862C9BF8B7767AE5BD9B40799E4F87060225938DE640E26336A5F93D9C1C59276C21755420EA1B374B0D3F2AD208A06055F40CC7D4B267E7BE3EE971251E5FC4CDA01D85C01150C9F81B009AC88FEC820B9646E985C89B00AA0116F03101580A4BE0638558050494DE99B18C054C13B254C6949041846B278E6565F2B9901F2B74C51C45BDF1E35C5F5E9492AD2FA6460E63307285E71FC860C36AB0BD6CA1B37F1906D7C646143ED0CD9E0CF0A58D52606E74E25629BB9A372D36C1CB55EDC119C2A01ABDAC4E0DC296572337314AE8285B3D08B35BC61EFA95455F0A7B64175DF6C5224D6960DB389260377760BE2D8476B2623B76C7116453AEEFC87857DA26A58604CDC5491AF5A535BAF84A304ACA1D04B9626945EF9498A2F00064B40A354732F9486292DAEE6BAAE96E48DAA7C7CD50D5E8DA77FAE3F600B61DCD200CBDE4939F98A6C2EA42E4E1E95678E5C37D1A169D1200089E213C03C0AB210E97D2DFDEC2A959545A8DACC518AEF7E2C46D1628E202599B26052A7056E995FCAC1956DE628EAFC5216533DC2824E3EDF942397EF9231671341A6242F57125DE90DC26B82919EF0BE633F6DE1FC4C7B9D699FBE25CDA9F24739D5A91ACD719A7C5016A869354762123CB96D35CDE6586C8A270BC6B69BA349599E2CA4D4793812AEF108AC249BBE5B3A48B472DA7624D9FCF6DED339345E50BFB3A8DF91F6E7A19FAAE36A157360F9AA8B43E851AACF0F9CADD17C92D8EBF9F43D1BF1896E7F441B11B6A33D4CEE22775136CD165845022387533459623039701218D367718373698ADCF5CDF558799E6C2EA2E080B25D1654B219871C916C47273C0D47D523CC5790730C5974B9D71C59916DC8422BBA3B602B6816FB6C7C7529219177DBA56E73EC263B51BC8F0FD0D6698358B6C6AE085376B3769AB9DBB9448731964C7619EF4BD7CD965865FE980456B61F94D068637BB6425304A5BB098D66AEFE1EE1B2BAF86BA435154D8FC9A56A09EF0C7DAA9A1ECF4E34B72A0052644F1C52AF5E47F88448DEAC8CAA6D2EB897C26CC5909153B19198E9D714C3704C078C17BF04D527A76AC02D40FE0AA6B848EB1A9D4CA71F84A2FDC329A09FA4A91728A29272153D7F5A3B48EC45CF20719F4022671AF6AA5AAF607F178297DFF7AA44571348EBA2872934F7A950F52A2B5FFAF6086D25E59D285215949BB06EA8FAF1372CB87CA5B612F7BDBDB88985D843E14A75D61E71B0F13075D69DA13475D636B7805DEDF4CEC52D57CA8D250E83DC7352DEC635F2E0CBD9E85FF9ACD3FC231FFD53DE7CE45CA79F90FF4B463A1E892E3BFF966BA286E1BB3A4675A025BEBEF26FA4111879FD8F2FC5AC23E73E212EC5A933A5ECEB55176CBA7031CB62E1CEC5C4BF0E55916A78BB5849AE825779210BFAD2BD60B78B53A02AD6D55EA19D0B727B212A8A6E87C21B8485BAA2DA2E58DA825A959934D9ACBAC0B60B69DAE2DA2E5A2196D69A5BA26AE61E2C91227EF466EFB6BD992EA95EB2972ECB359116701DEA1E3B1CFE1BAB401CEC8DA328301C0C7B47D2AB1390CE7572FB2A8D6BD28D775B11B78B54FA964FE0BFAADAB703A8DE60F2C4F757D9B62B99D27D693AF0F220BBBAB50311AAB26A607F5569BB122ADD97A803172AAB9AB30391A95DDBBB3D4994B1E9DB7BC5989CE62E1E9FAA14ACA512ACF87E47DEC6CB881C74E1C5D5F5631665621BABC4540B097566068564DA3A3215FC791ADF41AC2E94D0159AB5D699E917D15764880B49CABCB92CAD7D59B3BD95CE455BD95AFB329A3A256D715B7B6D5BFB5A9AAA9F6D56C049456FAD953AA2B4F0C9A06FA9D28DDBC18682489D1FAB4C117A4B056DBD98C049BB90F2F276EAD67AB1600855B0A84F93B355889D65FE110962E3537FDD40D07F52024197B3B0F5986BB48A2A432F50540D110227B710038F98DFF304FB2BE062D24DA3BAF95FFB54FE4D4197E1127AD7E83EC37186C99661B80CB838147518DAD6CF8BF0789A67F731FD950EB10542A64FA3E1F7E8E7CC0FBC9AEE2B45FC4603413D9132964ACF12D398EAFAB546BA8B902150C9BEDA817A84611C10B0F41E2D00CDD6B0A78D88DF0D5C03F7B509CCE940361F04CFF6D9850FD60908D312A3994F7E1219F6C2971FFF0FC049414D4B650000, N'6.1.3-40302')
/****** Object:  Table [dbo].[Log]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EventDateTime] [datetime] NULL,
	[EventLevel] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[MachineName] [nvarchar](max) NULL,
	[EventMessage] [nvarchar](max) NULL,
	[ErrorSource] [nvarchar](max) NULL,
	[ErrorClass] [nvarchar](max) NULL,
	[ErrorMethod] [nvarchar](max) NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	[InnerErrorMessage] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Log] ON
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (1, CAST(0x0000A672017B86FC AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (2, CAST(0x0000A672017CCB98 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (3, CAST(0x0000A672017CD750 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'Error occurred', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (4, CAST(0x0000A672017D63F0 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (5, CAST(0x0000A672017DA590 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (6, CAST(0x0000A672018146DC AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (7, CAST(0x0000A67201853904 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (8, CAST(0x0000A6720186E844 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (9, CAST(0x0000A6730189CF3C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (10, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (11, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (12, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (13, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (14, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (15, CAST(0x0000A673018A32D8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (16, CAST(0x0000A673018A3404 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (17, CAST(0x0000A67400002B5C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (18, CAST(0x0000A6740000DFD4 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (19, CAST(0x0000A674000286E0 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (20, CAST(0x0000A6740003E9F4 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (21, CAST(0x0000A67400049764 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (22, CAST(0x0000A67400078690 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (23, CAST(0x0000A67400085728 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (24, CAST(0x0000A6740008BF74 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (25, CAST(0x0000A674000A5AC8 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (26, CAST(0x0000A674000BC034 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (27, CAST(0x0000A67500F2826C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (28, CAST(0x0000A67500F28BCC AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'NHibernate.QueryException: could not resolve property: Supervisor of: DataModels.User [select h from Hierarchy h where h.Manager.Supervisor = 1 or h.Manager.Id = 1 or h.Id = 4]
   at NHibernate.Persister.Entity.AbstractPropertyMapping.ToType(String propertyName)
   at NHibernate.Persister.Entity.AbstractEntityPersister.ToType(String propertyName)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElementType.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElement.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.GetDataType()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.PrepareLhs()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias, IASTNode parent)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.Resolve(IASTNode node)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.expr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.exprOrSubquery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.comparisonExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.whereClause()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.unionedQuery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.query()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.selectStatement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.statement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlTranslator.Translate()
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Analyze(String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.DoCompile(IDictionary`2 replacements, Boolean shallow, String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Compile(IDictionary`2 replacements, Boolean shallow)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IASTNode ast, String queryIdentifier, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan.CreateTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan..ctor(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryPlanCache.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters)
   at NHibernate.Impl.AbstractSessionImpl.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow)
   at NHibernate.Impl.AbstractSessionImpl.CreateQuery(String queryString)
   at BusinessLogic.HierarchyRepository.GetHierarchyForTreeView(User User, Int32 ParentId) in G:\Accenture\Eto\BusinessLogic\HierarchyRepositrory.cs:line 37
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (29, CAST(0x0000A67500F2C40C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (30, CAST(0x0000A67500F2C790 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'NHibernate.QueryException: could not resolve property: Supervisor of: DataModels.User [select h from Hierarchy h where h.Manager.Supervisor = 1 or h.Manager.Id = 1 or h.Id = 4]
   at NHibernate.Persister.Entity.AbstractPropertyMapping.ToType(String propertyName)
   at NHibernate.Persister.Entity.AbstractEntityPersister.ToType(String propertyName)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElementType.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElement.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.GetDataType()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.PrepareLhs()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias, IASTNode parent)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.Resolve(IASTNode node)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.expr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.exprOrSubquery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.comparisonExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.whereClause()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.unionedQuery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.query()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.selectStatement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.statement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlTranslator.Translate()
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Analyze(String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.DoCompile(IDictionary`2 replacements, Boolean shallow, String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Compile(IDictionary`2 replacements, Boolean shallow)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IASTNode ast, String queryIdentifier, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan.CreateTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan..ctor(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryPlanCache.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters)
   at NHibernate.Impl.AbstractSessionImpl.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow)
   at NHibernate.Impl.AbstractSessionImpl.CreateQuery(String queryString)
   at BusinessLogic.HierarchyRepository.GetHierarchyForTreeView(User User, Int32 ParentId) in G:\Accenture\Eto\BusinessLogic\HierarchyRepositrory.cs:line 37
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (31, CAST(0x0000A67500F70260 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (32, CAST(0x0000A67500F70BC0 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'NHibernate.QueryException: could not resolve property: Supervisor of: DataModels.User [select h from Hierarchy h where h.Manager.Supervisor = 1 or h.Manager.Id = 1 or h.Id = 4]
   at NHibernate.Persister.Entity.AbstractPropertyMapping.ToType(String propertyName)
   at NHibernate.Persister.Entity.AbstractEntityPersister.ToType(String propertyName)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElementType.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromElement.GetPropertyType(String propertyName, String propertyPath)
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.GetDataType()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.PrepareLhs()
   at NHibernate.Hql.Ast.ANTLR.Tree.DotNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias, IASTNode parent)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin, String classAlias)
   at NHibernate.Hql.Ast.ANTLR.Tree.FromReferenceNode.Resolve(Boolean generateJoin, Boolean implicitJoin)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.Resolve(IASTNode node)
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.expr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.exprOrSubquery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.comparisonExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.logicalExpr()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.whereClause()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.unionedQuery()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.query()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.selectStatement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlWalker.statement()
   at NHibernate.Hql.Ast.ANTLR.HqlSqlTranslator.Translate()
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Analyze(String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.DoCompile(IDictionary`2 replacements, Boolean shallow, String collectionRole)
   at NHibernate.Hql.Ast.ANTLR.QueryTranslatorImpl.Compile(IDictionary`2 replacements, Boolean shallow)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IASTNode ast, String queryIdentifier, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Hql.Ast.ANTLR.ASTQueryTranslatorFactory.CreateQueryTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 filters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan.CreateTranslators(IQueryExpression queryExpression, String collectionRole, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryExpressionPlan..ctor(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters, ISessionFactoryImplementor factory)
   at NHibernate.Engine.Query.QueryPlanCache.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow, IDictionary`2 enabledFilters)
   at NHibernate.Impl.AbstractSessionImpl.GetHQLQueryPlan(IQueryExpression queryExpression, Boolean shallow)
   at NHibernate.Impl.AbstractSessionImpl.CreateQuery(String queryString)
   at BusinessLogic.HierarchyRepository.GetHierarchyForTreeView(User User, Int32 ParentId) in G:\Accenture\Eto\BusinessLogic\HierarchyRepositrory.cs:line 37
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (33, CAST(0x0000A67500F794DC AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (34, CAST(0x0000A67601095C6C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (35, CAST(0x0000A6760114DE84 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (36, CAST(0x0000A67601169274 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (37, CAST(0x0000A6760117AA88 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (38, CAST(0x0000A67700CCE3F4 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (39, CAST(0x0000A67700CE4258 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (40, CAST(0x0000A67700D2DE6C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (41, CAST(0x0000A67700DCE27C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (42, CAST(0x0000A67700E0955C AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (43, CAST(0x0000A67700FDE738 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (44, CAST(0x0000A67701025B74 AS DateTime), N'Error', N'admin@accenture.com', N'SCYLLA', N'System.ArgumentNullException: Value cannot be null.
Parameter name: hostname
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (45, CAST(0x0000A67D011E1328 AS DateTime), N'Error', N'admin@eto.com', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (46, CAST(0x0000A67D013999A4 AS DateTime), N'Error', N'admin@eto.com', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (47, CAST(0x0000A67E012F7E24 AS DateTime), N'Error', N'admin@eto.com', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (48, CAST(0x0000A67E015E68B0 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (49, CAST(0x0000A67E015FD2CC AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (50, CAST(0x0000A67E01602600 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (51, CAST(0x0000A67E0161B7F4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (52, CAST(0x0000A67E0162F90C AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (53, CAST(0x0000A67E01639038 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (54, CAST(0x0000A67E0164F478 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (55, CAST(0x0000A67E01661718 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (56, CAST(0x0000A67E0166497C AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (57, CAST(0x0000A67E0166B8D0 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (58, CAST(0x0000A67E0166E1D4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (59, CAST(0x0000A67E01717734 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (60, CAST(0x0000A67E01718EA4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (61, CAST(0x0000A67E0175B45C AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (62, CAST(0x0000A67E0175E918 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (63, CAST(0x0000A67E017601B4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (64, CAST(0x0000A67E0177A668 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (65, CAST(0x0000A67E0178B2C4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (66, CAST(0x0000A67F000CD398 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (67, CAST(0x0000A67F000D70A0 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (68, CAST(0x0000A67F0011790C AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 62', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (69, CAST(0x0000A67F0011CC40 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (70, CAST(0x0000A67F00122EB0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.IO.IOException: The handshake failed due to an unexpected packet format.
   at System.Net.Security.SslState.StartReadFrame(Byte[] buffer, Int32 readBytes, AsyncProtocolRequest asyncRequest)
   at System.Net.Security.SslState.StartReceiveBlob(Byte[] buffer, AsyncProtocolRequest asyncRequest)
   at System.Net.Security.SslState.CheckCompletionBeforeNextReceive(ProtocolToken message, AsyncProtocolRequest asyncRequest)
   at System.Net.Security.SslState.StartSendBlob(Byte[] incoming, Int32 count, AsyncProtocolRequest asyncRequest)
   at System.Net.Security.SslState.ForceAuthentication(Boolean receiveFirst, Byte[] buffer, AsyncProtocolRequest asyncRequest)
   at System.Net.Security.SslState.ProcessAuthentication(LazyAsyncResult lazyResult)
   at System.Net.Security.SslStream.AuthenticateAsClient(String targetHost, X509CertificateCollection clientCertificates, SslProtocols enabledSslProtocols, Boolean checkCertificateRevocation)
   at System.Net.Security.SslStream.AuthenticateAsClient(String targetHost)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (71, CAST(0x0000A681016AF850 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (72, CAST(0x0000A681016BB3D0 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (73, CAST(0x0000A681016C0BB4 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (74, CAST(0x0000A681016D29A4 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (75, CAST(0x0000A681016D5C08 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<SendResponseContentAsync>d__20.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (76, CAST(0x0000A681016D68EC AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (77, CAST(0x0000A681016D6EC8 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (78, CAST(0x0000A681016F8C30 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (79, CAST(0x0000A681017F5728 AS DateTime), N'Error', N'anirudh.m@nieto.in', N'SCYLLA', N'System.FormatException: Input string was not in a correct format.
   at System.Number.StringToNumber(String str, NumberStyles options, NumberBuffer& number, NumberFormatInfo info, Boolean parseDecimal)
   at System.Number.ParseInt32(String s, NumberStyles style, NumberFormatInfo info)
   at System.Convert.ToInt32(String value)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 67', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (80, CAST(0x0000A681018B1180 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (81, CAST(0x0000A6820005841C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (82, CAST(0x0000A6820005D4F8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (83, CAST(0x0000A68200067458 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (84, CAST(0x0000A68200071610 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (85, CAST(0x0000A6820007C254 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (86, CAST(0x0000A6830178C908 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Net.Sockets.SocketException (0x80004005): No such host is known
   at System.Net.Sockets.TcpClient..ctor(String hostname, Int32 port)
   at S22.Imap.ImapClient.Connect(String hostname, Int32 port, Boolean ssl, RemoteCertificateValidationCallback validate)
   at S22.Imap.ImapClient..ctor(String hostname, Int32 port, String username, String password, AuthMethod method, Boolean ssl, RemoteCertificateValidationCallback validate)
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 75', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (87, CAST(0x0000A68501445A60 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (88, CAST(0x0000A6850144D1E8 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (89, CAST(0x0000A68501455FB4 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (90, CAST(0x0000A6850145D3B8 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (91, CAST(0x0000A68501463628 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (92, CAST(0x0000A68501466634 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (93, CAST(0x0000A685014C4CC0 AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (94, CAST(0x0000A685014C736C AS DateTime), N'Error', N'admin@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.EtoAuthenticatedController.SyncMail(User LoggedInUser) in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 68', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (95, CAST(0x0000A685014CA5D0 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (96, CAST(0x0000A68501556418 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): Request is not available in this context
   at System.Web.HttpApplication.get_Request()
   at EtoWeb.WebApiApplication.Application_Start() in G:\Accenture\Eto\EtoWeb\Global.asax.cs:line 34', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (97, CAST(0x0000A68601881318 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<SendResponseContentAsync>d__20.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (98, CAST(0x0000A6860188DA50 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (99, CAST(0x0000A687017A60D8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Extensions.IdentityExtensions.GetUserInfoDataModels(IIdentity identity) in G:\Accenture\Eto\EtoWeb\Extensions\IdentityExtensions.cs:line 42
   at EtoWeb.Controllers.EtoAuthenticatedController.Index() in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 29
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1d(IAsyncResult asyncResult, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecute>b__15(IAsyncResult asyncResult, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__5(IAsyncResult asyncResult, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (100, CAST(0x0000A687017A60D8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Extensions.IdentityExtensions.GetUserInfoDataModels(IIdentity identity) in G:\Accenture\Eto\EtoWeb\Extensions\IdentityExtensions.cs:line 42
   at EtoWeb.Controllers.EtoAuthenticatedController.Index() in G:\Accenture\Eto\EtoWeb\Controllers\EtoAuthenticatedController.cs:line 29
   at lambda_method(Closure , ControllerBase , Object[] )
   at System.Web.Mvc.ActionMethodDispatcher.Execute(ControllerBase controller, Object[] parameters)
   at System.Web.Mvc.ReflectedActionDescriptor.Execute(ControllerContext controllerContext, IDictionary`2 parameters)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionMethod(ControllerContext controllerContext, ActionDescriptor actionDescriptor, IDictionary`2 parameters)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.ActionInvocation.InvokeSynchronousActionMethod()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<BeginInvokeSynchronousActionMethod>b__39(IAsyncResult asyncResult, ActionInvocation innerInvokeState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`2.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethod(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3d()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.AsyncInvocationWithFilters.<>c__DisplayClass46.<InvokeActionMethodFilterAsynchronouslyRecursive>b__3f()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass33.<BeginInvokeActionMethodWithFilters>b__32(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeActionMethodWithFilters(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1d(IAsyncResult asyncResult, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecute>b__15(IAsyncResult asyncResult, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__5(IAsyncResult asyncResult, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (101, CAST(0x0000A687017A7BCC AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (102, CAST(0x0000A687017ACA50 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (103, CAST(0x0000A68A00CCC324 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (104, CAST(0x0000A68A00CDF9B0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (105, CAST(0x0000A68A00CF060C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (106, CAST(0x0000A68A00D13E68 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (107, CAST(0x0000A68A0106BCF0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (108, CAST(0x0000A68A010C1DE4 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (109, CAST(0x0000A68A010E3318 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (110, CAST(0x0000A68A0115AB98 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (111, CAST(0x0000A68A0115F698 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (112, CAST(0x0000A68A011ED934 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (113, CAST(0x0000A68A01366A04 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (114, CAST(0x0000A68C014389C8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<BufferResponseContentAsync>d__13.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (115, CAST(0x0000A68C0143B8A8 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (116, CAST(0x0000A68C0143EE90 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (117, CAST(0x0000A68C01454394 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (118, CAST(0x0000A68C0146F2D4 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Hierarchy/GetHierarchyForTreeView'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (119, CAST(0x0000A68C0159A26C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (120, CAST(0x0000A68C0159B07C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<BufferResponseContentAsync>d__13.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (121, CAST(0x0000A68C0159C0E4 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (122, CAST(0x0000A68C0159E9E8 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (123, CAST(0x0000A68C01626564 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (124, CAST(0x0000A68C01627248 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (125, CAST(0x0000A68C01627824 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<BufferResponseContentAsync>d__13.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (126, CAST(0x0000A68C01627E00 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (127, CAST(0x0000A68C01627F2C AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (128, CAST(0x0000A68C01627F2C AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (129, CAST(0x0000A68C0165BA84 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (130, CAST(0x0000A68C0165BBB0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Threading.Tasks.TaskCanceledException: A task was canceled.
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Dispatcher.HttpControllerDispatcher.<SendAsync>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.HttpServer.<SendAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (131, CAST(0x0000A68C0165BF34 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (132, CAST(0x0000A68C0165BF34 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (133, CAST(0x0000A68C0165C060 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (134, CAST(0x0000A68C0165C768 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (135, CAST(0x0000A68C0166E8DC AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/api/values'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (136, CAST(0x0000A68C0167EAAC AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (137, CAST(0x0000A68C01681D10 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (138, CAST(0x0000A68C016836D8 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (139, CAST(0x0000A68C0168BEC8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.OperationCanceledException: The operation was canceled.
   at System.Threading.CancellationToken.ThrowOperationCanceledException()
   at System.Threading.CancellationToken.ThrowIfCancellationRequested()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<BufferResponseContentAsync>d__13.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (140, CAST(0x0000A68C01699E9C AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (141, CAST(0x0000A68C0169B288 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (142, CAST(0x0000A68C0169DCB8 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/token'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (143, CAST(0x0000A68C016A5698 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.InvalidOperationException: A callback parameter was not provided in the request URI.
   at WebApiContrib.Formatting.Jsonp.JsonpMediaTypeFormatter.GetPerRequestFormatterInstance(Type type, HttpRequestMessage request, MediaTypeHeaderValue mediaType) in C:\Users\ryan\Code\WebApiContrib.Formatting.Jsonp\src\WebApiContrib.Formatting.Jsonp\JsonpMediaTypeFormatter.cs:line 107
   at System.Net.Http.Formatting.DefaultContentNegotiator.Negotiate(Type type, HttpRequestMessage request, IEnumerable`1 formatters)
   at System.Web.Http.Results.NegotiatedContentResult`1.Execute(HttpStatusCode statusCode, T content, IContentNegotiator contentNegotiator, HttpRequestMessage request, IEnumerable`1 formatters)
   at System.Net.Http.HttpRequestMessageExtensions.CreateResponse[T](HttpRequestMessage request, HttpStatusCode statusCode, T value, HttpConfiguration configuration)
   at System.Net.Http.HttpRequestMessageExtensions.CreateErrorResponse(HttpRequestMessage request, HttpStatusCode statusCode, Func`2 errorCreator)
   at System.Net.Http.HttpRequestMessageExtensions.CreateErrorResponse(HttpRequestMessage request, HttpStatusCode statusCode, Exception exception)
   at System.Web.Http.ExceptionHandling.DefaultExceptionHandler.Handle(ExceptionHandlerContext context)
   at System.Web.Http.ExceptionHandling.DefaultExceptionHandler.HandleAsync(ExceptionHandlerContext context, CancellationToken cancellationToken)
   at System.Web.Http.ExceptionHandling.LastChanceExceptionHandler.HandleAsync(ExceptionHandlerContext context, CancellationToken cancellationToken)
   at System.Web.Http.ExceptionHandling.ExceptionHandlerExtensions.<HandleAsyncCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.HttpServer.<SendAsync>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at System.Web.Http.Owin.HttpMessageHandlerAdapter.<InvokeCore>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Cors.CorsMiddleware.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Security.Infrastructure.AuthenticationMiddleware`1.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.AspNet.Identity.Owin.IdentityFactoryMiddleware`2.<Invoke>d__0.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContextStage.<RunApp>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.GetResult()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.<DoFinalWork>d__2.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.ExceptionServices.ExceptionDispatchInfo.Throw()
   at Microsoft.Owin.Host.SystemWeb.Infrastructure.ErrorState.Rethrow()
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.StageAsyncResult.End(IAsyncResult ar)
   at Microsoft.Owin.Host.SystemWeb.IntegratedPipeline.IntegratedPipelineContext.EndFinalWork(IAsyncResult ar)
   at System.Web.HttpApplication.AsyncEventExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (144, CAST(0x0000A68C016A9A90 AS DateTime), N'Error', N'', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/MobileBrowser/Index'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (145, CAST(0x0000A68C016AB584 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (146, CAST(0x0000A68C016BA5C0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (147, CAST(0x0000A68C016CB5A0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (148, CAST(0x0000A68D01746FC0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at System.Collections.Generic.Dictionary`2.Insert(TKey key, TValue value, Boolean add)
   at System.Collections.Generic.Dictionary`2.Add(TKey key, TValue value)
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.OpenSession() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 143
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 63
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.HierarchyController.GetHierarchyForTreeView(Int32 CurrentUserId, Nullable`1 id) in G:\Accenture\Eto\EtoWeb\Controllers\HierarchyController.cs:line 30', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (149, CAST(0x0000A68D01771D4C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 65
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Controllers.WorkItemController.LoadWorkItemGridColumnState(Int32 CurrentLoggedInUserId) in G:\Accenture\Eto\EtoWeb\Controllers\WorkItemController.cs:line 125', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (150, CAST(0x0000A69100972F84 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.get_Session() in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 65
   at NhibernateSessionManagement.DataBase.DataManager.FNHRepository.RetrieveById[T](Int32 id) in G:\Accenture\Eto\NhibernateSessionManagement\NhibernateSessionManagement\DataBase\DataManager\FNHRepository.cs:line 267
   at EtoWeb.Extensions.IdentityExtensions.GetUserSignature(IIdentity identity) in G:\Accenture\Eto\EtoWeb\Extensions\IdentityExtensions.cs:line 60
   at ASP._Page_Views_EtoAuthenticated__email_cshtml.Execute() in G:\Accenture\Eto\EtoWeb\Views\EtoAuthenticated\_email.cshtml:line 456
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.HtmlHelper.RenderPartialInternal(String partialViewName, ViewDataDictionary viewData, Object model, TextWriter writer, ViewEngineCollection viewEngineCollection)
   at System.Web.Mvc.Html.PartialExtensions.Partial(HtmlHelper htmlHelper, String partialViewName, Object model, ViewDataDictionary viewData)
   at System.Web.Mvc.Html.PartialExtensions.Partial(HtmlHelper htmlHelper, String partialViewName)
   at ASP._Page_Views_EtoAuthenticated_Index_cshtml.Execute() in G:\Accenture\Eto\EtoWeb\Views\EtoAuthenticated\Index.cshtml:line 296
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy()
   at System.Web.Mvc.WebViewPage.ExecutePageHierarchy()
   at System.Web.WebPages.StartPage.RunPage()
   at System.Web.WebPages.StartPage.ExecutePageHierarchy()
   at System.Web.WebPages.WebPageBase.ExecutePageHierarchy(WebPageContext pageContext, TextWriter writer, WebPageRenderingBase startPage)
   at System.Web.Mvc.RazorView.RenderView(ViewContext viewContext, TextWriter writer, Object instance)
   at System.Web.Mvc.BuildManagerCompiledView.Render(ViewContext viewContext, TextWriter writer)
   at System.Web.Mvc.ViewResultBase.ExecuteResult(ControllerContext context)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResult(ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultFilterRecursive(IList`1 filters, Int32 filterIndex, ResultExecutingContext preContext, ControllerContext controllerContext, ActionResult actionResult)
   at System.Web.Mvc.ControllerActionInvoker.InvokeActionResultWithFilters(ControllerContext controllerContext, IList`1 filters, ActionResult actionResult)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<>c__DisplayClass2b.<BeginInvokeAction>b__1c()
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__1e(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.EndInvokeAction(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1d(IAsyncResult asyncResult, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecuteCore(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.<BeginExecute>b__15(IAsyncResult asyncResult, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Controller.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.EndExecute(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__5(IAsyncResult asyncResult, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallEndDelegate(IAsyncResult asyncResult)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.End()
   at System.Web.Mvc.Async.AsyncResultWrapper.End[TResult](IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.Async.AsyncResultWrapper.End(IAsyncResult asyncResult, Object tag)
   at System.Web.Mvc.MvcHandler.EndProcessRequest(IAsyncResult asyncResult)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.EndProcessRequest(IAsyncResult result)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (151, CAST(0x0000A69101511A0C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Save'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (152, CAST(0x0000A691015118E0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Save'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (153, CAST(0x0000A691015665E8 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (154, CAST(0x0000A69101584E94 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (155, CAST(0x0000A69101584FC0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (156, CAST(0x0000A69101584FC0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (157, CAST(0x0000A69101584FC0 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (158, CAST(0x0000A691015850EC AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.HttpException (0x80004005): The controller for path ''/Remove'' was not found or does not implement IController.
   at System.Web.Mvc.DefaultControllerFactory.GetControllerInstance(RequestContext requestContext, Type controllerType)
   at System.Web.Mvc.DefaultControllerFactory.CreateController(RequestContext requestContext, String controllerName)
   at System.Web.Mvc.MvcHandler.ProcessRequestInit(HttpContextBase httpContext, IController& controller, IControllerFactory& factory)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (159, CAST(0x0000A6910175EC9C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (160, CAST(0x0000A6910175F14C AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (161, CAST(0x0000A6910175F728 AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (162, CAST(0x0000A6910175FAAC AS DateTime), N'Error', N'swetank.k@nieto.in', N'SCYLLA', N'System.Web.Mvc.HttpAntiForgeryException (0x80004005): The provided anti-forgery token was meant for a different claims-based user than the current user.
   at System.Web.Helpers.AntiXsrf.TokenValidator.ValidateTokens(HttpContextBase httpContext, IIdentity identity, AntiForgeryToken sessionToken, AntiForgeryToken fieldToken)
   at System.Web.Helpers.AntiXsrf.AntiForgeryWorker.Validate(HttpContextBase httpContext)
   at System.Web.Helpers.AntiForgery.Validate()
   at System.Web.Mvc.ValidateAntiForgeryTokenAttribute.OnAuthorization(AuthorizationContext filterContext)
   at System.Web.Mvc.ControllerActionInvoker.InvokeAuthorizationFilters(ControllerContext controllerContext, IList`1 filters, ActionDescriptor actionDescriptor)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.<>c__DisplayClass21.<BeginInvokeAction>b__19(AsyncCallback asyncCallback, Object asyncState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResult`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TResult](AsyncCallback callback, Object state, BeginInvokeDelegate beginDelegate, EndInvokeDelegate`1 endDelegate, Object tag, Int32 timeout)
   at System.Web.Mvc.Async.AsyncControllerActionInvoker.BeginInvokeAction(ControllerContext controllerContext, String actionName, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecuteCore>b__1c(AsyncCallback asyncCallback, Object asyncState, ExecuteCoreState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecuteCore(AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.<BeginExecute>b__14(AsyncCallback asyncCallback, Object callbackState, Controller controller)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.Controller.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.Controller.System.Web.Mvc.Async.IAsyncController.BeginExecute(RequestContext requestContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.<BeginProcessRequest>b__4(AsyncCallback asyncCallback, Object asyncState, ProcessRequestState innerState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncVoid`1.CallBeginDelegate(AsyncCallback callback, Object callbackState)
   at System.Web.Mvc.Async.AsyncResultWrapper.WrappedAsyncResultBase`1.Begin(AsyncCallback callback, Object state, Int32 timeout)
   at System.Web.Mvc.Async.AsyncResultWrapper.Begin[TState](AsyncCallback callback, Object callbackState, BeginInvokeDelegate`1 beginDelegate, EndInvokeVoidDelegate`1 endDelegate, TState invokeState, Object tag, Int32 timeout, SynchronizationContext callbackSyncContext)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContextBase httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.BeginProcessRequest(HttpContext httpContext, AsyncCallback callback, Object state)
   at System.Web.Mvc.MvcHandler.System.Web.IHttpAsyncHandler.BeginProcessRequest(HttpContext context, AsyncCallback cb, Object extraData)
   at System.Web.HttpApplication.CallHandlerExecutionStep.System.Web.HttpApplication.IExecutionStep.Execute()
   at System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously)', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (163, CAST(0x0000A69300094D40 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 41', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (164, CAST(0x0000A693000BE230 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.ArgumentException: The parameter ''addresses'' cannot be an empty string.
Parameter name: addresses
   at System.Net.Mail.MailAddressCollection.Add(String addresses)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 47', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (165, CAST(0x0000A693000C8514 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.ArgumentException: The parameter ''address'' cannot be an empty string.
Parameter name: address
   at System.Net.Mail.MailAddress..ctor(String address, String displayName, Encoding displayNameEncoding)
   at System.Net.Mail.MailAddress..ctor(String address, String displayName)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 44', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (166, CAST(0x0000A693000CEE8C AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.ArgumentException: The parameter ''addresses'' cannot be an empty string.
Parameter name: addresses
   at System.Net.Mail.MailAddressCollection.Add(String addresses)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 47', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (167, CAST(0x0000A693014A54D8 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
IList`1 -> IList`1
System.Collections.Generic.IList`1[[DataModels.WorkItem, DataModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.IList`1[[AutoMap.WorkItem, AutoMap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Type Map configuration:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Property:
EtoMails ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Type Map configuration:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Property:
WorkItem ---> AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
NameValuePair -> WorkItem
DataModels.NameValuePair -> AutoMap.WorkItem
   at lambda_method(Closure , NameValuePair , WorkItem , ResolutionContext )
   at AutoMapper.ResolutionContext.Map[TSource,TDestination](TSource source, TDestination destination)
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   at AutoMapper.Mapper.AutoMapper.IMapper.Map[TSource,TDestination](TSource source)
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source)
   at EtoWeb.Hubs.WorkItemGridHub.Read(ReadRequestData data) in G:\Accenture\Eto\EtoWeb\Hubs\WorkItemGridHub.cs:line 100', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (168, CAST(0x0000A693014AB9A0 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
IList`1 -> IList`1
System.Collections.Generic.IList`1[[DataModels.WorkItem, DataModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.IList`1[[AutoMap.WorkItem, AutoMap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Type Map configuration:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Property:
EtoMails ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Type Map configuration:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Property:
WorkItem ---> AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
NameValuePair -> WorkItem
DataModels.NameValuePair -> AutoMap.WorkItem
   at lambda_method(Closure , NameValuePair , WorkItem , ResolutionContext )
   at AutoMapper.ResolutionContext.Map[TSource,TDestination](TSource source, TDestination destination)
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   at AutoMapper.Mapper.AutoMapper.IMapper.Map[TSource,TDestination](TSource source)
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source)
   at EtoWeb.Hubs.WorkItemGridHub.Read(ReadRequestData data) in G:\Accenture\Eto\EtoWeb\Hubs\WorkItemGridHub.cs:line 100', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (169, CAST(0x0000A693014D6D08 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.FormatException: An invalid character was found in the mail header: '';''.
   at System.Net.Mail.MailAddressParser.ParseLocalPart(String data, Int32& index, Boolean expectAngleBracket, Boolean expectMultipleAddresses)
   at System.Net.Mail.MailAddressParser.ParseAddress(String data, Boolean expectMultipleAddresses, Int32& index)
   at System.Net.Mail.MailAddressParser.ParseMultipleAddresses(String data)
   at System.Net.Mail.MailAddressCollection.ParseValue(String addresses)
   at System.Net.Mail.MailAddressCollection.Add(String addresses)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 66', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (170, CAST(0x0000A6930152334C AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.IO.DirectoryNotFoundException: Could not find a part of the path ''C:\Program Files (x86)\IIS Express\~\Attachments\Test5 - ETO8\CompleteWordReport-CFXPK0344F.doc''.
   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.FileStream.Init(String path, FileMode mode, FileAccess access, Int32 rights, Boolean useRights, FileShare share, Int32 bufferSize, FileOptions options, SECURITY_ATTRIBUTES secAttrs, String msgPath, Boolean bFromProxy, Boolean useLongPath, Boolean checkHost)
   at System.IO.FileStream..ctor(String path, FileMode mode, FileAccess access, FileShare share)
   at System.Net.Mail.AttachmentBase.SetContentFromFile(String fileName, String mediaType)
   at System.Net.Mail.AttachmentBase..ctor(String fileName)
   at System.Net.Mail.Attachment..ctor(String fileName)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 79', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (171, CAST(0x0000A6930159FF00 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.Net.Mail.SmtpException: The operation has timed out.
   at System.Net.Mail.SmtpClient.Send(MailMessage message)
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 89', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (172, CAST(0x0000A6930161F73C AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'System.NullReferenceException: Object reference not set to an instance of an object.
   at EtoWeb.Controllers.MailServiceController.SendMail(SendMailParameters SendMailParameters) in G:\Accenture\Eto\EtoWeb\Controllers\MailServiceController.cs:line 106', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (173, CAST(0x0000A69800AF1004 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
IList`1 -> IList`1
System.Collections.Generic.IList`1[[DataModels.WorkItem, DataModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.IList`1[[AutoMap.WorkItem, AutoMap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Type Map configuration:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Property:
EtoMails ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Type Map configuration:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Property:
Attachments ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Type Map configuration:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Property:
EtoMail ---> AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
EtoMail -> NameValuePair
DataModels.EtoMail -> AutoMap.NameValuePair
   at lambda_method(Closure , EtoMail , NameValuePair , ResolutionContext )
   at AutoMapper.ResolutionContext.Map[TSource,TDestination](TSource source, TDestination destination)
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   at AutoMapper.Mapper.AutoMapper.IMapper.Map[TSource,TDestination](TSource source)
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source)
   at EtoWeb.Hubs.WorkItemGridHub.Read(ReadRequestData data) in G:\Accenture\Eto\EtoWeb\Hubs\WorkItemGridHub.cs:line 100', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (174, CAST(0x0000A69800AF5C30 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
IList`1 -> IList`1
System.Collections.Generic.IList`1[[DataModels.WorkItem, DataModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.IList`1[[AutoMap.WorkItem, AutoMap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Type Map configuration:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Property:
EtoMails ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Type Map configuration:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Property:
Attachments ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Type Map configuration:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Property:
EtoMail ---> AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
EtoMail -> NameValuePair
DataModels.EtoMail -> AutoMap.NameValuePair
   at lambda_method(Closure , EtoMail , NameValuePair , ResolutionContext )
   at AutoMapper.ResolutionContext.Map[TSource,TDestination](TSource source, TDestination destination)
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   at AutoMapper.Mapper.AutoMapper.IMapper.Map[TSource,TDestination](TSource source)
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source)
   at EtoWeb.Hubs.WorkItemGridHub.Read(ReadRequestData data) in G:\Accenture\Eto\EtoWeb\Hubs\WorkItemGridHub.cs:line 100', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (175, CAST(0x0000A69800B32A04 AS DateTime), N'Error', N'vinitt.j@nieto.in', N'SCYLLA', N'AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
IList`1 -> IList`1
System.Collections.Generic.IList`1[[DataModels.WorkItem, DataModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] -> System.Collections.Generic.IList`1[[AutoMap.WorkItem, AutoMap, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]] ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Type Map configuration:
WorkItem -> WorkItem
DataModels.WorkItem -> AutoMap.WorkItem

Property:
EtoMails ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Type Map configuration:
EtoMail -> EtoMail
DataModels.EtoMail -> AutoMap.EtoMail

Property:
Attachments ---> AutoMapper.AutoMapperMappingException: Error mapping types.

Mapping types:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Type Map configuration:
Attachment -> Attachment
DataModels.Attachment -> AutoMap.Attachment

Property:
EtoMail ---> AutoMapper.AutoMapperMappingException: Missing type map configuration or unsupported mapping.

Mapping types:
EtoMail -> NameValuePair
DataModels.EtoMail -> AutoMap.NameValuePair
   at lambda_method(Closure , EtoMail , NameValuePair , ResolutionContext )
   at AutoMapper.ResolutionContext.Map[TSource,TDestination](TSource source, TDestination destination)
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   --- End of inner exception stack trace ---
   at lambda_method(Closure , IList`1 , IList`1 , ResolutionContext )
   at AutoMapper.Mapper.AutoMapper.IMapper.Map[TSource,TDestination](TSource source)
   at AutoMapper.Mapper.Map[TSource,TDestination](TSource source)
   at EtoWeb.Hubs.WorkItemGridHub.Read(ReadRequestData data) in G:\Accenture\Eto\EtoWeb\Hubs\WorkItemGridHub.cs:line 100', N'', N'', N'', N'', N'')
INSERT [dbo].[Log] ([Id], [EventDateTime], [EventLevel], [UserName], [MachineName], [EventMessage], [ErrorSource], [ErrorClass], [ErrorMethod], [ErrorMessage], [InnerErrorMessage]) VALUES (176, CAST(0x0000A69800B39A84 AS DateTime), N'Error', N'', N'SCYLLA', N'System.UnauthorizedAccessException: Access to the path is denied.
   at System.IO.__Error.WinIOError(Int32 errorCode, String maybeFullPath)
   at System.IO.File.InternalMove(String sourceFileName, String destFileName, Boolean checkHost)
   at System.IO.File.Move(String sourceFileName, String destFileName)
   at NLog.Targets.FileTarget.ArchiveFile(String fileName, String archiveFileName)
   at NLog.Targets.FileTarget.ArchiveByDateAndSequence(String fileName, String pattern, LogEventInfo logEvent)
   at NLog.Targets.FileTarget.DoAutoArchive(String fileName, LogEventInfo eventInfo)
   at NLog.Targets.FileTarget.ProcessLogEvent(LogEventInfo logEvent, String fileName, Byte[] bytesToWrite)
   at NLog.Targets.FileTarget.Write(LogEventInfo logEvent)
   at NLog.Targets.Target.Write(AsyncLogEventInfo logEvent)
   at NLog.Targets.Target.WriteAsyncLogEvent(AsyncLogEventInfo logEvent)
   at NLog.LoggerImpl.WriteToTargetWithFilterChain(TargetWithFilterChain targetListHead, LogEventInfo logEvent, AsyncContinuation onException)
   at NLog.LoggerImpl.Write(Type loggerType, TargetWithFilterChain targets, LogEventInfo logEvent, LogFactory factory)
   at NLog.Logger.WriteToTargets(LogLevel level, IFormatProvider formatProvider, String message)
   at NLog.Logger.Info(String message)
   at EtoWeb.AutoMapper.AutoMapperConfiguration.Configure() in G:\Accenture\Eto\EtoWeb\AutoMapper\AutoMapperConfiguration.cs:line 16
   at EtoWeb.WebApiApplication.Application_Start() in G:\Accenture\Eto\EtoWeb\Global.asax.cs:line 28', N'', N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Log] OFF
/****** Object:  Table [dbo].[RefreshTokens]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshTokens](
	[Id] [nvarchar](128) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[ClientId] [nvarchar](50) NOT NULL,
	[IssuedUtc] [datetime] NOT NULL,
	[ExpiresUtc] [datetime] NOT NULL,
	[ProtectedTicket] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.RefreshTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'gGRtTwdkm9WinvboXp9odhENoJRKPSKTXMJGHUiXEJ4=', N'admin@accenture.com', N'dgxftApp', CAST(0x0000A67700AAED12 AS DateTime), CAST(0x0000A67C00AAED12 AS DateTime), N'Fn_vPngopqIm0K59Ju2cxt1TFR7DKDVI6sQwXHJzO2VjMffzB172dz6GTTNStwFLgoYG3pvhjbzzlr0l8lGlXHrUqSAGQHYeH-9yc0JPp9gXDlmN8wSgkNA_AoCjWgzrJ8q9uRWTKqYq6Phz5BsKUwR6DOWW4lXPs3gKgJCSmyFKYVzDpRv4eErRsW12HaCormvHTwNH-VYva-NmoZus9f1TKgyb4xHOA5bUwla1kt1pwAjXjVFuRUD2cS9jAG602V2dy2h4CxSzqUYjZg9eofmxBS-thrTyVBciugRgVx0PyzFW7ax5zxOU4U2GY2P2jXw47-qAUenX7MfkggIFaf-wM8G94gkc4kW2KfEgPw5epc0Asy0HfUFBEzIeeppT')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'HP587pbNAPaC0FD8j+UnEOfqNZTJP5Q6ST0IRTE9ST0=', N'amit.p@nieto.in', N'dgxftApp', CAST(0x0000A68500F35909 AS DateTime), CAST(0x0000A68A00F35909 AS DateTime), N'0tkuTFjyS-4CyogePrz9M_DJZj_US3a5rJuputNl58wiiAe5PJTBcJSVaFl-LBTGfQT7tbNo94OrY5-Ixfw0SOD5ZgA5KgsWqmKVuCkxl6P3Vmf4VIiifunfpI5TTF4u2CZ5vxTmI28aTgh5pSnByJXW2P-LmlfsapxntPTK4RielQVZ7W5LZDgqlBedvzz6atB2fGrbUVXwfzuEpTqxhQNcsNrEXOWKeffpDJ9S_a-WOkTpLPmPSx9h9ktBDL3UyWJLhxL0ID_uwgpo2ex-HKykvA6TXuGZwgMgQfX0-3ikxEGiJTAxmdMZyFNoPaxTl-WrmWK55e2UNaEruOVCyRQe938_56BRbz2m4SHD3N_cGEcdsY15XNflcG9RdGeY')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'JhOXun7i0uv1P868AdHYzhZ42FrOINHs2iP73dV+wBE=', N'admin@eto.com', N'dgxftApp', CAST(0x0000A67E010B7B7D AS DateTime), CAST(0x0000A683010B7B7D AS DateTime), N'm3hLfFCzDc5ZsanPrWgRKam9kIsdze-B6g3UTJFaif4O9SBaL8OtWjOKiaRC6B9Y1ppLAXAiYP9I4uPQgsmgfeo20OG3QIwR-nfw-UGzpASwYT_e1k6lQxfjSucXRCt-8wXWtr9syH6QSyBCNwZvQZCXifXM6cal_JxSRoaL1yHhZp8SuX22csgsmvxmhIyJokplwaldusQScaUzbFuo5fGOryHQ2IAVIj1gJ62gdTKWdAh9zDJO27QyLbSqQAIqbFmfGRuG1Hf2s3YhYhLKpq8UVu2M8W8_YvtE8JR5buqn3TIx36a_v_fWjOLOwnfMc6ga-sRgB7EOWqaKtmNobVXygQBtKQbSmGjDNrzCTbZzZPORSauYQu6eCa-1mFP6')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'moc0rQGgx6AbCti5tL9k1actqkbJbpmaQZDdHXIOGb4=', N'admin@nieto.in', N'dgxftApp', CAST(0x0000A68500F1AC73 AS DateTime), CAST(0x0000A68A00F1AC73 AS DateTime), N'tnZGWoTLzSRZViKTzj9_NafJ1k-W2NSYzftQEdko8T3KV_studa1llbPxzvtDWyPvsEhDwDN_MeaXfk4w187_mzCSTRqcTmL0cNDHdweF7tmQZIv9wuosCji5C1DwqMddNQ5RsHHFdwvNNsfURe3N4t5YGGWnovg9ulCv5spuFGNsHR8NHRTc1FJ7Z6wlCgRhB_n3vVp7TCCujwfCx3VzFueqU31VifEvI8O48eKWqwJ8pv3z2HrIUIcTM29rHe1LIYBYFF4Gdq_vj2FncpwsQzMD2blFtH92qP-woADqoLorocTJWFZd_tdrLHxeHRE-t-YKKfwGfdiOLXVuIqh95ekLReQAnB9QKb1y_bpM9H5PqwMjO8YvYX8P3Qpqm47')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'ocy5txrwO8t34UWZ7Y8JNQtHkC6VKWOEGXrzr0M1Miw=', N'anirudh.m@nieto.in', N'dgxftApp', CAST(0x0000A68500F51DC9 AS DateTime), CAST(0x0000A68A00F51DC9 AS DateTime), N'OnaztxbPpgH6MXIt9bAHB0sxb5QtelgPFhvGLsNAU5o1dElIsW9UxlctwH_8ejagzv_ekyppht8dDS2ypkUf1EF1MRSk3JNiqcbAOAKsJgfALGpQY7KNkMw9yafxEx4XMPz8svzl6mcQSOau_aQM7FANw899-P-2eG1mJW1Luydr8dWsTsoMk5yOb3dRH-a7Fd8SL5PNmdQ44IwxbGOZJkmF4AfYgv0gZR9Nauzu2wplmuEHufGvc9QRVsHM6V1NnTg1SWvKswLWpz6fAZn71jWma2yWgM9XIas05lsqYqeMdRi0TYHUFBo4zW4G2-RrVw5FHUhUUMU05bU-adEmYww4oeblXxfKLDRXVSMsJzOzuwsTbhQoUlKLX7WVUwlp')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'rkc6Pbi5qx2Tz2kSrBKXY4mgD9hhTUcISaCBPgO7bRk=', N'swetank.kakarla@accenture.com', N'dgxftApp', CAST(0x0000A66900F7973F AS DateTime), CAST(0x0000A66E00F7973F AS DateTime), N'xxOgMYwRptl9jQ2EmI6teh_o_5VCliT3x8apomuevZcBJphTGgWZvCXARqpihtJj-h0m7BQDTPmEM7ANZSPtTViWr__rrbhM7DLjrdopCR_JD8aTXPTE7PaUByNTXYxKnqWOf__ixhv1qA0d0bVR034ViZvsIUmCdRiCZX2wOCdcCp0jZV4WdqfD2Xg9CLq4b_8Nrhn_QYXZ34o15rIixvED7Rr5cysHySA4pM3yiKKwEKEJ_PxT5jGSD5Ej2T2c6xKvdM6hL95WZ_divmqcMqYqDSVg7d_n6H5VTd92qzOr7wjKloTndTA80Z4FBMNTY4LGXi0aFoqH3nenNa-haboKJMKsROJv_BESPaS6pwok0AajTz3pHGhttD3-L0Rx')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'sRkrD0vqIQvJLCG1CTVK4fNbM6GCGgiYB4fTe7wTh4M=', N'swetank.k@nieto.in', N'dgxftApp', CAST(0x0000A68A00DBC74F AS DateTime), CAST(0x0000A68F00DBC74F AS DateTime), N'GAkvHlOYpcdndLK6WyU84IF5n9nB6aIonYaIj6GJ_XnkLhFhiQE9YKcRkNOvbGmKeIg8l5VY5olaa18JZp_H17UADNdUVT4aGy3j5Dol4brbkdyEK28uz9PDT0uOblxDo1giRg-4xz75n_NTouWDQsq2seBjYAG85oJbWMJL8Bw7bnwvNYA2mc2fQ2pItumGt5G_3DYgb0MloE83ptcUcMWY9N5LawDCaA_NAVWpJoVvAF2wY0ChKUKqrurOUCw3ePd1xhKKaBre0W8PCm-bHWpJKwJ8P9f8AAk4Ucf5zi_9_VC-vihWvRIJx4yMTjEZdZyfmv0bcZLGpapUPjcmCc42BItdWco-JTkLDmkDmb6S_K73vuvB67TDYwADKnk4')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'TrB1VcMfBBMuMgxBzygVG3PzqCfzT7wSWiPIyrZh0W4=', N'vinitt.j@nieto.in', N'dgxftApp', CAST(0x0000A68101106035 AS DateTime), CAST(0x0000A68601106035 AS DateTime), N'MX45gZsDaANWfX1qZZ_U-HJAvLeDarvkZP16Hh0eI_VvPqihtC6VIdaKdkLh1R_MVDxFZQpZCtQKkvJehDw115HFH-4yf1ig1W5YwEKerAWOKRyCpjAYgleC84L9usp_gnGR9dUJqjGW0IKa_Nm3rR3aMZuiQvdBJWiYSG3mRDKpzrRVpcYITejhZL8nEIhRvbJWGUJ8M-VpcD708rvfMGEtlqi5N-XxuDaeA8IUTeZ6TGaIg2UV9DBtJJMPPNZwPxabk2iG6KNpDgxBukXkL8klZN3ofY40z1WzV3kKVj1QDm3hPP6Zj7wxCrlf9P2B18tKt2V7WkFxYB2XvLntKR0u7Y0CGYTE2lDOx49CiYY8i3y8EOLT9FSwCCvxgaSe')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'wPiwvlSi5qcho2LcvxXtKjECZ1xc5z1VD/8g8eUSrN0=', N'accenture@nieto.in', N'dgxftApp', CAST(0x0000A68101363E98 AS DateTime), CAST(0x0000A68601363E98 AS DateTime), N'CJdFKIqDzrKrS3HYHoEUKFNxB7r9RMnkzgS3JbmbjsRqa2o8EWtf7MVMhLdlbHhGU1x_SO7qJbluNnBvPiMinjwGGAVIzXeiRKbKw733BVJ09-IEq9YWLQ-i8Kmt5W0tVEh6GvSnjBDda3vaQ9aVJtqgoGv938hHFuiEaDkNCtisUPWxnfhvi4JPZ4dlDhUhi3GmP6x6zReV1Sl9UEFq0fTbMZSE7bBTFqeumCe9fpCmkyaIWApkyY4jkPbaHWunixZWNgGlmN-wO07uhJlB6Z_cVsUc1Pe75XSBwQhdvvIb4VDumynKlmbvoyGVG2mjW13kZCT8r05xYb77ctmNT_--RpFTcsYKCkkZwDHhSXCD-IQKAxx-4fEt94Mup1iL')
INSERT [dbo].[RefreshTokens] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'x/9I0iiI8sI8K7AAJKwmk02Nr40q0+5wu4SYYCXvqFw=', N'samiksha.m@nieto.in', N'dgxftApp', CAST(0x0000A68500F34C46 AS DateTime), CAST(0x0000A68A00F34C46 AS DateTime), N'N5cRuKy6EhsAJr0um6OekkNG-n5xDVvjwxLANA5f_xIlxVqJ3qHyfXCNjidyaSHYzPSVXNLkMisQus3hE5BRa5WZaWFrLMOxnX8yednC1_pQiCPiyaI816oOBLEuTK8zm0pO1mM1aXmU09ylxaGKVKwGEtjMZmPTdDOOKyO2aT2rbEAA35gar33mhGazpbFx2mbkdZdb9OtTqDwMjeWMbypiqeG5pGgISSh10jj1dM4nqhq8RSnto2Sb0DBM53VoxkI33_2U9LlmJBSstdT76_1dmVaapuKlUGbBte36GAdyqg3bL-gZJw6WGHI9GxLVGwNAeeGa7ZS_E9z8IAJHyCzfWmqixc9MMFKMZc-hg7gXtuBbx46E1sHqe0b7lfnW')
/****** Object:  Table [dbo].[UpdateHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UpdateHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UpdatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UpdateHistory] ON
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (1, CAST(0x0000A669014530D4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (2, CAST(0x0000A669016806CC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (3, CAST(0x0000A6690168198C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (4, CAST(0x0000A66E00E58CD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (5, CAST(0x0000A66E00E58CD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (6, CAST(0x0000A670003D24BC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (7, CAST(0x0000A670003D3650 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (8, CAST(0x0000A670003EB908 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (9, CAST(0x0000A670003EC5EC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (10, CAST(0x0000A67000E0BF8C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (11, CAST(0x0000A67000E0EC14 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (12, CAST(0x0000A67000E0FED4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (13, CAST(0x0000A67000F6B2B0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (14, CAST(0x0000A67000F7A2EC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (15, CAST(0x0000A67001004AF0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (16, CAST(0x0000A670013B1428 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (17, CAST(0x0000A67400052080 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (18, CAST(0x0000A67400053DCC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (19, CAST(0x0000A674000B13F0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (20, CAST(0x0000A674000B1E7C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (21, CAST(0x0000A674000B232C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (22, CAST(0x0000A674000B2908 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (23, CAST(0x0000A67600BAB094 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (24, CAST(0x0000A67600BAEA00 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (25, CAST(0x0000A67600BD306C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (26, CAST(0x0000A677007402D4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (27, CAST(0x0000A67700A73898 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (28, CAST(0x0000A67700A7538C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (29, CAST(0x0000A67D00C6C1A4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (30, CAST(0x0000A67D00C74E44 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (31, CAST(0x0000A67D00C74E44 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (32, CAST(0x0000A67D00C74E44 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (33, CAST(0x0000A67D00CC75CC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (34, CAST(0x0000A67D00CC75CC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (35, CAST(0x0000A67D00CC9B4C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (36, CAST(0x0000A67D00CCD710 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (37, CAST(0x0000A67D00E95BD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (38, CAST(0x0000A67D00E95BD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (39, CAST(0x0000A67D00E98BE4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (40, CAST(0x0000A67D00E98D10 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (41, CAST(0x0000A67D00EBB180 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (42, CAST(0x0000A67D00EBB180 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (43, CAST(0x0000A67D00EBB180 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (44, CAST(0x0000A67D00EBB180 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (45, CAST(0x0000A67E00B2D928 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (46, CAST(0x0000A67E00B2F7A0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (47, CAST(0x0000A67E00B30DE4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (48, CAST(0x0000A67E00B31744 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (49, CAST(0x0000A67E00B3487C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (50, CAST(0x0000A67E00B74404 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (51, CAST(0x0000A67E00B74530 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (52, CAST(0x0000A67E00B74530 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (53, CAST(0x0000A67E00B74530 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (54, CAST(0x0000A67E00CF9C0C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (55, CAST(0x0000A67E00CFC3E4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (56, CAST(0x0000A67E00CFE838 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (57, CAST(0x0000A67E00D000D4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (58, CAST(0x0000A67E00D01BC8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (59, CAST(0x0000A67E00D03464 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (60, CAST(0x0000A67E00D04D00 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (61, CAST(0x0000A67E00D0659C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (62, CAST(0x0000A67E00D07604 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (63, CAST(0x0000A67E00D0866C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (64, CAST(0x0000A67E00D09B84 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (65, CAST(0x0000A67E00D0AE44 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (66, CAST(0x0000A67E00D110B4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (67, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (68, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (69, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (70, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (71, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (72, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (73, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (74, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (75, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (76, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (77, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (78, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (79, CAST(0x0000A67E00D2C120 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (80, CAST(0x0000A67E010B56AC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (81, CAST(0x0000A67E013E9CD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (82, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (83, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (84, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (85, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (86, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (87, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (88, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (89, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (90, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (91, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (92, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (93, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (94, CAST(0x0000A67E013EEB5C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (95, CAST(0x0000A67E0142A1C0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (96, CAST(0x0000A67E0142A1C0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (97, CAST(0x0000A67E0142A1C0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (98, CAST(0x0000A67E0142A1C0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (99, CAST(0x0000A67E0142A1C0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (100, CAST(0x0000A67E0148F9F8 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (101, CAST(0x0000A67F0117BE74 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (102, CAST(0x0000A67F0117E778 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (103, CAST(0x0000A67F0119412C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (104, CAST(0x0000A68500F0D200 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (105, CAST(0x0000A68500F0E970 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (106, CAST(0x0000A68500F33234 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (107, CAST(0x0000A68500F3924C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (108, CAST(0x0000A68500F3924C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (109, CAST(0x0000A68601199DC0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (110, CAST(0x0000A686012F690C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (111, CAST(0x0000A686012F82D4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (112, CAST(0x0000A6860136FDAC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (113, CAST(0x0000A68601370964 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (114, CAST(0x0000A68A00719238 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (115, CAST(0x0000A68A0071A174 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (116, CAST(0x0000A68A0071A9A8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (117, CAST(0x0000A68A0071B0B0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (118, CAST(0x0000A68A00721320 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (119, CAST(0x0000A68A00721DAC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (120, CAST(0x0000A68A00722130 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (121, CAST(0x0000A68A0072225C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (122, CAST(0x0000A68A0072A344 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (123, CAST(0x0000A68A0072A344 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (124, CAST(0x0000A68A0072A344 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (125, CAST(0x0000A68A0072A344 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (126, CAST(0x0000A68A00745284 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (127, CAST(0x0000A68A007454DC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (128, CAST(0x0000A68A00745734 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (129, CAST(0x0000A68A0074598C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (130, CAST(0x0000A68A0074DBA0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (131, CAST(0x0000A68A0074DBA0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (132, CAST(0x0000A68A0074E9B0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (133, CAST(0x0000A68A0074F310 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (134, CAST(0x0000A68A00768C0C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (135, CAST(0x0000A68A0076E198 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (136, CAST(0x0000A68A00ADC460 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (137, CAST(0x0000A68A00AE072C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (138, CAST(0x0000A68A00B16930 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (139, CAST(0x0000A68A00B19B94 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (140, CAST(0x0000A68A00B7D428 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (141, CAST(0x0000A68A00B80C68 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (142, CAST(0x0000A68A00BA552C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (143, CAST(0x0000A68A00BAA02C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (144, CAST(0x0000A68A00BB4310 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (145, CAST(0x0000A68A00BB70C4 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (146, CAST(0x0000A68A00C34830 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (147, CAST(0x0000A68A00C42354 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (148, CAST(0x0000A68A00C44FDC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (149, CAST(0x0000A68A00C9C96C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (150, CAST(0x0000A68A00CA7CB8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (151, CAST(0x0000A68A00D791F0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (152, CAST(0x0000A68A00D87C50 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (153, CAST(0x0000A68A00D8FD38 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (154, CAST(0x0000A68A00D96B60 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (155, CAST(0x0000A68A00DA34F0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (156, CAST(0x0000A68A00DBB67C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (157, CAST(0x0000A68A00DBFA74 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (158, CAST(0x0000A68A00DCEE34 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (159, CAST(0x0000A68D0113B608 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (160, CAST(0x0000A68D0113B860 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (161, CAST(0x0000A68D0113BD10 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (162, CAST(0x0000A68D0113BF68 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (163, CAST(0x0000A68D01182594 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (164, CAST(0x0000A68D01182594 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (165, CAST(0x0000A68D01182594 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (166, CAST(0x0000A68D01182594 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (167, CAST(0x0000A68E01063C08 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (168, CAST(0x0000A68E01069644 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (169, CAST(0x0000A68E010A0658 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (170, CAST(0x0000A68E010A0FB8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (171, CAST(0x0000A68E010A97A8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (172, CAST(0x0000A68E010AB3C8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (173, CAST(0x0000A68E010ACFE8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (174, CAST(0x0000A68E010B27CC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (175, CAST(0x0000A68E010B51FC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (176, CAST(0x0000A68E010BC984 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (177, CAST(0x0000A68E010BF4E0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (178, CAST(0x0000A68E010CC44C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (179, CAST(0x0000A68E01125C54 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (180, CAST(0x0000A68E0125B830 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (181, CAST(0x0000A68E0126702C AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (182, CAST(0x0000A68E0129CFD8 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (183, CAST(0x0000A68E012A06EC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (184, CAST(0x0000A692013454D0 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (185, CAST(0x0000A692013455FC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (186, CAST(0x0000A692013455FC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (187, CAST(0x0000A692013455FC AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (188, CAST(0x0000A69201348158 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (189, CAST(0x0000A69201348158 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (190, CAST(0x0000A69201348158 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (191, CAST(0x0000A69201348158 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (192, CAST(0x0000A69201363C50 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (193, CAST(0x0000A69201363C50 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (194, CAST(0x0000A69201363C50 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (195, CAST(0x0000A69201363C50 AS DateTime))
INSERT [dbo].[UpdateHistory] ([Id], [UpdatedOn]) VALUES (196, CAST(0x0000A69301060E54 AS DateTime))
SET IDENTITY_INSERT [dbo].[UpdateHistory] OFF
/****** Object:  Table [dbo].[WorkTypeHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkTypeHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[WorkTypeHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 41, 0, N'Page update', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkTypeHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 42, 0, N'New page', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkTypeHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (3, 43, 0, N'Press release', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
INSERT [dbo].[WorkTypeHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (4, 44, 0, N'Price update', 0, CAST(0x0000A67D00EBB180 AS DateTime), NULL)
/****** Object:  Table [dbo].[WorkPlanHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPlanHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[EstimatedCompletion] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[WorkItem_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkItemHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkItemHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[ExternalUId] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[OriginalReviewDate] [datetime] NULL,
	[CurrentReviewDate] [datetime] NULL,
	[OriginalTargetDate] [datetime] NULL,
	[CurrentTargetDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
	[PriorityColor] [int] NULL,
	[IsLocked] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Manager_id] [int] NULL,
	[Status_id] [int] NULL,
	[QAStatus_id] [int] NULL,
	[QualityAnalyst_id] [int] NULL,
	[HandoverTo_id] [int] NULL,
	[Requester_id] [int] NULL,
	[Shift_id] [int] NULL,
	[Country_id] [int] NULL,
	[DelayCause_id] [int] NULL,
	[Hierarchy_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[WorkType_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (3, 100, 0, N'ETO1', N'stk', CAST(0x0000A67F0017FDCC AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A67E0148F9F8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (3, 170, 1, N'ETO00001', N'stk', CAST(0x0000A67E0148DCAC AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68E010A0FB8 AS DateTime), 15, 3, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 101, 0, NULL, N'STK', NULL, NULL, CAST(0x0000A67F01178C10 AS DateTime), NULL, CAST(0x0000A67F01178C10 AS DateTime), N'', 0, 0, 0, CAST(0x0000A67F0117BE74 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 167, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E01063C08 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 171, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67F006245D0 AS DateTime), CAST(0x0000A68F006245D0 AS DateTime), CAST(0x0000A67F006245D0 AS DateTime), CAST(0x0000A691006245D0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010A97A8 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 172, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67F0007A2B0 AS DateTime), CAST(0x0000A6900007A2B0 AS DateTime), CAST(0x0000A67F0007A2B0 AS DateTime), CAST(0x0000A6910007A2B0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010AB3C8 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 173, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67E01388190 AS DateTime), CAST(0x0000A69801388190 AS DateTime), CAST(0x0000A67E01388190 AS DateTime), CAST(0x0000A69001388190 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010ACFE8 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 174, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67E00DDDE70 AS DateTime), CAST(0x0000A69D00DDDE70 AS DateTime), CAST(0x0000A67E00DDDE70 AS DateTime), CAST(0x0000A69E00DDDE70 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010B27CC AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 175, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67E00833B50 AS DateTime), CAST(0x0000A69E00833B50 AS DateTime), CAST(0x0000A67E00833B50 AS DateTime), CAST(0x0000A69E00833B50 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010B51FC AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 176, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67E00289830 AS DateTime), CAST(0x0000A68F00289830 AS DateTime), CAST(0x0000A67E00289830 AS DateTime), CAST(0x0000A69E00289830 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010BC984 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 177, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67D01597710 AS DateTime), CAST(0x0000A68F01597710 AS DateTime), CAST(0x0000A67D01597710 AS DateTime), CAST(0x0000A69D01597710 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010BF4E0 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 178, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67D01597710 AS DateTime), CAST(0x0000A69001597710 AS DateTime), CAST(0x0000A67D01597710 AS DateTime), CAST(0x0000A69D01597710 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010CC44C AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 179, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67D00FED3F0 AS DateTime), CAST(0x0000A69100FED3F0 AS DateTime), CAST(0x0000A67D00FED3F0 AS DateTime), CAST(0x0000A69D00FED3F0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E01125C54 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 180, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67D00A430D0 AS DateTime), CAST(0x0000A69200A430D0 AS DateTime), CAST(0x0000A67D00A430D0 AS DateTime), CAST(0x0000A69D00A430D0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E0125B830 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 181, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67D00498DB0 AS DateTime), CAST(0x0000A69800498DB0 AS DateTime), CAST(0x0000A67D00498DB0 AS DateTime), CAST(0x0000A69D00498DB0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E0126702C AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 182, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67C017A6C90 AS DateTime), CAST(0x0000A69F017A6C90 AS DateTime), CAST(0x0000A67C017A6C90 AS DateTime), CAST(0x0000A69C017A6C90 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E0129CFD8 AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (5, 183, 1, N'ETO00002', N'STK', NULL, CAST(0x0000A67C011FC970 AS DateTime), CAST(0x0000A6A0011FC970 AS DateTime), CAST(0x0000A67C011FC970 AS DateTime), CAST(0x0000A69C011FC970 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E012A06EC AS DateTime), 20, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (6, 102, 0, NULL, N'asdf', NULL, NULL, CAST(0x0000A67F01178C10 AS DateTime), NULL, CAST(0x0000A67F01178C10 AS DateTime), N'', 0, 0, 0, CAST(0x0000A67F0117E778 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (6, 168, 1, N'ETO00003', N'asdf', NULL, CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), CAST(0x0000A67F00BCE8F0 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E01069644 AS DateTime), NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (7, 103, 0, NULL, N'Eto', NULL, NULL, CAST(0x0000A67F01191E04 AS DateTime), NULL, CAST(0x0000A67F01191E04 AS DateTime), N'', 0, 0, 0, CAST(0x0000A67F0119412C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (7, 169, 1, N'ETO000025', N'Eto', NULL, CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), CAST(0x0000A67F00BE7AE4 AS DateTime), N'', 0, 0, 0, CAST(0x0000A68E010A0658 AS DateTime), 11, 3, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (8, 104, 0, N'ETO4', N'Test2', CAST(0x0000A685014B2DA4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F0D0D4 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (8, 105, 1, N'ETO5', N'Test2', CAST(0x0000A68500F0E844 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F0E844 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (9, 107, 0, N'ETO6', N'Test4', CAST(0x0000A685014E2888 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F3924C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (9, 108, 1, N'ETO7', N'Test4', CAST(0x0000A68500F3924C AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68500F3924C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (10, 125, 0, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (11, 122, 0, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (12, 124, 0, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (13, 123, 0, N'ETO8', N'Test5', CAST(0x0000A68A00CD33A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0072A344 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (14, 131, 0, N'ETO9', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074DBA0 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (14, 158, 1, N'ETO9', N'Test13442 ETO9', CAST(0x0000A68A01378344 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00DCEE34 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (15, 130, 0, N'ETO9', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074DBA0 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (16, 132, 0, N'ETO10', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074E050 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (17, 133, 0, N'ETO10', N'Test6', CAST(0x0000A68A00CF70B0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0074EF8C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (18, 135, 0, N'ETO10', N'Test7', CAST(0x0000A68A00D17900 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A0076E198 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (19, 137, 0, N'ETO10', N'Test9', CAST(0x0000A68A01089E94 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00AE072C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (20, 139, 0, N'ETO10', N'Test9', CAST(0x0000A68A010C2F78 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00B19B94 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (21, 141, 0, N'ETO10', N'Test10', CAST(0x0000A68A0112A178 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00B80C68 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (22, 143, 0, N'ETO10', N'Test11', CAST(0x0000A68A01153668 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00BAA02C AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (23, 145, 0, N'ETO10', N'Test12', CAST(0x0000A68A01160700 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00BB70C4 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (24, 148, 0, N'ETO10', N'Test14', CAST(0x0000A68A011EE3C0 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00C44FDC AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (25, 150, 0, N'ETO10', N'Test15', CAST(0x0000A68A0124F92C AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00CA7CB8 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (26, 152, 0, N'ETO10', N'Test16', CAST(0x0000A68A01331160 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00D87C50 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (27, 154, 0, N'ETO10', N'Test17', CAST(0x0000A68A0133C380 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00D96B60 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (28, 155, 0, N'ETO10', N'Test18', CAST(0x0000A68A0134AB88 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00DA34F0 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[WorkItemHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [CreatedDate], [OriginalReviewDate], [CurrentReviewDate], [OriginalTargetDate], [CurrentTargetDate], [Notes], [PriorityColor], [IsLocked], [IsDeleted], [UpdatedOn], [Manager_id], [Status_id], [QAStatus_id], [QualityAnalyst_id], [HandoverTo_id], [Requester_id], [Shift_id], [Country_id], [DelayCause_id], [Hierarchy_id], [UpdatedBy_id], [WorkType_id]) VALUES (28, 157, 1, N'ETO11', N'Test 18 ETO11', CAST(0x0000A68A01369434 AS DateTime), NULL, NULL, NULL, NULL, NULL, 0, 0, 0, CAST(0x0000A68A00DBFA74 AS DateTime), NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[ShiftHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Coordinator_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[Manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ShiftHistory] ([Id], [REV], [REVTYPE], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [Coordinator_id], [UpdatedBy_id], [Manager_id]) VALUES (9, 29, 0, N'APAC', CAST(0x0000A67D00107AC0 AS DateTime), CAST(0x0000A67D00AD08E0 AS DateTime), 0, CAST(0x0000A67D00C6C1A4 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ShiftHistory] ([Id], [REV], [REVTYPE], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [Coordinator_id], [UpdatedBy_id], [Manager_id]) VALUES (10, 30, 0, N'NA', CAST(0x0000A67D0107AC00 AS DateTime), CAST(0x0000A67D0018B820 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ShiftHistory] ([Id], [REV], [REVTYPE], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [Coordinator_id], [UpdatedBy_id], [Manager_id]) VALUES (11, 31, 0, N'Later EMEA', CAST(0x0000A67D00BD83A0 AS DateTime), CAST(0x0000A67C015A11C0 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[ShiftHistory] ([Id], [REV], [REVTYPE], [Name], [StartTime], [EndTime], [IsDeleted], [UpdatedOn], [Coordinator_id], [UpdatedBy_id], [Manager_id]) VALUES (12, 32, 0, N'EMEA', CAST(0x0000A67D006B1DE0 AS DateTime), CAST(0x0000A67D0107AC00 AS DateTime), 0, CAST(0x0000A67D00C74E44 AS DateTime), NULL, NULL, NULL)
/****** Object:  Table [dbo].[UserHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[ExternalUId] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[EmailId] [nvarchar](255) NULL,
	[SecondaryEmailId] [nvarchar](255) NULL,
	[ContactNumber] [nvarchar](255) NULL,
	[EmailSignature] [nvarchar](255) NULL,
	[OOOFrom] [datetime] NULL,
	[OOOTo] [datetime] NULL,
	[WorkItemGridColumnState] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Shift_id] [int] NULL,
	[Supervisor_id] [int] NULL,
	[Hierarchy_id] [int] NULL,
	[Country_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[Manager_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (11, 54, 0, NULL, NULL, NULL, N'amit.p@nieto.in', N'amit.p@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00CF9C0C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (11, 67, 1, NULL, N'Amit Pandey', NULL, N'amit.p@nieto.in', N'amit.p@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (11, 82, 1, NULL, N'Amit Pandey', NULL, N'amit.p@nieto.in', N'amit.p@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (12, 55, 0, NULL, NULL, NULL, N'amit.s@nieto.in', N'amit.s@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00CFC3E4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (12, 68, 1, NULL, N'Amit Singh', NULL, N'amit.s@nieto.in', N'amit.s@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (12, 83, 1, NULL, N'Amit Singh', NULL, N'amit.s@nieto.in', N'amit.s@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (13, 56, 0, NULL, NULL, NULL, N'anirudh.m@nieto.in', N'anirudh.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00CFE838 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (13, 69, 1, NULL, N'Anirudh Murdeshwar', NULL, N'anirudh.m@nieto.in', N'anirudh.m@nieto.in', NULL, N's', NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (13, 84, 1, NULL, N'Anirudh Murdeshwar', NULL, N'anirudh.m@nieto.in', N'anirudh.m@nieto.in', NULL, N's', NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 7, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (14, 57, 0, NULL, NULL, NULL, N'badresh.m@nieto.in', N'badresh.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D000D4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (14, 70, 1, NULL, N'Badresh Shah', NULL, N'badresh.m@nieto.in', N'badresh.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (14, 86, 1, NULL, N'Badresh Shah', NULL, N'badresh.m@nieto.in', N'badresh.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 9, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (15, 58, 0, NULL, NULL, NULL, N'deneis.j@nieto.in', N'deneis.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D01BC8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (15, 71, 1, NULL, N'Deneis Joseph', NULL, N'deneis.j@nieto.in', N'deneis.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (15, 87, 1, NULL, N'Deneis Joseph', NULL, N'deneis.j@nieto.in', N'deneis.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 9, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (16, 59, 0, NULL, NULL, NULL, N'neeraj.m@nieto.in', N'neeraj.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D03464 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (16, 72, 1, NULL, N'Neeraj Shah', NULL, N'neeraj.m@nieto.in', N'neeraj.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (16, 88, 1, NULL, N'Neeraj Shah', NULL, N'neeraj.m@nieto.in', N'neeraj.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (17, 60, 0, NULL, NULL, NULL, N'samiksha.m@nieto.in', N'samiksha.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D04D00 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (17, 73, 1, NULL, N'Samiksha More', NULL, N'samiksha.m@nieto.in', N'samiksha.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (17, 89, 1, NULL, N'Samiksha More', NULL, N'samiksha.m@nieto.in', N'samiksha.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (18, 61, 0, NULL, NULL, NULL, N'sathyasree.m@nieto.in', N'sathyasree.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D0659C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (18, 74, 1, NULL, N'Sathyasree Malipedi', NULL, N'sathyasree.m@nieto.in', N'sathyasree.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (18, 90, 1, NULL, N'Sathyasree Malipedi', NULL, N'sathyasree.m@nieto.in', N'sathyasree.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 9, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (19, 62, 0, NULL, NULL, NULL, N'stanley.n@nieto.in', N'stanley.n@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D07604 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (19, 75, 1, NULL, N'Stanley Nadar', NULL, N'stanley.n@nieto.in', N'stanley.n@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (19, 91, 1, NULL, N'Stanley Nadar', NULL, N'stanley.n@nieto.in', N'stanley.n@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 63, 0, NULL, NULL, NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D0866C AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 76, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 92, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 109, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, N'[{"encoded":true,"hidden":true,"field":"Id","title":"Id","template":"<span id=''Id#: Id #''>#: Id # </span>","width":10,"filterable":false,"attributes":{"style":"display:none"},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"74b70e12-cd4b-41c0-9869-4f1e7084faf5","style":"display:none"}},{"encoded":true,"hidden":false,"field":"ExternalUId","title":"ExternalUId","template":"#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#","width":10,"attributes":{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#"},"filterable":{"extra":false,"field":"ExternalUId","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"9643408d-ea0a-4ed8-9f79-81f58618d234"}},{"encoded":true,"hidden":false,"field":"Name","title":"Name","template":"#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#","class":"undefined color "},"filterable":{"extra":false,"field":"Name","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"89970d4d-f6e0-41cf-9246-cdafcf388b34"}},{"encoded":true,"hidden":false,"field":"Manager","title":"Manager","template":"#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Manager","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3f498568-8ada-4e3e-a604-b419885255ff"}},{"encoded":true,"hidden":false,"field":"CreatedDate","title":"CreatedDate","template":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), \"dd-MM-yyyy\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CreatedDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"5f35c79d-23f2-4652-98a9-362f3a59e8cf"}},{"encoded":true,"hidden":false,"field":"OriginalReviewDate","title":"OriginalReviewDate","template":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"e8e35704-556a-4fc5-8f5f-654856fa97af"}},{"encoded":true,"hidden":false,"field":"CurrentReviewDate","title":"CurrentReviewDate","template":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"0e7ef41b-bf07-42f4-a64d-b59073991e9f"}},{"encoded":true,"hidden":false,"field":"OriginalTargetDate","title":"OriginalTargetDate","template":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"e977d950-7f97-48e3-85d5-3bfca4d21fda"}},{"encoded":true,"hidden":false,"field":"CurrentTargetDate","title":"CurrentTargetDate","template":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"6e2bea05-c6ae-4ea3-92bf-0734bd2330d2"}},{"encoded":true,"hidden":false,"field":"Status","title":"Status","template":"#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Status","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"87eca35b-0c76-4c4e-b301-25340724c146"}},{"encoded":true,"hidden":false,"field":"Notes","title":"Notes","template":"#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#","width":10,"attributes":{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Notes","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"4ede22a7-6b05-478d-99bb-441fc8f601fa"}},{"encoded":true,"hidden":false,"field":"QAStatus","title":"QAStatus","template":"#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QAStatus","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"e2b44b7e-323b-4c78-8ec5-1c0074480a31"}},{"encoded":true,"hidden":false,"field":"QualityAnalyst","title":"QualityAnalyst","template":"#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QualityAnalyst","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"210dcaa6-4aa8-4475-8542-e2aaf27fec62"}},{"encoded":true,"hidden":false,"field":"HandoverTo","title":"HandoverTo","template":"#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"HandoverTo","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"6df15357-2e8e-464a-a085-794513b83812"}},{"encoded":true,"hidden":false,"field":"Requester","title":"Requester","template":"#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Requester","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3f4bd562-bbfc-4b99-a434-415bb04d2bc1"}},{"encoded":true,"hidden":false,"field":"Shift","title":"Shift","template":"#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Shift","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"f3be07a6-8f23-4457-8ac4-d85f17de7c2f"}},{"encoded":true,"hidden":false,"field":"Country","title":"Country","template":"#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Country","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"8e4aed44-6982-47d1-9703-c3537323803d"}},{"encoded":true,"hidden":false,"field":"DelayCause","title":"DelayCause","template":"#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"DelayCause","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"c32ccbda-3151-42cb-8fad-7f572a777540"}},{"encoded":true,"hidden":true,"field":"Hierarchy","title":"Hierarchy","template":"#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Hierarchy","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"787a95e8-255c-4132-8386-70f7b961888f","style":"display:none"}}]', 0, CAST(0x0000A68601199DC0 AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 110, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, N'[{"encoded":true,"hidden":true,"field":"Id","title":"Id","template":"<span id=''Id#: Id #''>#: Id # </span>","width":10,"filterable":false,"attributes":{"style":"display:none"},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"a2015d42-0f8b-4edf-a83e-8af0090beac2","style":"display:none"}},{"encoded":true,"hidden":false,"field":"ExternalUId","title":"ExternalUId","template":"#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#","width":10,"attributes":{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#"},"filterable":{"extra":false,"field":"ExternalUId","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"90c265d8-61ff-4ee3-9dda-a9543c746baa"}},{"encoded":true,"hidden":false,"field":"Name","title":"Name","template":"#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#","class":"undefined color "},"filterable":{"extra":false,"field":"Name","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"927d8da7-6abb-4c47-88f2-fcde3b0b2d4c"}},{"encoded":true,"hidden":false,"field":"Manager","title":"Manager","template":"#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Manager","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"f58660f1-c8ac-4351-b569-e7936fd1761b"}},{"encoded":true,"hidden":false,"field":"CreatedDate","title":"CreatedDate","template":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), \"dd-MM-yyyy\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CreatedDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"405aaeea-9791-4880-b4c6-60ab4a84575b"}},{"encoded":true,"hidden":false,"field":"OriginalReviewDate","title":"OriginalReviewDate","template":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"b561eafe-aa20-4682-8e1a-b3d3f3b68f75"}},{"encoded":true,"hidden":false,"field":"CurrentReviewDate","title":"CurrentReviewDate","template":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3cb63036-48d4-4dbb-a74c-e70d8bc7033c"}},{"encoded":true,"hidden":false,"field":"OriginalTargetDate","title":"OriginalTargetDate","template":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"6e061cbd-118b-4e8a-b609-14f488369775"}},{"encoded":true,"hidden":false,"field":"CurrentTargetDate","title":"CurrentTargetDate","template":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ee75e99d-1f69-4389-8c4b-bad81661a875"}},{"encoded":true,"hidden":false,"field":"Status","title":"Status","template":"#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Status","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"b311659d-afbc-41f5-b643-a52f4fbdf5b2"}},{"encoded":true,"hidden":false,"field":"Notes","title":"Notes","template":"#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#","width":10,"attributes":{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Notes","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ca8b4850-0ad1-413d-b157-b68b95238adc"}},{"encoded":true,"hidden":false,"field":"QAStatus","title":"QAStatus","template":"#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QAStatus","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"f62e6ecc-cccc-40e1-8415-24367f98d63e"}},{"encoded":true,"hidden":false,"field":"QualityAnalyst","title":"QualityAnalyst","template":"#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QualityAnalyst","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3e4930d5-5ebf-49fc-9dae-119e7088c57d"}},{"encoded":true,"hidden":false,"field":"HandoverTo","title":"HandoverTo","template":"#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"HandoverTo","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"07603fac-0cb0-4f25-9dcb-3ed289efc0a0"}},{"encoded":true,"hidden":false,"field":"Requester","title":"Requester","template":"#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Requester","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"aae1cd82-306d-40f3-9e1d-a3a4673acf48"}},{"encoded":true,"hidden":false,"field":"Shift","title":"Shift","template":"#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Shift","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"deb11d76-1e98-4c09-9731-d86806a17a2a"}},{"encoded":true,"hidden":false,"field":"Country","title":"Country","template":"#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Country","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"726ad9b2-baa6-46db-8b2f-45a2ad037541"}},{"encoded":true,"hidden":false,"field":"DelayCause","title":"DelayCause","template":"#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"DelayCause","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"9e79bff7-f6ac-42d9-9e53-b3a7ccd6dd11"}},{"encoded":true,"hidden":true,"field":"Hierarchy","title":"Hierarchy","template":"#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Hierarchy","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"ac835f18-8d8f-4c28-88b4-a984d02eab7a","style":"display:none"}}]', 0, CAST(0x0000A686012F690C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 111, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, N'[{"encoded":true,"hidden":true,"field":"Id","title":"Id","template":"<span id=''Id#: Id #''>#: Id # </span>","width":10,"filterable":false,"attributes":{"style":"display:none"},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"a2015d42-0f8b-4edf-a83e-8af0090beac2","style":"display:none"}},{"encoded":true,"hidden":true,"field":"ExternalUId","title":"ExternalUId","template":"#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#","width":10,"attributes":{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"ExternalUId","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"90c265d8-61ff-4ee3-9dda-a9543c746baa","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":true,"field":"Name","title":"Name","template":"#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#","class":"undefined color ","style":"display:none"},"filterable":{"extra":false,"field":"Name","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"927d8da7-6abb-4c47-88f2-fcde3b0b2d4c","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":true,"field":"Manager","title":"Manager","template":"#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Manager","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"f58660f1-c8ac-4351-b569-e7936fd1761b","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":true,"field":"CreatedDate","title":"CreatedDate","template":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), \"dd-MM-yyyy\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"CreatedDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"405aaeea-9791-4880-b4c6-60ab4a84575b","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":false,"field":"OriginalReviewDate","title":"OriginalReviewDate","template":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":443,"attributes":{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"b561eafe-aa20-4682-8e1a-b3d3f3b68f75"}},{"encoded":true,"hidden":false,"field":"CurrentReviewDate","title":"CurrentReviewDate","template":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3cb63036-48d4-4dbb-a74c-e70d8bc7033c"}},{"encoded":true,"hidden":false,"field":"OriginalTargetDate","title":"OriginalTargetDate","template":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"6e061cbd-118b-4e8a-b609-14f488369775"}},{"encoded":true,"hidden":false,"field":"CurrentTargetDate","title":"CurrentTargetDate","template":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ee75e99d-1f69-4389-8c4b-bad81661a875"}},{"encoded":true,"hidden":false,"field":"Status","title":"Status","template":"#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Status","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"b311659d-afbc-41f5-b643-a52f4fbdf5b2"}},{"encoded":true,"hidden":false,"field":"Notes","title":"Notes","template":"#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#","width":10,"attributes":{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Notes","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ca8b4850-0ad1-413d-b157-b68b95238adc"}},{"encoded":true,"hidden":false,"field":"QAStatus","title":"QAStatus","template":"#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QAStatus","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"f62e6ecc-cccc-40e1-8415-24367f98d63e"}},{"encoded":true,"hidden":false,"field":"QualityAnalyst","title":"QualityAnalyst","template":"#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QualityAnalyst","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"3e4930d5-5ebf-49fc-9dae-119e7088c57d"}},{"encoded":true,"hidden":false,"field":"HandoverTo","title":"HandoverTo","template":"#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"HandoverTo","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"07603fac-0cb0-4f25-9dcb-3ed289efc0a0"}},{"encoded":true,"hidden":false,"field":"Requester","title":"Requester","template":"#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Requester","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"aae1cd82-306d-40f3-9e1d-a3a4673acf48"}},{"encoded":true,"hidden":false,"field":"Shift","title":"Shift","template":"#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Shift","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"deb11d76-1e98-4c09-9731-d86806a17a2a"}},{"encoded":true,"hidden":false,"field":"Country","title":"Country","template":"#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Country","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"726ad9b2-baa6-46db-8b2f-45a2ad037541"}},{"encoded":true,"hidden":false,"field":"DelayCause","title":"DelayCause","template":"#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"DelayCause","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"9e79bff7-f6ac-42d9-9e53-b3a7ccd6dd11"}},{"encoded":true,"hidden":true,"field":"Hierarchy","title":"Hierarchy","template":"#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Hierarchy","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"ac835f18-8d8f-4c28-88b4-a984d02eab7a","style":"display:none"}}]', 0, CAST(0x0000A686012F82D4 AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 112, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, N'[{"encoded":true,"hidden":true,"field":"Id","title":"Id","template":"<span id=''Id#: Id #''>#: Id # </span>","width":10,"filterable":false,"attributes":{"style":"display:none"},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"bcc21a67-b2b9-45c6-a974-c941bf12a9d6","style":"display:none"}},{"encoded":true,"hidden":false,"field":"ExternalUId","title":"ExternalUId","template":"#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#","width":10,"attributes":{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#"},"filterable":{"extra":false,"field":"ExternalUId","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"05aa6699-a62a-496e-98c7-5cdb68389dbe"}},{"encoded":true,"hidden":false,"field":"Name","title":"Name","template":"#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#","class":"undefined color "},"filterable":{"extra":false,"field":"Name","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"c144ba9d-8928-406f-8406-bafe14c28391"}},{"encoded":true,"hidden":false,"field":"Manager","title":"Manager","template":"#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Manager","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"d411340a-b3a2-4b45-a9f4-8c2b9fb39032"}},{"encoded":true,"hidden":false,"field":"CreatedDate","title":"CreatedDate","template":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), \"dd-MM-yyyy\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CreatedDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"0dee6a06-f302-4c88-a680-d5f2187195c2"}},{"encoded":true,"hidden":false,"field":"OriginalReviewDate","title":"OriginalReviewDate","template":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"d79d910c-4851-42c0-9b0a-cf66d65fe0c2"}},{"encoded":true,"hidden":false,"field":"CurrentReviewDate","title":"CurrentReviewDate","template":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"0b7843fe-5c00-4443-bc21-c5ba8ac1cbc0"}},{"encoded":true,"hidden":false,"field":"OriginalTargetDate","title":"OriginalTargetDate","template":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"28cf1d19-80c5-4446-bbae-6b2bc21a5ad2"}},{"encoded":true,"hidden":false,"field":"CurrentTargetDate","title":"CurrentTargetDate","template":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ef68f3bd-fff1-4c22-8864-036fdca67a74"}},{"encoded":true,"hidden":false,"field":"Status","title":"Status","template":"#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Status","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"1978fcfe-336f-4192-8f1e-4d62cbc3057f"}},{"encoded":true,"hidden":false,"field":"Notes","title":"Notes","template":"#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#","width":10,"attributes":{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Notes","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"06a58e93-f06e-4736-9f82-52639a30d6a4"}},{"encoded":true,"hidden":false,"field":"QAStatus","title":"QAStatus","template":"#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QAStatus","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"7541c5dd-ece7-4f79-b8dd-000f9a2985bb"}},{"encoded":true,"hidden":false,"field":"QualityAnalyst","title":"QualityAnalyst","template":"#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QualityAnalyst","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"32fb5fc7-6b45-434d-979d-85fb4060d785"}},{"encoded":true,"hidden":false,"field":"HandoverTo","title":"HandoverTo","template":"#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"HandoverTo","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"9208b2b3-aebe-4baf-b992-4c85dce08289"}},{"encoded":true,"hidden":false,"field":"Requester","title":"Requester","template":"#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Requester","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"62ff924b-0c2f-4eb7-b461-bf092de5c024"}},{"encoded":true,"hidden":false,"field":"Shift","title":"Shift","template":"#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Shift","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"51ad17b9-15a9-45b6-9e9d-fdbd7e044caf"}},{"encoded":true,"hidden":false,"field":"Country","title":"Country","template":"#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Country","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"83de2408-7eae-4678-91e3-d0a8b0287f8d"}},{"encoded":true,"hidden":false,"field":"DelayCause","title":"DelayCause","template":"#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"DelayCause","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"2a46ebb1-b818-4ec6-8811-7976e45b4e57"}},{"encoded":true,"hidden":true,"field":"Hierarchy","title":"Hierarchy","template":"#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Hierarchy","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"48b5faf1-b756-41a5-9351-96c47d37fa54","style":"display:none"}}]', 0, CAST(0x0000A6860136FDAC AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (20, 113, 1, N'11215332', N'Swetank Kakarla', NULL, N'swetank.k@nieto.in', N'swetank.k@nieto.in', NULL, NULL, NULL, NULL, N'[{"encoded":true,"hidden":true,"field":"Id","title":"Id","template":"<span id=''Id#: Id #''>#: Id # </span>","width":10,"filterable":false,"attributes":{"style":"display:none"},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"bcc21a67-b2b9-45c6-a974-c941bf12a9d6","style":"display:none"}},{"encoded":true,"hidden":true,"field":"ExternalUId","title":"ExternalUId","template":"#if(ExternalUId != undefined && ExternalUId != null ){# #=ExternalUId# #} else {#-#}#","width":10,"attributes":{"title":"#if(ExternalUId!= undefined && ExternalUId!=null) { # #=ExternalUId# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"ExternalUId","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"05aa6699-a62a-496e-98c7-5cdb68389dbe","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":true,"field":"Name","title":"Name","template":"#if(Name != undefined && Name != null ){# #=Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#","class":"undefined color ","style":"display:none"},"filterable":{"extra":false,"field":"Name","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"c144ba9d-8928-406f-8406-bafe14c28391","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":false,"field":"Manager","title":"Manager","template":"#if(Manager != undefined && Manager != null ){# #=Manager.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Manager!= undefined && Manager!=null) { # #=Manager.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Manager","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"d411340a-b3a2-4b45-a9f4-8c2b9fb39032"}},{"encoded":true,"hidden":true,"field":"CreatedDate","title":"CreatedDate","template":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #= kendo.toString( toDate(CreatedDate), \"dd-MM-yyyy\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CreatedDate!= undefined && CreatedDate!=null) { # #=kendo.toString( toDate(CreatedDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"CreatedDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"0dee6a06-f302-4c88-a680-d5f2187195c2","style":"display:none"},"footerAttributes":{"style":"display:none"}},{"encoded":true,"hidden":false,"field":"OriginalReviewDate","title":"OriginalReviewDate","template":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #= kendo.toString( toDate(OriginalReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalReviewDate!= undefined && OriginalReviewDate!=null) { # #=kendo.toString( toDate(OriginalReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"d79d910c-4851-42c0-9b0a-cf66d65fe0c2"}},{"encoded":true,"hidden":false,"field":"CurrentReviewDate","title":"CurrentReviewDate","template":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #= kendo.toString( toDate(CurrentReviewDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentReviewDate!= undefined && CurrentReviewDate!=null) { # #=kendo.toString( toDate(CurrentReviewDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentReviewDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"0b7843fe-5c00-4443-bc21-c5ba8ac1cbc0"}},{"encoded":true,"hidden":false,"field":"OriginalTargetDate","title":"OriginalTargetDate","template":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #= kendo.toString( toDate(OriginalTargetDate), \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(OriginalTargetDate!= undefined && OriginalTargetDate!=null) { # #=kendo.toString( toDate(OriginalTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"OriginalTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"28cf1d19-80c5-4446-bbae-6b2bc21a5ad2"}},{"encoded":true,"hidden":false,"field":"CurrentTargetDate","title":"CurrentTargetDate","template":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #= kendo.toString( CurrentTargetDate, \"dd-MM-yyyy HH:mm\" ) # # } else { #-# }#","width":10,"attributes":{"title":"#if(CurrentTargetDate!= undefined && CurrentTargetDate!=null) { # #=kendo.toString( toDate(CurrentTargetDate), ''dd-MM-yyyy HH:mm'' )# # } else { '' '' }#"},"filterable":{"extra":false,"field":"CurrentTargetDate","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"ef68f3bd-fff1-4c22-8864-036fdca67a74"}},{"encoded":true,"hidden":false,"field":"Status","title":"Status","template":"#if(Status != undefined && Status != null ){# #=Status.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Status!= undefined && Status!=null) { # #=Status.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Status","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"1978fcfe-336f-4192-8f1e-4d62cbc3057f"}},{"encoded":true,"hidden":false,"field":"Notes","title":"Notes","template":"#if(Notes != undefined && Notes != null ){# #=Notes# #} else {#-#}#","width":10,"attributes":{"title":"#if(Notes!= undefined && Notes!=null) { # #=Notes# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Notes","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"06a58e93-f06e-4736-9f82-52639a30d6a4"}},{"encoded":true,"hidden":false,"field":"QAStatus","title":"QAStatus","template":"#if(QAStatus != undefined && QAStatus != null ){# #=QAStatus.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QAStatus!= undefined && QAStatus!=null) { # #=QAStatus.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QAStatus","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"7541c5dd-ece7-4f79-b8dd-000f9a2985bb"}},{"encoded":true,"hidden":false,"field":"QualityAnalyst","title":"QualityAnalyst","template":"#if(QualityAnalyst != undefined && QualityAnalyst != null ){# #=QualityAnalyst.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(QualityAnalyst!= undefined && QualityAnalyst!=null) { # #=QualityAnalyst.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"QualityAnalyst","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"32fb5fc7-6b45-434d-979d-85fb4060d785"}},{"encoded":true,"hidden":false,"field":"HandoverTo","title":"HandoverTo","template":"#if(HandoverTo != undefined && HandoverTo != null ){# #=HandoverTo.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(HandoverTo!= undefined && HandoverTo!=null) { # #=HandoverTo.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"HandoverTo","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"9208b2b3-aebe-4baf-b992-4c85dce08289"}},{"encoded":true,"hidden":false,"field":"Requester","title":"Requester","template":"#if(Requester != undefined && Requester != null ){# #=Requester.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Requester!= undefined && Requester!=null) { # #=Requester.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Requester","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"62ff924b-0c2f-4eb7-b461-bf092de5c024"}},{"encoded":true,"hidden":false,"field":"Shift","title":"Shift","template":"#if(Shift != undefined && Shift != null ){# #=Shift.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Shift!= undefined && Shift!=null) { # #=Shift.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Shift","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"51ad17b9-15a9-45b6-9e9d-fdbd7e044caf"}},{"encoded":true,"hidden":false,"field":"Country","title":"Country","template":"#if(Country != undefined && Country != null ){# #=Country.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Country!= undefined && Country!=null) { # #=Country.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"Country","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"83de2408-7eae-4678-91e3-d0a8b0287f8d"}},{"encoded":true,"hidden":false,"field":"DelayCause","title":"DelayCause","template":"#if(DelayCause != undefined && DelayCause != null ){# #=DelayCause.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(DelayCause!= undefined && DelayCause!=null) { # #=DelayCause.Name# # } else { '' '' }#"},"filterable":{"extra":false,"field":"DelayCause","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"headerAttributes":{"id":"2a46ebb1-b818-4ec6-8811-7976e45b4e57"}},{"encoded":true,"hidden":true,"field":"Hierarchy","title":"Hierarchy","template":"#if(Hierarchy != undefined && Hierarchy != null ){# #=Hierarchy.Name# #} else {#-#}#","width":10,"attributes":{"title":"#if(Hierarchy!= undefined && Hierarchy!=null) { # #=Hierarchy.Name# # } else { '' '' }#","style":"display:none"},"filterable":{"extra":false,"field":"Hierarchy","operators":{"string":{"startswith":"Starts with","eq":"Is equal to","neq":"Is not equal to","contains":"Contains"}}},"footerAttributes":{"style":"display:none"},"headerAttributes":{"id":"48b5faf1-b756-41a5-9351-96c47d37fa54","style":"display:none"}}]', 0, CAST(0x0000A68601370964 AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (21, 64, 0, NULL, NULL, NULL, N'vaibhav.m@nieto.in', N'vaibhav.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D09B84 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (21, 77, 1, NULL, N'Vaibhav Mestry', NULL, N'vaibhav.m@nieto.in', N'vaibhav.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (21, 93, 1, NULL, N'Vaibhav Mestry', NULL, N'vaibhav.m@nieto.in', N'vaibhav.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 8, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (22, 65, 0, NULL, NULL, NULL, N'vinitt.j@nieto.in', N'vinitt.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D0AE44 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (22, 78, 1, NULL, N'Vinitt Jaiswal', NULL, N'vinitt.j@nieto.in', N'vinitt.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (22, 94, 1, NULL, N'Vinitt Jaiswal', NULL, N'vinitt.j@nieto.in', N'vinitt.j@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 7, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (23, 66, 0, NULL, NULL, NULL, N'ankush.m@nieto.in', N'ankush.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D110B4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (23, 79, 1, NULL, N'Ankush Mehra', NULL, N'ankush.m@nieto.in', N'ankush.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E00D2C120 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (23, 85, 1, NULL, N'Ankush Mehra', NULL, N'ankush.m@nieto.in', N'ankush.m@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013EEB5C AS DateTime), NULL, NULL, 10, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (24, 80, 0, NULL, NULL, NULL, N'accenture@nieto.in', N'accenture@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E010B56AC AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserHistory] ([Id], [REV], [REVTYPE], [ExternalUId], [Name], [Password], [EmailId], [SecondaryEmailId], [ContactNumber], [EmailSignature], [OOOFrom], [OOOTo], [WorkItemGridColumnState], [IsDeleted], [UpdatedOn], [Shift_id], [Supervisor_id], [Hierarchy_id], [Country_id], [UpdatedBy_id], [Manager_id]) VALUES (24, 81, 1, NULL, N'Accenture', NULL, N'accenture@nieto.in', N'accenture@nieto.in', NULL, NULL, NULL, NULL, NULL, 0, CAST(0x0000A67E013E9CD8 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[StatusHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 2, 1, N'Resolveda', 0, CAST(0x0000A669016806CC AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 3, 1, N'Resolved', 0, CAST(0x0000A6690168198C AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 8, 1, N'Resolveda', 0, CAST(0x0000A670003EB908 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 9, 1, N'Resolved', 0, CAST(0x0000A670003EC5EC AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 10, 1, N'Resolvedd', 0, CAST(0x0000A67000E0BF8C AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 11, 1, N'Resolvedda', 0, CAST(0x0000A67000E0EC14 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 12, 1, N'Resolved', 0, CAST(0x0000A67000E0FED4 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 13, 1, N'Resolvedd', 0, CAST(0x0000A67000F6B2B0 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 14, 1, N'Resolved', 0, CAST(0x0000A67000F7A2EC AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 15, 1, N'Resolvedd', 0, CAST(0x0000A67001004AF0 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 16, 1, N'Resolved', 0, CAST(0x0000A670013B1428 AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 6, 1, N'Closedd', 0, CAST(0x0000A670003D24BC AS DateTime), NULL)
INSERT [dbo].[StatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 7, 1, N'Closed', 0, CAST(0x0000A670003D3650 AS DateTime), NULL)
/****** Object:  Table [dbo].[QAStatusHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QAStatusHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[QAStatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (1, 37, 0, N'Fail', 0, CAST(0x0000A67D00E95BD8 AS DateTime), NULL)
INSERT [dbo].[QAStatusHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 38, 0, N'Pass', 0, CAST(0x0000A67D00E95BD8 AS DateTime), NULL)
/****** Object:  Table [dbo].[HierarchyHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HierarchyHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[HostName] [nvarchar](255) NULL,
	[Port] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[IsMailSynced] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Parent_id] [int] NULL,
	[Manager_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
	[IMAPHostName] [nvarchar](255) NULL,
	[IMAPPort] [nvarchar](255) NULL,
	[SMTPHostName] [nvarchar](255) NULL,
	[SMTPPort] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 45, 0, N'Shell', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E00B2D928 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 95, 1, N'Shell', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), NULL, 13, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 184, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 185, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 186, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 187, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 188, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 189, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 190, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 191, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 192, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 193, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 194, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (7, 195, 1, N'Shell', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 46, 0, N'WWW', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E00B2F7A0 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 53, 1, N'WWW', N'nieto.in', N'143', N'www@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E00B74530 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 96, 1, N'WWW', N'nieto.in', N'143', N'www@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 106, 1, N'WWW', N'imap.zoho.com', N'993', N'swetank@degenxsoft.com', N'carnbikes26', 1, 0, CAST(0x0000A68500F33234 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 114, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00719238 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 118, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00721320 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 126, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00745284 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 134, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00768AE0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 136, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00ADC460 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 138, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00B16930 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 140, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00B7D428 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 142, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00BA552C AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 144, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00BB4310 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 146, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00C34830 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 147, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00C42354 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 149, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00C9C96C AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 151, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00D791F0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 153, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00D8FD38 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 156, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00DBB67C AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 159, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68D0113B608 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 163, 1, N'WWW', N'imap.zoho.com', N'993', N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A68D01182594 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 184, 1, N'WWW', NULL, NULL, N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A692013454D0 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 188, 1, N'WWW', NULL, NULL, N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201348158 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 192, 1, N'WWW', NULL, NULL, N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'465')
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (8, 196, 1, N'WWW', NULL, NULL, N'www@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'587')
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 47, 0, N'DR', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E00B30DE4 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 52, 1, N'DR', N'nieto.in', N'143', N'dr@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E00B74530 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 97, 1, N'DR', N'nieto.in', N'143', N'dr@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 115, 1, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A0071A174 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 119, 1, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00721DAC AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 127, 1, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A007454DC AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 160, 1, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68D0113B860 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 164, 1, N'DR', N'imap.zoho.com', N'993', N'dr@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A68D01182594 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 185, 1, N'DR', NULL, NULL, N'dr@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A692013455FC AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 189, 1, N'DR', NULL, NULL, N'dr@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201348158 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (9, 193, 1, N'DR', NULL, NULL, N'dr@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'465')
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 48, 0, N'SWW', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E00B31744 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 51, 1, N'SWW', N'nieto.in', N'143', N'sww@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E00B74530 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 98, 1, N'SWW', N'nieto.in', N'143', N'sww@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 116, 1, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A0071A9A8 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 120, 1, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00722130 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 128, 1, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A00745734 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 161, 1, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68D0113BD10 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 165, 1, N'SWW', N'imap.zoho.com', N'993', N'sww@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A68D01182594 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 186, 1, N'SWW', NULL, NULL, N'sww@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A692013455FC AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 190, 1, N'SWW', NULL, NULL, N'sww@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201348158 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (10, 194, 1, N'SWW', NULL, NULL, N'sww@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'465')
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 49, 0, N'Testing', N'', N'', N'', N'', 0, 0, CAST(0x0000A67E00B3487C AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 50, 1, N'Testing', N'nieto.in', N'143', N'testing@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E00B74404 AS DateTime), 7, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 99, 1, N'Testing', N'nieto.in', N'143', N'testing@nieto.in', N'Password@2016', 0, 0, CAST(0x0000A67E0142A1C0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 117, 1, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A0071B0B0 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 121, 1, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A0072225C AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 129, 1, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68A0074598C AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 162, 1, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 1, 0, CAST(0x0000A68D0113BF68 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 166, 1, N'Testing', N'imap.zoho.com', N'993', N'testing@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A68D01182594 AS DateTime), 7, 22, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 187, 1, N'Testing', NULL, NULL, N'testing@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A692013455FC AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 191, 1, N'Testing', NULL, NULL, N'testing@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201348158 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', NULL, NULL)
INSERT [dbo].[HierarchyHistory] ([Id], [REV], [REVTYPE], [Name], [HostName], [Port], [UserName], [Password], [IsMailSynced], [IsDeleted], [UpdatedOn], [Parent_id], [Manager_id], [UpdatedBy_id], [IMAPHostName], [IMAPPort], [SMTPHostName], [SMTPPort]) VALUES (11, 195, 1, N'Testing', NULL, NULL, N'testing@nieto.in', N'Eto@2016', 0, 0, CAST(0x0000A69201363C50 AS DateTime), 7, 22, NULL, N'imap.zoho.com', N'993', N'smtp.zoho.com', N'465')
/****** Object:  Table [dbo].[DelayCauseHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DelayCauseHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DelayCauseHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 39, 0, N'Scope creep', 0, CAST(0x0000A67D00E98BE4 AS DateTime), NULL)
INSERT [dbo].[DelayCauseHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [UpdatedBy_id]) VALUES (3, 40, 0, N'Re-Work', 0, CAST(0x0000A67D00E98D10 AS DateTime), NULL)
/****** Object:  Table [dbo].[CountryHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Shift_id] [int] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CountryHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (1, 33, 0, N'United Kingdom', 0, CAST(0x0000A67D00CC75CC AS DateTime), 12, NULL)
INSERT [dbo].[CountryHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (2, 34, 0, N'India', 0, CAST(0x0000A67D00CC75CC AS DateTime), 9, NULL)
INSERT [dbo].[CountryHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (3, 35, 0, N'North America', 0, CAST(0x0000A67D00CC9B4C AS DateTime), 10, NULL)
INSERT [dbo].[CountryHistory] ([Id], [REV], [REVTYPE], [Name], [IsDeleted], [UpdatedOn], [Shift_id], [UpdatedBy_id]) VALUES (4, 36, 0, N'Brazil', 0, CAST(0x0000A67D00CCD710 AS DateTime), 11, NULL)
/****** Object:  Table [dbo].[ColumnHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColumnHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[GridClass] [nvarchar](255) NULL,
	[Field] [nvarchar](255) NULL,
	[Title] [nvarchar](255) NULL,
	[Format] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Visible] [bit] NULL,
	[Editable] [bit] NULL,
	[EditTemplateType] [nvarchar](255) NULL,
	[Template] [nvarchar](max) NULL,
	[Coloured] [bit] NULL,
	[Filterable] [bit] NULL,
	[HtmlAttributes] [nvarchar](max) NULL,
	[DefaultValue] [nvarchar](255) NULL,
	[ColumnOrder] [float] NULL,
	[FilterField] [nvarchar](255) NULL,
	[Required] [bit] NULL,
	[Cofigurable] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ColumnHistory] ([Id], [REV], [REVTYPE], [GridClass], [Field], [Title], [Format], [Width], [Visible], [Editable], [EditTemplateType], [Template], [Coloured], [Filterable], [HtmlAttributes], [DefaultValue], [ColumnOrder], [FilterField], [Required], [Cofigurable], [UpdatedOn], [UpdatedBy_id]) VALUES (2, 110, 1, N'WorkItem', N'Id', N'Id', NULL, 10, 0, 0, NULL, NULL, 0, 0, NULL, N'0', 0, NULL, 0, 1, NULL, NULL)
/****** Object:  Table [dbo].[CommandHistory]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommandHistory](
	[Id] [int] NOT NULL,
	[REV] [int] NOT NULL,
	[REVTYPE] [tinyint] NOT NULL,
	[GridClass] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Class] [nvarchar](255) NULL,
	[ClickHandler] [nvarchar](255) NULL,
	[ToolTip] [nvarchar](255) NULL,
	[Style] [nvarchar](255) NULL,
	[Text] [nvarchar](255) NULL,
	[CommandOrder] [float] NULL,
	[CommandLevel] [int] NULL,
	[CommandTemplate] [nvarchar](max) NULL,
	[Width] [nvarchar](255) NULL,
	[Visible] [bit] NULL,
	[Cofigurable] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[REV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (19, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (7, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (8, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (9, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (14, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (17, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (18, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (6, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (10, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (11, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (12, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (13, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (15, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (16, 3)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 4)
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/08/2016 09:12:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK6C5E09576FEB49B4]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Attachment]  WITH CHECK ADD  CONSTRAINT [FK6C5E09576FEB49B4] FOREIGN KEY([EtoMail_id])
REFERENCES [dbo].[EtoMail] ([Id])
GO
ALTER TABLE [dbo].[Attachment] CHECK CONSTRAINT [FK6C5E09576FEB49B4]
GO
/****** Object:  ForeignKey [FKD050644EB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Column]  WITH CHECK ADD  CONSTRAINT [FKD050644EB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Column] CHECK CONSTRAINT [FKD050644EB6DFFB37]
GO
/****** Object:  ForeignKey [FK1DAE3A1E2D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[ColumnHistory]  WITH CHECK ADD  CONSTRAINT [FK1DAE3A1E2D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[ColumnHistory] CHECK CONSTRAINT [FK1DAE3A1E2D76FD68]
GO
/****** Object:  ForeignKey [FKCBDB0AFB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Command]  WITH CHECK ADD  CONSTRAINT [FKCBDB0AFB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Command] CHECK CONSTRAINT [FKCBDB0AFB6DFFB37]
GO
/****** Object:  ForeignKey [FK28A044142D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[CommandHistory]  WITH CHECK ADD  CONSTRAINT [FK28A044142D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[CommandHistory] CHECK CONSTRAINT [FK28A044142D76FD68]
GO
/****** Object:  ForeignKey [FK2ABF29C3A3D1545F]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK2ABF29C3A3D1545F] FOREIGN KEY([Shift_id])
REFERENCES [dbo].[Shift] ([Id])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK2ABF29C3A3D1545F]
GO
/****** Object:  ForeignKey [FK2ABF29C3B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK2ABF29C3B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK2ABF29C3B6DFFB37]
GO
/****** Object:  ForeignKey [FK724EC9FA2D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[CountryHistory]  WITH CHECK ADD  CONSTRAINT [FK724EC9FA2D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[CountryHistory] CHECK CONSTRAINT [FK724EC9FA2D76FD68]
GO
/****** Object:  ForeignKey [FKADE95E7EB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[DelayCause]  WITH CHECK ADD  CONSTRAINT [FKADE95E7EB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[DelayCause] CHECK CONSTRAINT [FKADE95E7EB6DFFB37]
GO
/****** Object:  ForeignKey [FKBC9D1B622D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[DelayCauseHistory]  WITH CHECK ADD  CONSTRAINT [FKBC9D1B622D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[DelayCauseHistory] CHECK CONSTRAINT [FKBC9D1B622D76FD68]
GO
/****** Object:  ForeignKey [FKD250315369EBAC7C]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[EtoMail]  WITH CHECK ADD  CONSTRAINT [FKD250315369EBAC7C] FOREIGN KEY([WorkItem_id])
REFERENCES [dbo].[WorkItem] ([Id])
GO
ALTER TABLE [dbo].[EtoMail] CHECK CONSTRAINT [FKD250315369EBAC7C]
GO
/****** Object:  ForeignKey [FKF8B04F6F182926AC]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Hierarchy]  WITH CHECK ADD  CONSTRAINT [FKF8B04F6F182926AC] FOREIGN KEY([Parent_id])
REFERENCES [dbo].[Hierarchy] ([Id])
GO
ALTER TABLE [dbo].[Hierarchy] CHECK CONSTRAINT [FKF8B04F6F182926AC]
GO
/****** Object:  ForeignKey [FKF8B04F6F43A7FAB]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Hierarchy]  WITH CHECK ADD  CONSTRAINT [FKF8B04F6F43A7FAB] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Hierarchy] CHECK CONSTRAINT [FKF8B04F6F43A7FAB]
GO
/****** Object:  ForeignKey [FKF8B04F6FB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Hierarchy]  WITH CHECK ADD  CONSTRAINT [FKF8B04F6FB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Hierarchy] CHECK CONSTRAINT [FKF8B04F6FB6DFFB37]
GO
/****** Object:  ForeignKey [FKFA7A60F02D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[HierarchyHistory]  WITH CHECK ADD  CONSTRAINT [FKFA7A60F02D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[HierarchyHistory] CHECK CONSTRAINT [FKFA7A60F02D76FD68]
GO
/****** Object:  ForeignKey [FK19291A08B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[QAStatus]  WITH CHECK ADD  CONSTRAINT [FK19291A08B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[QAStatus] CHECK CONSTRAINT [FK19291A08B6DFFB37]
GO
/****** Object:  ForeignKey [FK7D6FD8CC2D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[QAStatusHistory]  WITH CHECK ADD  CONSTRAINT [FK7D6FD8CC2D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[QAStatusHistory] CHECK CONSTRAINT [FK7D6FD8CC2D76FD68]
GO
/****** Object:  ForeignKey [FKA7BA086443A7FAB]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Shift]  WITH CHECK ADD  CONSTRAINT [FKA7BA086443A7FAB] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Shift] CHECK CONSTRAINT [FKA7BA086443A7FAB]
GO
/****** Object:  ForeignKey [FKA7BA0864B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Shift]  WITH CHECK ADD  CONSTRAINT [FKA7BA0864B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Shift] CHECK CONSTRAINT [FKA7BA0864B6DFFB37]
GO
/****** Object:  ForeignKey [FK354C4C272D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[ShiftHistory]  WITH CHECK ADD  CONSTRAINT [FK354C4C272D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[ShiftHistory] CHECK CONSTRAINT [FK354C4C272D76FD68]
GO
/****** Object:  ForeignKey [FK8A82AD3DB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK8A82AD3DB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK8A82AD3DB6DFFB37]
GO
/****** Object:  ForeignKey [FKC948BF762D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[StatusHistory]  WITH CHECK ADD  CONSTRAINT [FKC948BF762D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[StatusHistory] CHECK CONSTRAINT [FKC948BF762D76FD68]
GO
/****** Object:  ForeignKey [FK7185C17C10275826]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK7185C17C10275826] FOREIGN KEY([Country_id])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK7185C17C10275826]
GO
/****** Object:  ForeignKey [FK7185C17C43A7FAB]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK7185C17C43A7FAB] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK7185C17C43A7FAB]
GO
/****** Object:  ForeignKey [FK7185C17C81D9C7C]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK7185C17C81D9C7C] FOREIGN KEY([Hierarchy_id])
REFERENCES [dbo].[Hierarchy] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK7185C17C81D9C7C]
GO
/****** Object:  ForeignKey [FK7185C17CA3D1545F]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK7185C17CA3D1545F] FOREIGN KEY([Shift_id])
REFERENCES [dbo].[Shift] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK7185C17CA3D1545F]
GO
/****** Object:  ForeignKey [FK7185C17CB6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK7185C17CB6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK7185C17CB6DFFB37]
GO
/****** Object:  ForeignKey [FK911C88812D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[UserHistory]  WITH CHECK ADD  CONSTRAINT [FK911C88812D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[UserHistory] CHECK CONSTRAINT [FK911C88812D76FD68]
GO
/****** Object:  ForeignKey [FKB105433510275826]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB105433510275826] FOREIGN KEY([Country_id])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB105433510275826]
GO
/****** Object:  ForeignKey [FKB10543352968F0C2]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB10543352968F0C2] FOREIGN KEY([QualityAnalyst_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB10543352968F0C2]
GO
/****** Object:  ForeignKey [FKB105433543A7FAB]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB105433543A7FAB] FOREIGN KEY([Manager_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB105433543A7FAB]
GO
/****** Object:  ForeignKey [FKB10543354D7BC26F]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB10543354D7BC26F] FOREIGN KEY([DelayCause_id])
REFERENCES [dbo].[DelayCause] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB10543354D7BC26F]
GO
/****** Object:  ForeignKey [FKB105433553F194B5]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB105433553F194B5] FOREIGN KEY([HandoverTo_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB105433553F194B5]
GO
/****** Object:  ForeignKey [FKB10543357128F7E3]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB10543357128F7E3] FOREIGN KEY([WorkType_id])
REFERENCES [dbo].[WorkType] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB10543357128F7E3]
GO
/****** Object:  ForeignKey [FKB105433581D9C7C]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB105433581D9C7C] FOREIGN KEY([Hierarchy_id])
REFERENCES [dbo].[Hierarchy] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB105433581D9C7C]
GO
/****** Object:  ForeignKey [FKB105433583D9DE3D]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB105433583D9DE3D] FOREIGN KEY([Status_id])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB105433583D9DE3D]
GO
/****** Object:  ForeignKey [FKB10543359BB503AB]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB10543359BB503AB] FOREIGN KEY([QAStatus_id])
REFERENCES [dbo].[QAStatus] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB10543359BB503AB]
GO
/****** Object:  ForeignKey [FKB1054335A3D1545F]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB1054335A3D1545F] FOREIGN KEY([Shift_id])
REFERENCES [dbo].[Shift] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB1054335A3D1545F]
GO
/****** Object:  ForeignKey [FKB1054335B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB1054335B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB1054335B6DFFB37]
GO
/****** Object:  ForeignKey [FKB1054335C63738A1]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItem]  WITH CHECK ADD  CONSTRAINT [FKB1054335C63738A1] FOREIGN KEY([Requester_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkItem] CHECK CONSTRAINT [FKB1054335C63738A1]
GO
/****** Object:  ForeignKey [FK35642B4A2D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkItemHistory]  WITH CHECK ADD  CONSTRAINT [FK35642B4A2D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[WorkItemHistory] CHECK CONSTRAINT [FK35642B4A2D76FD68]
GO
/****** Object:  ForeignKey [FKB04615A869EBAC7C]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkPlan]  WITH CHECK ADD  CONSTRAINT [FKB04615A869EBAC7C] FOREIGN KEY([WorkItem_id])
REFERENCES [dbo].[WorkItem] ([Id])
GO
ALTER TABLE [dbo].[WorkPlan] CHECK CONSTRAINT [FKB04615A869EBAC7C]
GO
/****** Object:  ForeignKey [FKB04615A8B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkPlan]  WITH CHECK ADD  CONSTRAINT [FKB04615A8B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkPlan] CHECK CONSTRAINT [FKB04615A8B6DFFB37]
GO
/****** Object:  ForeignKey [FK98241F2F2D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkPlanHistory]  WITH CHECK ADD  CONSTRAINT [FK98241F2F2D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[WorkPlanHistory] CHECK CONSTRAINT [FK98241F2F2D76FD68]
GO
/****** Object:  ForeignKey [FK13575759B6DFFB37]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkType]  WITH CHECK ADD  CONSTRAINT [FK13575759B6DFFB37] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[WorkType] CHECK CONSTRAINT [FK13575759B6DFFB37]
GO
/****** Object:  ForeignKey [FK73A7CA612D76FD68]    Script Date: 10/08/2016 09:12:42 ******/
ALTER TABLE [dbo].[WorkTypeHistory]  WITH CHECK ADD  CONSTRAINT [FK73A7CA612D76FD68] FOREIGN KEY([REV])
REFERENCES [dbo].[UpdateHistory] ([Id])
GO
ALTER TABLE [dbo].[WorkTypeHistory] CHECK CONSTRAINT [FK73A7CA612D76FD68]
GO
