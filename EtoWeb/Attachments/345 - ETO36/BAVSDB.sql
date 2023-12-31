USE [master]
GO
/****** Object:  Database [BAVS]    Script Date: 11/11/2015 15:59:16 ******/
CREATE DATABASE [BAVS] ON  PRIMARY 
( NAME = N'BAVS', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BAVS.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BAVS_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BAVS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BAVS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BAVS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BAVS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BAVS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BAVS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BAVS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BAVS] SET ARITHABORT OFF
GO
ALTER DATABASE [BAVS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BAVS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BAVS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BAVS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BAVS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BAVS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BAVS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BAVS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BAVS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BAVS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BAVS] SET  DISABLE_BROKER
GO
ALTER DATABASE [BAVS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BAVS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BAVS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BAVS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BAVS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BAVS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BAVS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BAVS] SET  READ_WRITE
GO
ALTER DATABASE [BAVS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BAVS] SET  MULTI_USER
GO
ALTER DATABASE [BAVS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BAVS] SET DB_CHAINING OFF
GO
USE [BAVS]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A3E5008608F1 AS DateTime), NULL, 1, CAST(0x0000A52E01551445 AS DateTime), 0, N'AGIhIObzMaCS3pkq6oxLDT8pe0LfyKNyj3qjA53UW+OZXNYVKiJ+pkgozyCQmIadUA==', CAST(0x0000A52E00BF0627 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (13, CAST(0x0000A409013AF060 AS DateTime), NULL, 1, NULL, 0, N'AED+m865W1clIUhmTfkXOYJ2t1xX5xSwnnES0YgQluhVDbLvMmrk9zoEdZOnauueWw==', CAST(0x0000A409013AF060 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (14, CAST(0x0000A40F0052B6E4 AS DateTime), NULL, 1, NULL, 0, N'AED9SlbD0hKi2CBPXb9JEShKTMYcPVrX7bE69ME68YQjCbFCubx2XUDzpecE6tB8QQ==', CAST(0x0000A40F0052B6E4 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (15, CAST(0x0000A40F00658303 AS DateTime), NULL, 1, NULL, 0, N'ACgR++N3pe0GG8tXmlweiTCr8F0T0liNjPVfc382p06WDFk5M3d0EQFgzEswDe034A==', CAST(0x0000A40F00658303 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (17, CAST(0x0000A40F007E3157 AS DateTime), NULL, 1, NULL, 0, N'ADVzhh9LLPNuHEvtFFNc3yyF8L5fpuW0TkmnLoZWt/+grrtxepJB3scCj0CggnbodA==', CAST(0x0000A40F007E3157 AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[State]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Religion]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Religion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rassi]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rassi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PinCode]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PinCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Occupation]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occupation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nakshatra]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nakshatra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberType]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberType] ON
INSERT [dbo].[MemberType] ([Id], [Name], [IsDeleted]) VALUES (1, N'Commitee', 0)
INSERT [dbo].[MemberType] ([Id], [Name], [IsDeleted]) VALUES (2, N'Member', 0)
INSERT [dbo].[MemberType] ([Id], [Name], [IsDeleted]) VALUES (3, N'Guest', 0)
INSERT [dbo].[MemberType] ([Id], [Name], [IsDeleted]) VALUES (4, N'Only Data', 0)
INSERT [dbo].[MemberType] ([Id], [Name], [IsDeleted]) VALUES (5, N'Administrator', 0)
SET IDENTITY_INSERT [dbo].[MemberType] OFF
/****** Object:  Table [dbo].[MemberRelationType]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberRelationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaritalStatus]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locality]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locality](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gothram]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gothram](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gender] ON
INSERT [dbo].[Gender] ([Id], [Name], [IsDeleted]) VALUES (1, N'Male', 0)
INSERT [dbo].[Gender] ([Id], [Name], [IsDeleted]) VALUES (2, N'Female', 0)
SET IDENTITY_INSERT [dbo].[Gender] OFF
/****** Object:  Table [dbo].[Entity]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullClassName] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Parent_id] [int] NULL,
	[Entity_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Entity] ON
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (1, N'BAVS.DataModels.Seva', N'Sevas', NULL, NULL)
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (2, N'BAVS.DataModels.SevaDependency', N'Seva Dependency', NULL, NULL)
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (3, N'BAVS.DataModels.Member', N'Members', NULL, NULL)
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (4, N'BAVS.DataModels.Event', N'Events', NULL, NULL)
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (5, N'BAVS.DataModels.EventSevaDependency', N'Event Seva Dependency', NULL, NULL)
INSERT [dbo].[Entity] ([Id], [FullClassName], [Name], [Parent_id], [Entity_id]) VALUES (6, N'BAVS.DataModels.Media', N'Media', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Entity] OFF
/****** Object:  Table [dbo].[Education]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted]) VALUES (1, N'India', NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted]) VALUES (2, N'Pakistan', NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted]) VALUES (3, N'USA', NULL)
INSERT [dbo].[Country] ([Id], [Name], [IsDeleted]) VALUES (4, N'UK', NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[City]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([Id], [Name], [IsDeleted]) VALUES (1, N'Daily', 0)
INSERT [dbo].[Category] ([Id], [Name], [IsDeleted]) VALUES (2, N'Weekly', 0)
INSERT [dbo].[Category] ([Id], [Name], [IsDeleted]) VALUES (3, N'Monthly', 0)
INSERT [dbo].[Category] ([Id], [Name], [IsDeleted]) VALUES (4, N'Yearly', NULL)
INSERT [dbo].[Category] ([Id], [Name], [IsDeleted]) VALUES (5, N'For Event', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Cast]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cast](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[PlotNumber] [nvarchar](255) NULL,
	[Building] [nvarchar](255) NULL,
	[Wing] [nvarchar](255) NULL,
	[FlatNumber] [nvarchar](255) NULL,
	[Country_id] [int] NULL,
	[State_id] [int] NULL,
	[City_id] [int] NULL,
	[PinCode_id] [int] NULL,
	[Locality_id] [int] NULL,
	[Sector_id] [int] NULL,
	[PinCode] [nvarchar](255) NULL,
	[Locality] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON
INSERT [dbo].[Address] ([Id], [IsDeleted], [PlotNumber], [Building], [Wing], [FlatNumber], [Country_id], [State_id], [City_id], [PinCode_id], [Locality_id], [Sector_id], [PinCode], [Locality], [Sector], [Country], [State], [City]) VALUES (1, 0, NULL, N'Sai Pride', N'b', N'901', NULL, NULL, NULL, NULL, NULL, NULL, N'400705', N'Sanpada', N'18', N'India', N'Maharashtra', N'Navi Mumbai')
INSERT [dbo].[Address] ([Id], [IsDeleted], [PlotNumber], [Building], [Wing], [FlatNumber], [Country_id], [State_id], [City_id], [PinCode_id], [Locality_id], [Sector_id], [PinCode], [Locality], [Sector], [Country], [State], [City]) VALUES (2, 0, NULL, N'Sai Pride', N'b', N'901', NULL, NULL, NULL, NULL, NULL, NULL, N'400705', N'Sanpada', N'18', N'India', N'Maharashtra', N'Navi Mumbai')
INSERT [dbo].[Address] ([Id], [IsDeleted], [PlotNumber], [Building], [Wing], [FlatNumber], [Country_id], [State_id], [City_id], [PinCode_id], [Locality_id], [Sector_id], [PinCode], [Locality], [Sector], [Country], [State], [City]) VALUES (6, 0, NULL, N'Sai Pride', N'b', N'903', NULL, NULL, NULL, NULL, NULL, NULL, N'400705', N'Sanpada', N'18', N'India', N'Maharashtra', N'Navi Mumbai')
INSERT [dbo].[Address] ([Id], [IsDeleted], [PlotNumber], [Building], [Wing], [FlatNumber], [Country_id], [State_id], [City_id], [PinCode_id], [Locality_id], [Sector_id], [PinCode], [Locality], [Sector], [Country], [State], [City]) VALUES (7, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Address] ([Id], [IsDeleted], [PlotNumber], [Building], [Wing], [FlatNumber], [Country_id], [State_id], [City_id], [PinCode_id], [Locality_id], [Sector_id], [PinCode], [Locality], [Sector], [Country], [State], [City]) VALUES (8, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Address] OFF
/****** Object:  Table [dbo].[EntityCommand]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntityCommand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CommandOrder] [int] NULL,
	[CommandLevel] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[CommandTemplate] [nvarchar](max) NULL,
	[Width] [nvarchar](255) NULL,
	[IsVisible] [bit] NULL,
	[Entity_id] [int] NULL,
	[Title] [nvarchar](255) NULL,
	[Text] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EntityCommand] ON
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (1, 1, 0, N'AddSeva', N'<a id=''AddSeva'' class=''k-button'' title=''Add new Seva'' onclick=''AddSeva()''><span class=''k-icon k-i-plus''></span></a>', N'50px', 1, 1, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (2, 1, 1, N'EditSeva', N'<a id=''EditSeva'' class=''k-button'' title=''Edit new Seva'' onclick=''EditSeva(#=Id#)''><span class=''k-icon k-edit''></span></a>', N'50px', 1, 1, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (3, 2, 0, N'save', NULL, N'50px', 0, 1, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (4, 3, 0, N'cancel', NULL, N'50px', 0, 1, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (5, 2, 0, N'save', NULL, N'50px', 1, 2, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (6, 3, 0, N'cancel', NULL, N'50px', 1, 2, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (7, 1, 0, N'create', NULL, N'50px', 1, 2, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (8, 3, 0, N'excel', NULL, NULL, 1, 3, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (9, 1, 0, N'save', NULL, N'50px', 1, 3, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (10, 2, 0, N'cancel', NULL, N'50px', 1, 3, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (11, 1, 0, N'AddEvent', N'<a id=''AddEvent'' class=''k-button'' title=''Add new Event'' onclick=''AddEvent()''><span class=''k-icon k-i-plus''></span></a>', N'50px', 1, 4, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (12, 1, 1, N'EditEvent', N'<a id=''EditEvent'' class=''k-button'' title=''Edit new Event'' onclick=''EditEvent(#=Id#)''><span class=''k-icon k-edit''></span></a>', N'50px', 1, 4, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (13, 2, 0, N'save', NULL, N'50px', 0, 4, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (14, 3, 0, N'cancel', NULL, N'50px', 0, 4, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (15, 1, 0, N'UploadImage', N'<a id=''UploadImage'' class=''k-button'' title=''Upload new image to gallery'' onclick=''UploadImage()''><span class=''k-icon k-i-plus''></span></a>', N'50px', 1, 6, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (16, 1, 1, N'DeleteImage', N'<a id=''DeleteImage'' class=''k-button'' title=''Delete Image'' onclick=''DeleteImage(#=Id#)''><span class=''k-icon k-close''></span></a>', N'50px', 1, 6, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (17, 5, 0, N'SendLogInCredentials', N'<a id=''SendLogInCredentials'' class=''k-button'' title=''Mail and Message login credentials'' onclick=''SendLogInCredentials()''>Send LogIn credentials</a>', N'150px', 1, 3, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (18, 6, 0, N'AlertMembers', N'<a id=''AlertMembers'' class=''k-button'' title=''Select Members and send alert'' onclick=''SendAlerts()''>Alert Members</a>', N'150px', 1, 3, N'', N'')
INSERT [dbo].[EntityCommand] ([Id], [CommandOrder], [CommandLevel], [Name], [CommandTemplate], [Width], [IsVisible], [Entity_id], [Title], [Text]) VALUES (19, 4, 0, N'SelectAll', N'<a class=''grid_command k-button'' title=''Select All''><input id=''SelectAll'' type=''checkbox'' onchange=''onSelectAll();''/></a>', N'100px', 1, 3, N'', N'')
SET IDENTITY_INSERT [dbo].[EntityCommand] OFF
/****** Object:  Table [dbo].[EntityColumn]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntityColumn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Format] [nvarchar](255) NULL,
	[Field] [nvarchar](255) NULL,
	[Width] [int] NULL,
	[Visible] [bit] NULL,
	[IsEditable] [bit] NULL,
	[EditTemplateType] [nvarchar](255) NULL,
	[Template] [nvarchar](max) NULL,
	[IsColoured] [bit] NULL,
	[IsFilterable] [bit] NULL,
	[HtmlAttributes] [nvarchar](255) NULL,
	[FieldEntityFullClassName] [nvarchar](255) NULL,
	[WhereClauseForDropDownData] [nvarchar](255) NULL,
	[ColumnOrder] [int] NULL,
	[Entity_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EntityColumn] ON
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (2, N'Seva', NULL, N'Name', 90, 1, NULL, NULL, N'#if(Name!= undefined && Name!=null) { # #=Name# # } else { "" }#', NULL, NULL, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, NULL, 1, 1)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (3, N'Description', NULL, N'Description', 150, 1, NULL, NULL, N'#if(Description!= undefined && Description!=null) { #<div style="max-height: 150px; overflow: scroll;">#=Description# </div> # } else { "" }#', NULL, NULL, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (4, N'Image', NULL, N'Image', 150, 1, NULL, NULL, N'#if(Image!= undefined && Image!=null) { #<img src=''../../Gallery/Images/#=Image.Name# '' alt="No Image"/> # } else { #No Image# }#', NULL, NULL, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (5, N'Price', NULL, N'Price', 50, 1, NULL, N'Numeric', N'#if(Price!= undefined && Price!=null) { # #=Price# # } else { "" }#', NULL, NULL, N'{"title":"#if(Price!= undefined && Price!=null) { # #=Price# # } else { '' '' }#"}', NULL, NULL, 4, 1)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (6, N'Category', NULL, N'Category', 70, 1, NULL, NULL, N'#if(Category!= undefined && Category!=null) { # #=Category.Name# # } else { "" }#', NULL, NULL, N'{"title":"#if(Category!= undefined && Category!=null) { # #=Category.Name# # } else { '' '' }#"}', NULL, NULL, 5, 1)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (7, N'Seva Start Date & Time', NULL, N'SevaStartDateTime', 65, 1, 1, N'DateTime', N'#if(SevaStartDateTime!= undefined && SevaStartDateTime!=null) { # #= kendo.toString( toDate(SevaStartDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaStartDateTime!= undefined && SevaStartDateTime!=null) { # #=kendo.toString( toDate(SevaStartDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 1, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (8, N'Seva End Date & Time', NULL, N'SevaEndDateTime', 60, 1, 1, N'DateTime', N'#if(SevaEndDateTime!= undefined && SevaEndDateTime!=null) { # #= kendo.toString( toDate(SevaEndDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaEndDateTime!= undefined && SevaEndDateTime!=null) { # #=kendo.toString( toDate(SevaEndDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 2, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (9, N'Last Registration Date Time', NULL, N'LastRegistrationDateTime', 80, 1, 1, N'DateTime', N'#if(LastRegistrationDateTime!= undefined && LastRegistrationDateTime!=null) { # #= kendo.toString( toDate(LastRegistrationDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(LastRegistrationDateTime!= undefined && LastRegistrationDateTime!=null) { # #=kendo.toString( toDate(LastRegistrationDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 3, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (10, N'Seva Perform Limit', NULL, N'SevaPerformLimit', 60, 1, 1, N'Numeric', N'#if(SevaPerformLimit!= undefined && SevaPerformLimit!=null) { # #=SevaPerformLimit# # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaPerformLimit!= undefined && SevaPerformLimit!=null) { # #=SevaPerformLimit# # } else { '' '' }#"}', NULL, NULL, 4, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (11, N'Registered Performers', NULL, N'RegisteredPerformers', 65, 1, 1, N'Numeric', N'#if(RegisteredPerformers!= undefined && RegisteredPerformers!=null) { # #=RegisteredPerformers# # } else { "" }#', NULL, NULL, N'{"title":"#if(RegisteredPerformers!= undefined && RegisteredPerformers!=null) { # #=RegisteredPerformers# # } else { '' '' }#"}', NULL, NULL, 5, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (12, N'Is Valid For Registrations', NULL, N'IsValidForRegistrations', 75, 1, 1, N'Boolean', N'#if(IsValidForRegistrations!= undefined && IsValidForRegistrations!=null) { # #=IsValidForRegistrations# # } else { "" }#', NULL, NULL, N'{"title":"#if(IsValidForRegistrations!= undefined && IsValidForRegistrations!=null) { # #=IsValidForRegistrations# # } else { '' '' }#"}', NULL, NULL, 6, 2)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (13, N'Name', NULL, N'Name', 90, 1, 1, NULL, N'#if(Name!= undefined && Name!=null) { # #=Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, NULL, 1, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (14, N'Last Name', NULL, N'LastName', 90, 1, 1, NULL, N'#if(LastName!= undefined && LastName!=null) { # #=LastName# # } else { "" }#', NULL, 1, N'{"title":"#if(LastName!= undefined && LastName!=null) { # #=LastName# # } else { '' '' }#"}', NULL, NULL, 2, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (15, N'DateOfBirth', NULL, N'DateOfBirth', 90, 1, 1, N'Date', N'#if(DateOfBirth!= undefined && DateOfBirth!=null) { # #=kendo.toString( toDate(DateOfBirth), "dd-MM-yyyy" )# # } else { "" }#', NULL, 1, N'{"title":"#if(DateOfBirth!= undefined && DateOfBirth!=null) { # #=kendo.toString( toDate(DateOfBirth), ''dd-MM-yyyy'' ) # # } else { '' '' }#"}', NULL, NULL, 1, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (16, N'Age', NULL, N'Age', 90, 1, 0, NULL, N'#if(Age!= undefined && Age!=null) { # #=Age# # } else { "" }#', NULL, 1, N'{"title":"#if(Age!= undefined && Age!=null) { # #=Age# # } else { '' '' }#"}', NULL, NULL, 2, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (17, N'Gender', NULL, N'Gender', 90, 1, 1, N'DropDown', N'#if(Gender!= undefined && Gender!=null) { # #=Gender.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Gender!= undefined && Gender!=null) { # #=Gender.Name# # } else { '' '' }#"}', NULL, NULL, 3, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (18, N'MobileNumber', NULL, N'MobileNumber', 90, 1, 1, NULL, N'#if(MobileNumber!= undefined && MobileNumber!=null) { # #=MobileNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(MobileNumber!= undefined && MobileNumber!=null) { # #=MobileNumber# # } else { '' '' }#"}', NULL, NULL, 4, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (19, N'EmailID', NULL, N'EmailID', 90, 1, 1, NULL, N'#if(EmailID!= undefined && EmailID!=null) { # #=EmailID# # } else { "" }#', NULL, 1, N'{"title":"#if(EmailID!= undefined && EmailID!=null) { # #=EmailID# # } else { '' '' }#"}', NULL, NULL, 5, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (21, N'MemberType', NULL, N'MemberType', 90, 1, 1, N'DropDown', N'#if(MemberType!= undefined && MemberType!=null) { # #=MemberType.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(MemberType!= undefined && MemberType!=null) { # #=MemberType.Name# # } else { '' '' }#"}', NULL, NULL, 7, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (22, N'Nakshatra', NULL, N'Nakshatra', 90, 1, 1, N'DropDown', N'#if(Nakshatra!= undefined && Nakshatra!=null) { # #=Nakshatra.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Nakshatra!= undefined && Nakshatra!=null) { # #=Nakshatra.Name# # } else { '' '' }#"}', NULL, NULL, 8, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (23, N'Gothram', NULL, N'Gothram', 90, 1, 1, N'DropDown', N'#if(Gothram!= undefined && Gothram!=null) { # #=Gothram.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Gothram!= undefined && Gothram!=null) { # #=Gothram.Name# # } else { '' '' }#"}', NULL, NULL, 9, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (24, N'Education', NULL, N'Education', 90, 1, 1, N'DropDown', N'#if(Education!= undefined && Education!=null) { # #=Education.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Education!= undefined && Education!=null) { # #=Education.Name# # } else { '' '' }#"}', NULL, NULL, 10, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (25, N'Occupation', NULL, N'Occupation', 90, 1, 1, N'DropDown', N'#if(Occupation!= undefined && Occupation!=null) { # #=Occupation.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Occupation!= undefined && Occupation!=null) { # #=Occupation.Name# # } else { '' '' }#"}', NULL, NULL, 11, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (26, N'Cast', NULL, N'Cast', 90, 1, 1, N'DropDown', N'#if(Cast!= undefined && Cast!=null) { # #=Cast.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Cast!= undefined && Cast!=null) { # #=Cast.Name# # } else { '' '' }#"}', NULL, NULL, 12, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (27, N'Religion', NULL, N'Religion', 90, 1, 1, N'DropDown', N'#if(Religion!= undefined && Religion!=null) { # #=Religion.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(Religion!= undefined && Religion!=null) { # #=Religion.Name# # } else { '' '' }#"}', NULL, NULL, 13, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (28, N'MaritalStatus', NULL, N'MaritalStatus', 90, 1, 1, N'DropDown', N'#if(MaritalStatus!= undefined && MaritalStatus!=null) { # #=MaritalStatus.Name# # } else { "" }#', NULL, 1, N'{"title":"#if(MaritalStatus!= undefined && MaritalStatus!=null) { # #=MaritalStatus.Name# # } else { '' '' }#"}', NULL, NULL, 14, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (30, N'PrimaryNumber', NULL, N'PrimaryNumber', 90, 1, 1, NULL, N'#if(PrimaryNumber!= undefined && PrimaryNumber!=null) { # #=PrimaryNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(PrimaryNumber!= undefined && PrimaryNumber!=null) { # #=PrimaryNumber# # } else { '' '' }#"}', NULL, NULL, 15, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (31, N'SecondaryNumber', NULL, N'SecondaryNumber', 90, 1, 1, NULL, N'#if(SecondaryNumber!= undefined && SecondaryNumber!=null) { # #=SecondaryNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(SecondaryNumber!= undefined && SecondaryNumber!=null) { # #=SecondaryNumber# # } else { '' '' }#"}', NULL, NULL, 16, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (32, N'SecondaryEmailID', NULL, N'SecondaryEmailID', 90, 1, 1, NULL, N'#if(SecondaryEmailID!= undefined && SecondaryEmailID!=null) { # #=SecondaryEmailID# # } else { "" }#', NULL, 1, N'{"title":"#if(SecondaryEmailID!= undefined && SecondaryEmailID!=null) { # #=SecondaryEmailID# # } else { '' '' }#"}', NULL, NULL, 17, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (34, N'RegistrationNumber', NULL, N'RegistrationNumber', 90, 1, 1, NULL, N'#if(RegistrationNumber!= undefined && RegistrationNumber!=null) { # #=RegistrationNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(RegistrationNumber!= undefined && RegistrationNumber!=null) { # #=RegistrationNumber# # } else { '' '' }#"}', NULL, NULL, 18, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (35, N'UpdatedOn', NULL, N'UpdatedOn', 90, 1, 1, NULL, N'#if(UpdatedOn!= undefined && UpdatedOn!=null) { # #=kendo.toString( toDate(UpdatedOn), "dd-MM-yyyy" )# # } else { "" }#', NULL, 1, N'{"title":"#if(UpdatedOn!= undefined && UpdatedOn!=null) { # #=kendo.toString( toDate(UpdatedOn), ''dd-MM-yyyy'' ) # # } else { '' '' }#"}', NULL, NULL, 19, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (37, N'Country', NULL, N'Country', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.Country# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.Country# # } else { '' '' }#"}', NULL, NULL, 20, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (38, N'State', NULL, N'State', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.State# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.State# # } else { '' '' }#"}', NULL, NULL, 21, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (39, N'City', NULL, N'City', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.City# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.City# # } else { '' '' }#"}', NULL, NULL, 22, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (40, N'PinCode', NULL, N'PinCode', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.PinCode# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.PinCode# # } else { '' '' }#"}', NULL, NULL, 23, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (41, N'Locality', NULL, N'Locality', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.Locality# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.Locality# # } else { '' '' }#"}', NULL, NULL, 24, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (42, N'Sector', NULL, N'Sector', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.Sector# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.Sector# # } else { '' '' }#"}', NULL, NULL, 25, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (43, N'PlotNumber', NULL, N'PlotNumber', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.PlotNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.PlotNumber# # } else { '' '' }#"}', NULL, NULL, 26, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (44, N'Building', NULL, N'Building', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.Building# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.Building# # } else { '' '' }#"}', NULL, NULL, 27, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (45, N'Wing', NULL, N'Wing', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.Wing# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.Wing# # } else { '' '' }#"}', NULL, NULL, 28, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (46, N'FlatNumber', NULL, N'FlatNumber', 90, 1, 1, NULL, N'#if(Address!= undefined && Address!=null) { # #=Address.FlatNumber# # } else { "" }#', NULL, 1, N'{"title":"#if(Address!= undefined && Address!=null) { # #=Address.FlatNumber# # } else { '' '' }#"}', NULL, NULL, 29, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (47, N'Prefix', NULL, N'Prefix', 90, 1, 1, NULL, N'#if(Prefix!= undefined && Prefix!=null) { # #=Prefix# # } else { "" }#', NULL, 1, N'{"title":"#if(Prefix!= undefined && Prefix!=null) { # #=Prefix# # } else { '' '' }#"}', NULL, NULL, 0, 3)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (48, N'Event', NULL, N'Name', 90, 1, NULL, NULL, N'#if(Name!= undefined && Name!=null) { # #=Name# # } else { "" }#', NULL, NULL, N'{"title":"#if(Name!= undefined && Name!=null) { # #=Name# # } else { '' '' }#"}', NULL, NULL, 1, 4)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (49, N'Description', NULL, N'Description', 150, 1, NULL, NULL, N'#if(Description!= undefined && Description!=null) { #<div style="max-height: 150px; overflow: scroll;">#=Description# </div> # } else { "" }#', NULL, NULL, NULL, NULL, NULL, 2, 4)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (50, N'Image', NULL, N'Image', 150, 1, NULL, NULL, N'#if(Image!= undefined && Image!=null) { #<img src=''../../Gallery/Images/#=Image.Name# '' alt="No Image"/> # } else { " #No Image# " }#', NULL, NULL, NULL, NULL, NULL, 3, 4)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (51, N'Event Start Date & Time', NULL, N'EventStartDateTime', 65, 1, 1, N'DateTime', N'#if(EventStartDateTime!= undefined && EventStartDateTime!=null) { # #= kendo.toString( toDate(EventStartDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(EventStartDateTime!= undefined && EventStartDateTime!=null) { # #=kendo.toString( toDate(EventStartDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 4, 4)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (52, N'Event End Date & Time', NULL, N'EventEndDateTime', 60, 1, 1, N'DateTime', N'#if(EventEndDateTime!= undefined && EventEndDateTime!=null) { # #= kendo.toString( toDate(EventEndDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(EventEndDateTime!= undefined && EventEndDateTime!=null) { # #=kendo.toString( toDate(EventEndDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 5, 4)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (53, N'Seva Start Date & Time', NULL, N'SevaDependency.SevaStartDateTime', 65, 1, 1, N'DateTime', N'#if(SevaDependency.SevaStartDateTime!= undefined && SevaDependency.SevaStartDateTime!=null) { # #= kendo.toString( toDate(SevaDependency.SevaStartDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.SevaStartDateTime!= undefined && SevaDependency.SevaStartDateTime!=null) { # #=kendo.toString( toDate(SevaDependency.SevaStartDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 1, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (54, N'Seva End Date & Time', NULL, N'SevaDependency.SevaEndDateTime', 60, 1, 1, N'DateTime', N'#if(SevaDependency.SevaEndDateTime!= undefined && SevaDependency.SevaEndDateTime!=null) { # #= kendo.toString( toDate(SevaDependency.SevaEndDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.SevaEndDateTime!= undefined && SevaDependency.SevaEndDateTime!=null) { # #=kendo.toString( toDate(SevaDependency.SevaEndDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 2, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (55, N'Last Registration Date Time', NULL, N'SevaDependency.LastRegistrationDateTime', 80, 1, 1, N'DateTime', N'#if(SevaDependency.LastRegistrationDateTime!= undefined && SevaDependency.LastRegistrationDateTime!=null) { # #= kendo.toString( toDate(SevaDependency.LastRegistrationDateTime), "dd-MM-yyyy HH.mm.ss" ) # # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.LastRegistrationDateTime!= undefined && SevaDependency.LastRegistrationDateTime!=null) { # #=kendo.toString( toDate(SevaDependency.LastRegistrationDateTime), ''dd-MM-yyyy HH.mm.ss'' )# # } else { '' '' }#"}', NULL, NULL, 3, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (56, N'Seva Perform Limit', NULL, N'SevaDependency.SevaPerformLimit', 60, 1, 1, N'Numeric', N'#if(SevaDependency.SevaPerformLimit!= undefined && SevaDependency.SevaPerformLimit!=null) { # #=SevaDependency.SevaPerformLimit# # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.SevaPerformLimit!= undefined && SevaDependency.SevaPerformLimit!=null) { # #=SevaDependency.SevaPerformLimit# # } else { '' '' }#"}', NULL, NULL, 4, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (57, N'Registered Performers', NULL, N'SevaDependency.RegisteredPerformers', 65, 1, 1, N'Numeric', N'#if(SevaDependency.RegisteredPerformers!= undefined && SevaDependency.RegisteredPerformers!=null) { # #=SevaDependency.RegisteredPerformers# # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.RegisteredPerformers!= undefined && SevaDependency.RegisteredPerformers!=null) { # #=SevaDependency.RegisteredPerformers# # } else { '' '' }#"}', NULL, NULL, 5, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (58, N'Is Valid For Registrations', NULL, N'SevaDependency.IsValidForRegistrations', 75, 1, 1, N'Boolean', N'#if(SevaDependency.IsValidForRegistrations!= undefined && SevaDependency.IsValidForRegistrations!=null) { # #=SevaDependency.IsValidForRegistrations# # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.IsValidForRegistrations!= undefined && SevaDependency.IsValidForRegistrations!=null) { # #=SevaDependency.IsValidForRegistrations# # } else { '' '' }#"}', NULL, NULL, 6, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (60, N'Seva', NULL, N'SevaDependency.Seva.Name', 90, 1, NULL, NULL, N'#if(SevaDependency.Seva.Name!= undefined && SevaDependency.Seva.Name!=null) { # #=SevaDependency.Seva.Name# # } else { "" }#', NULL, NULL, N'{"title":"#if(SevaDependency.Seva.Name!= undefined && SevaDependency.Seva.Name!=null) { # #=SevaDependency.Seva.Name# # } else { '' '' }#"}', NULL, NULL, 0, 5)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (61, N'Description', NULL, N'Description', 150, 1, NULL, NULL, N'#if(Description!= undefined && Description!=null) { #<div style="max-height: 150px; overflow: scroll;">#=Description# </div> # } else { "" }#', NULL, NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[EntityColumn] ([Id], [Title], [Format], [Field], [Width], [Visible], [IsEditable], [EditTemplateType], [Template], [IsColoured], [IsFilterable], [HtmlAttributes], [FieldEntityFullClassName], [WhereClauseForDropDownData], [ColumnOrder], [Entity_id]) VALUES (62, N'Image', NULL, N'MediaURL', 150, 1, NULL, NULL, N'<img src=''../../Gallery/Images/#=Name# '' alt="An Image for Title"/>', NULL, NULL, NULL, NULL, NULL, 2, 6)
SET IDENTITY_INSERT [dbo].[EntityColumn] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Action] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[DateOfBirth] [datetime] NULL,
	[Age] [int] NULL,
	[MobileNumber] [nvarchar](255) NULL,
	[EmailID] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[IsAdministrator] [bit] NULL,
	[PrimaryNumber] [nvarchar](255) NULL,
	[SecondaryNumber] [nvarchar](255) NULL,
	[SecondaryEmailID] [nvarchar](255) NULL,
	[TempProfilePicturePath] [nvarchar](255) NULL,
	[ProfilePictureURL] [nvarchar](255) NULL,
	[RegistrationNumber] [nvarchar](255) NULL,
	[UpdatedBy_id] [int] NULL,
	[Gender_id] [int] NULL,
	[MemberType_id] [int] NULL,
	[Nakshatra_id] [int] NULL,
	[Gothram_id] [int] NULL,
	[Rassi_id] [int] NULL,
	[Education_id] [int] NULL,
	[Occupation_id] [int] NULL,
	[Cast_id] [int] NULL,
	[Religion_id] [int] NULL,
	[Address_id] [int] NULL,
	[MaritalStatus_id] [int] NULL,
	[Prefix] [nvarchar](255) NULL,
	[LoginName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [LastName], [DateOfBirth], [Age], [MobileNumber], [EmailID], [Password], [IsAdministrator], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [Gender_id], [MemberType_id], [Nakshatra_id], [Gothram_id], [Rassi_id], [Education_id], [Occupation_id], [Cast_id], [Religion_id], [Address_id], [MaritalStatus_id], [Prefix], [LoginName]) VALUES (2, N'Admin', 0, CAST(0x0000A52E0119AAA4 AS DateTime), N'SaveProfile', N'BAVS', NULL, 0, N'0', N'bavs@gmail.com', N'password2', 0, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, N'admin')
INSERT [dbo].[Member] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [LastName], [DateOfBirth], [Age], [MobileNumber], [EmailID], [Password], [IsAdministrator], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [Gender_id], [MemberType_id], [Nakshatra_id], [Gothram_id], [Rassi_id], [Education_id], [Occupation_id], [Cast_id], [Religion_id], [Address_id], [MaritalStatus_id], [Prefix], [LoginName]) VALUES (13, N'Swetank', 0, CAST(0x0000A40F00D80720 AS DateTime), N'SaveProfile', N'Kakarla', CAST(0x000083F300000000 AS DateTime), 22, N'0', N'swet69kak@gmail.com', N'carnbikes26', 0, N'8097541316', N'9322272126', N'stk26kakarla@gmail.com', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, N'swetank.kakarla')
INSERT [dbo].[Member] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [LastName], [DateOfBirth], [Age], [MobileNumber], [EmailID], [Password], [IsAdministrator], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [Gender_id], [MemberType_id], [Nakshatra_id], [Gothram_id], [Rassi_id], [Education_id], [Occupation_id], [Cast_id], [Religion_id], [Address_id], [MaritalStatus_id], [Prefix], [LoginName]) VALUES (14, N'Ravi', 0, CAST(0x0000A40F00AD59BC AS DateTime), N'RegisterMember', N'Kakarla', CAST(0x000071A200000000 AS DateTime), 35, N'0', N'ravikak@yahoo.co.in', N'jackal9', 0, NULL, NULL, N'ravikak9@gmail.com', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, N'ravi.kakarla')
INSERT [dbo].[Member] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [LastName], [DateOfBirth], [Age], [MobileNumber], [EmailID], [Password], [IsAdministrator], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [Gender_id], [MemberType_id], [Nakshatra_id], [Gothram_id], [Rassi_id], [Education_id], [Occupation_id], [Cast_id], [Religion_id], [Address_id], [MaritalStatus_id], [Prefix], [LoginName]) VALUES (15, N'Padma', 0, CAST(0x0000A40F00C034B0 AS DateTime), N'RegisterMember', N'Kakarla', CAST(0x0000718500000000 AS DateTime), 35, N'0', N'padma33@gmail.com', N'padmakak', 0, N'9892056742', N'9322272126', N'paddu@gmail.com', NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'padma.kakarla')
INSERT [dbo].[Member] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [LastName], [DateOfBirth], [Age], [MobileNumber], [EmailID], [Password], [IsAdministrator], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [Gender_id], [MemberType_id], [Nakshatra_id], [Gothram_id], [Rassi_id], [Education_id], [Occupation_id], [Cast_id], [Religion_id], [Address_id], [MaritalStatus_id], [Prefix], [LoginName]) VALUES (17, N'Suyesha', 0, CAST(0x0000A40F00D90B48 AS DateTime), N'RegisterMember', N'Kakarla', CAST(0x00008AD100000000 AS DateTime), 17, N'0', N'suyeshachoco@gmail.cm', N'carnbikes97', 0, NULL, NULL, N'yeshachoco@gmail.com', NULL, NULL, NULL, NULL, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, N'suyesha.kakarla')
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[MemberRelation]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberRelation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsImmediate] [bit] NULL,
	[MemberRelationType_id] [int] NULL,
	[RelatedMember_id] [int] NULL,
	[Member_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MemberHistory]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[EmailID] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Action] [nvarchar](255) NULL,
	[Prefix] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[DateOfBirth] [datetime] NULL,
	[Age] [int] NULL,
	[Gender] [nvarchar](255) NULL,
	[MobileNumber] [nvarchar](255) NULL,
	[MemberType] [nvarchar](255) NULL,
	[IsAdministrator] [bit] NULL,
	[Country] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[PinCode] [nvarchar](255) NULL,
	[Locality] [nvarchar](255) NULL,
	[Sector] [nvarchar](255) NULL,
	[PlotNumber] [nvarchar](255) NULL,
	[Building] [nvarchar](255) NULL,
	[Wing] [nvarchar](255) NULL,
	[FlatNumber] [nvarchar](255) NULL,
	[Nakshatra] [nvarchar](255) NULL,
	[Gothram] [nvarchar](255) NULL,
	[Rassi] [nvarchar](255) NULL,
	[Education] [nvarchar](255) NULL,
	[Occupation] [nvarchar](255) NULL,
	[Cast] [nvarchar](255) NULL,
	[Religion] [nvarchar](255) NULL,
	[MaritalStatus] [nvarchar](255) NULL,
	[PrimaryNumber] [nvarchar](255) NULL,
	[SecondaryNumber] [nvarchar](255) NULL,
	[SecondaryEmailID] [nvarchar](255) NULL,
	[TempProfilePicturePath] [nvarchar](255) NULL,
	[ProfilePictureURL] [nvarchar](255) NULL,
	[RegistrationNumber] [nvarchar](255) NULL,
	[UpdatedBy_id] [int] NULL,
	[LoginName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberHistory] ON
INSERT [dbo].[MemberHistory] ([Id], [Name], [EmailID], [Password], [IsDeleted], [UpdatedOn], [Action], [Prefix], [LastName], [DateOfBirth], [Age], [Gender], [MobileNumber], [MemberType], [IsAdministrator], [Country], [State], [City], [PinCode], [Locality], [Sector], [PlotNumber], [Building], [Wing], [FlatNumber], [Nakshatra], [Gothram], [Rassi], [Education], [Occupation], [Cast], [Religion], [MaritalStatus], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [LoginName]) VALUES (1, N'Admin', N'bavs@gmail.com', N'password', 0, CAST(0x0000A52500BEA640 AS DateTime), NULL, NULL, N'BAVS', NULL, 0, N'Male', N'0', N'Administrator', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MemberHistory] ([Id], [Name], [EmailID], [Password], [IsDeleted], [UpdatedOn], [Action], [Prefix], [LastName], [DateOfBirth], [Age], [Gender], [MobileNumber], [MemberType], [IsAdministrator], [Country], [State], [City], [PinCode], [Locality], [Sector], [PlotNumber], [Building], [Wing], [FlatNumber], [Nakshatra], [Gothram], [Rassi], [Education], [Occupation], [Cast], [Religion], [MaritalStatus], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [LoginName]) VALUES (2, N'Admin', N'bavs@gmail.com', N'password1', 0, CAST(0x0000A52E0112E0C0 AS DateTime), NULL, NULL, N'BAVS', NULL, 0, N'Male', N'0', N'Administrator', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MemberHistory] ([Id], [Name], [EmailID], [Password], [IsDeleted], [UpdatedOn], [Action], [Prefix], [LastName], [DateOfBirth], [Age], [Gender], [MobileNumber], [MemberType], [IsAdministrator], [Country], [State], [City], [PinCode], [Locality], [Sector], [PlotNumber], [Building], [Wing], [FlatNumber], [Nakshatra], [Gothram], [Rassi], [Education], [Occupation], [Cast], [Religion], [MaritalStatus], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [LoginName]) VALUES (3, N'Admin', N'bavs@gmail.com', N'password1', 0, CAST(0x0000A52E01176564 AS DateTime), NULL, NULL, N'BAVS', NULL, 0, N'Male', N'0', N'Administrator', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MemberHistory] ([Id], [Name], [EmailID], [Password], [IsDeleted], [UpdatedOn], [Action], [Prefix], [LastName], [DateOfBirth], [Age], [Gender], [MobileNumber], [MemberType], [IsAdministrator], [Country], [State], [City], [PinCode], [Locality], [Sector], [PlotNumber], [Building], [Wing], [FlatNumber], [Nakshatra], [Gothram], [Rassi], [Education], [Occupation], [Cast], [Religion], [MaritalStatus], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [LoginName]) VALUES (4, N'Admin', N'bavs@gmail.com', N'password1', 0, CAST(0x0000A52E0119250C AS DateTime), NULL, NULL, N'BAVS', NULL, 0, N'Male', N'0', N'Administrator', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[MemberHistory] ([Id], [Name], [EmailID], [Password], [IsDeleted], [UpdatedOn], [Action], [Prefix], [LastName], [DateOfBirth], [Age], [Gender], [MobileNumber], [MemberType], [IsAdministrator], [Country], [State], [City], [PinCode], [Locality], [Sector], [PlotNumber], [Building], [Wing], [FlatNumber], [Nakshatra], [Gothram], [Rassi], [Education], [Occupation], [Cast], [Religion], [MaritalStatus], [PrimaryNumber], [SecondaryNumber], [SecondaryEmailID], [TempProfilePicturePath], [ProfilePictureURL], [RegistrationNumber], [UpdatedBy_id], [LoginName]) VALUES (5, N'Admin', N'bavs@gmail.com', N'password2', 0, CAST(0x0000A52E0119AAA4 AS DateTime), NULL, NULL, N'BAVS', NULL, 0, N'Male', N'0', N'Administrator', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'admin@bavs.in', NULL, NULL, NULL, NULL, N'admin')
SET IDENTITY_INSERT [dbo].[MemberHistory] OFF
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Action] [nvarchar](255) NULL,
	[MediaURL] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsImage] [bit] NULL,
	[IsVideo] [bit] NULL,
	[IsSeva] [bit] NULL,
	[IsEvent] [bit] NULL,
	[UpdatedBy_id] [int] NULL,
	[AlbumId_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Media] ON
INSERT [dbo].[Media] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [MediaURL], [Description], [IsImage], [IsVideo], [IsSeva], [IsEvent], [UpdatedBy_id], [AlbumId_id]) VALUES (2, N'satyanarayan.jpg', 0, CAST(0x0000A5250110D744 AS DateTime), NULL, N'H:\SWETANK\Visual Studio 2010\Projects\BAVS Reloaded\BAVS\BAVS\Gallery\Images\satyanarayan.jpg', NULL, 1, 0, 1, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Media] OFF
/****** Object:  Table [dbo].[Alert]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[Message] [nvarchar](255) NULL,
	[IsMail] [bit] NULL,
	[IsSMS] [bit] NULL,
	[Recipient_id] [int] NULL,
	[Sender_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Action] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[EventStartDateTime] [datetime] NULL,
	[EventEndDateTime] [datetime] NULL,
	[IsValidForRegistrations] [bit] NULL,
	[UpdatedBy_id] [int] NULL,
	[Image_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Event] ON
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (1, N'Makara Sankranthi', 0, CAST(0x0000A49200A8BDA8 AS DateTime), NULL, N'', CAST(0x0000A58D0130DEE0 AS DateTime), CAST(0x0000A58E0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (2, N'Sri Kanyaka Parmeswari Agnipravesam day', 0, CAST(0x0000A4910156A788 AS DateTime), NULL, N'', CAST(0x0000A4270130DEE0 AS DateTime), CAST(0x0000A4280062E080 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (3, N'16th Prathishta Day Celebrations', 0, CAST(0x0000A49101574364 AS DateTime), NULL, N'', CAST(0x0000A4390130DEE0 AS DateTime), CAST(0x0000A43A0062E080 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (4, N'Mahashivrati Saamuhika Rudrabhishekam & Bilva Pooja', 0, CAST(0x0000A492008B1AF0 AS DateTime), NULL, N'', CAST(0x0000A4410130DEE0 AS DateTime), CAST(0x0000A4420128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (5, N'Ugadi', 0, CAST(0x0000A49200AA80D4 AS DateTime), NULL, N'', CAST(0x0000A5E10130DEE0 AS DateTime), CAST(0x0000A5E20128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (6, N'Sri Rama Navami', 0, CAST(0x0000A492008C724C AS DateTime), NULL, N'', CAST(0x0000A4680130DEE0 AS DateTime), CAST(0x0000A4920128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (7, N'Akshaya Trutiya', 0, CAST(0x0000A492008CE524 AS DateTime), NULL, N'', CAST(0x0000A4800130DEE0 AS DateTime), CAST(0x0000A4810128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (8, N'Sri Kanyaka Parameswari Jayanthi & Devi Procession', 0, CAST(0x0000A492008D93C0 AS DateTime), NULL, N'', CAST(0x0000A4870130DEE0 AS DateTime), CAST(0x0000A4880128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (9, N'Sri Hanuman Jayanthi', 0, CAST(0x0000A492008E0A1C AS DateTime), NULL, N'', CAST(0x0000A4960130DEE0 AS DateTime), CAST(0x0000A4970128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (10, N'Sravaana Maasa Rudraabhishekams', 0, CAST(0x0000A492008EB78C AS DateTime), NULL, N'', CAST(0x0000A4F40130DEE0 AS DateTime), CAST(0x0000A512011826C0 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (11, N'Shiva Sahasranama Homan & Bilwa Pooja', 0, CAST(0x0000A492008F3ACC AS DateTime), NULL, N'', CAST(0x0000A4FC0130DEE0 AS DateTime), CAST(0x0000A4FD0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (12, N'Saamuhika Varalakshmi Pooja', 0, CAST(0x0000A492008FB95C AS DateTime), NULL, N'', CAST(0x0000A5080130DEE0 AS DateTime), CAST(0x0000A4920128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (13, N'Sri Krishna Janmashtami', 0, CAST(0x0000A492009022D4 AS DateTime), NULL, N'', CAST(0x0000A5090130DEE0 AS DateTime), CAST(0x0000A50A0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (14, N'Vinayaka Chavithi', 0, CAST(0x0000A49200909354 AS DateTime), NULL, N'', CAST(0x0000A5150130DEE0 AS DateTime), CAST(0x0000A5160128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (15, N'1st Day of Dasara Navarati Kalasa Sthapana', 0, CAST(0x0000A49200931DB8 AS DateTime), NULL, N'', CAST(0x0000A52F0130DEE0 AS DateTime), CAST(0x0000A5300128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (16, N'Mahanavami', 0, CAST(0x0000A49200A311B4 AS DateTime), NULL, N'', CAST(0x0000A5370130DEE0 AS DateTime), CAST(0x0000A538011826C0 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (17, N'Vijayadasami', 0, CAST(0x0000A49200A386E4 AS DateTime), NULL, N'', CAST(0x0000A5380130DEE0 AS DateTime), CAST(0x0000A5390128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (18, N'Deepavali', 0, CAST(0x0000A49200A3E378 AS DateTime), NULL, N'', CAST(0x0000A54C0130DEE0 AS DateTime), CAST(0x0000A54D0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (19, N'Kaarthika Maasa Rudrabhishekams', 0, CAST(0x0000A49200A4991C AS DateTime), NULL, N'', CAST(0x0000A54D0130DEE0 AS DateTime), CAST(0x0000A56C011826C0 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (20, N'Shiva Shahashranama Homam', 0, CAST(0x0000A49200A51554 AS DateTime), NULL, N'', CAST(0x0000A5570130DEE0 AS DateTime), CAST(0x0000A5580128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (21, N'Shiva Shahashranama Homam & Bilwa Pooja', 0, CAST(0x0000A49200A5AB54 AS DateTime), NULL, N'', CAST(0x0000A5570130DEE0 AS DateTime), CAST(0x0000A5580128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (22, N'Kaarthika Poumami', 0, CAST(0x0000A49200A61148 AS DateTime), NULL, N'', CAST(0x0000A55A0130DEE0 AS DateTime), CAST(0x0000A55B0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (23, N'Maargashira Maasa Lakshmi Pooja', 0, CAST(0x0000A49200A6F374 AS DateTime), NULL, N'', CAST(0x0000A56B0130DEE0 AS DateTime), CAST(0x0000A58A0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (24, N'Vaikuntha Ekaadasi', 0, CAST(0x0000A49200A75968 AS DateTime), NULL, N'', CAST(0x0000A5740130DEE0 AS DateTime), CAST(0x0000A5750128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (25, N'Saamuhika Gayatri Maha Mantra Japa Yagnam', 0, CAST(0x0000A49200A7CB14 AS DateTime), NULL, N'', CAST(0x0000A5780130DEE0 AS DateTime), CAST(0x0000A5790128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (26, N'New Year Eve', 0, CAST(0x0000A49200A84878 AS DateTime), NULL, N'', CAST(0x0000A57F00FF6EA0 AS DateTime), CAST(0x0000A57F0128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (27, N'Sri Kanyaka Parameswari Agnipravesham Day', 0, CAST(0x0000A49200A92BD0 AS DateTime), NULL, N'', CAST(0x0000A5A70130DEE0 AS DateTime), CAST(0x0000A5A80128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (28, N'17th Prathishta Day Celebrations', 0, CAST(0x0000A49200A992F0 AS DateTime), NULL, N'', CAST(0x0000A5B80130DEE0 AS DateTime), CAST(0x0000A5B90128A180 AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Event] ([Id], [Name], [IsDeleted], [UpdatedOn], [Action], [Description], [EventStartDateTime], [EventEndDateTime], [IsValidForRegistrations], [UpdatedBy_id], [Image_id]) VALUES (29, N'Mahashivaratri ', 0, CAST(0x0000A49200A9E9A8 AS DateTime), NULL, N'', CAST(0x0000A5C10130DEE0 AS DateTime), CAST(0x0000A5C20128A180 AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Event] OFF
/****** Object:  Table [dbo].[Seva]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seva](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [nvarchar](255) NULL,
	[IsDeleted] [bit] NULL,
	[UpdatedOn] [datetime] NULL,
	[Action] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[LastRegistrationHours] [float] NULL,
	[FirstShiftPerformingStartTime] [datetime] NULL,
	[FirstShiftPerformingEndTime] [datetime] NULL,
	[SecondShiftPerformingStartTime] [datetime] NULL,
	[SecondShiftPerformingEndTime] [datetime] NULL,
	[DayOfWeek] [nvarchar](255) NULL,
	[IsSeperateSankalpamAvailable] [bit] NULL,
	[UpdatedBy_id] [int] NULL,
	[Image_id] [int] NULL,
	[Category_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Seva] ON
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (1, N'Annadanam', NULL, 0, CAST(0x0000A49200AEAB3C AS DateTime), NULL, N'', 4001, 48, NULL, NULL, NULL, NULL, N'Sunday', 0, NULL, NULL, 2)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (2, N'Sri Satyanarayana Pooja', NULL, 0, CAST(0x0000A52501157808 AS DateTime), NULL, N'', 1501, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, 2, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (3, N'Ekadasam Rudrabhishekam', NULL, 0, CAST(0x0000A49200AE5484 AS DateTime), NULL, N'', 1501, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (4, N'Saswatha Pooja ( Any One day in a Year During the life time of the Donor )', NULL, 0, CAST(0x0000A49200AF6DC4 AS DateTime), NULL, N'', 1116, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (5, N'One day Special Pooja & Prasadam', NULL, 0, CAST(0x0000A49200B025C0 AS DateTime), NULL, N'', 558, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (6, N'Ganapati Homam', NULL, 0, CAST(0x0000A49200B07444 AS DateTime), NULL, N'', 516, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 3)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (7, N'Shiva Shahasranama Homam & Bilwa Pooja', NULL, 0, CAST(0x0000A49200B0EF50 AS DateTime), NULL, N'', 516, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (8, N'Vadamala for Anjaneya', NULL, 0, CAST(0x0000A49200B16CB4 AS DateTime), NULL, N'', 501, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (9, N'Vehicle Pooja ( 4 Wheeler )', NULL, 0, CAST(0x0000A49200B2005C AS DateTime), NULL, N'', 351, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (10, N'108 Swama Kamal Pushpa Pooja', NULL, 0, CAST(0x0000A49200B26650 AS DateTime), NULL, N'', 251, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (11, N'Swayamvara Pushpanjali Pooja', NULL, 0, CAST(0x0000A49200B32B30 AS DateTime), NULL, N'', 251, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (12, N'Ekavaram Rudrabhishekam', NULL, 0, CAST(0x0000A49200B39958 AS DateTime), NULL, N'', 201, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (13, N'Ksheerabhishekam', NULL, 0, CAST(0x0000A49200B3F718 AS DateTime), NULL, N'', 201, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (14, N'Ashtalakshmi Archana', NULL, 0, CAST(0x0000A49200B45154 AS DateTime), NULL, N'', 201, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (15, N'Sahasranama Archana', NULL, 0, CAST(0x0000A49200B499FC AS DateTime), NULL, N'', 201, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (16, N'Maargashira Lakshmi Pooja', NULL, 0, CAST(0x0000A49200B4E2A4 AS DateTime), NULL, N'', 201, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (17, N'Vehicle Pooja', NULL, 0, CAST(0x0000A49200B51E68 AS DateTime), NULL, N'', 151, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (18, N'Bilwaarchana', NULL, 0, CAST(0x0000A49200B550CC AS DateTime), NULL, N'', 51, 48, CAST(0x002D247F002932E0 AS DateTime), CAST(0x002D247F004A2860 AS DateTime), CAST(0x002D247F018344A0 AS DateTime), CAST(0x002D247F0039ADA0 AS DateTime), NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Seva] ([Id], [Name], [Value], [IsDeleted], [UpdatedOn], [Action], [Description], [Price], [LastRegistrationHours], [FirstShiftPerformingStartTime], [FirstShiftPerformingEndTime], [SecondShiftPerformingStartTime], [SecondShiftPerformingEndTime], [DayOfWeek], [IsSeperateSankalpamAvailable], [UpdatedBy_id], [Image_id], [Category_id]) VALUES (19, N'Seva Test', NULL, 0, CAST(0x0000A52B002ADE9C AS DateTime), NULL, N'Desc', 1501, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 5)
SET IDENTITY_INSERT [dbo].[Seva] OFF
/****** Object:  Table [dbo].[SevaDependency]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SevaDependency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NULL,
	[SevaStartDateTime] [datetime] NULL,
	[SevaEndDateTime] [datetime] NULL,
	[LastRegistrationDateTime] [datetime] NULL,
	[SevaPerformLimit] [int] NULL,
	[RegisteredPerformers] [int] NULL,
	[ForEvent] [bit] NULL,
	[Seva_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventSevaDependency]    Script Date: 11/11/2015 15:59:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventSevaDependency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Event_id] [int] NULL,
	[SevaDependency_id] [int] NULL,
	[Seva_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EventSevaDependency] ON
INSERT [dbo].[EventSevaDependency] ([Id], [Event_id], [SevaDependency_id], [Seva_id]) VALUES (1, 1, NULL, 19)
SET IDENTITY_INSERT [dbo].[EventSevaDependency] OFF
/****** Object:  Default [DF__webpages___IsCon__05D8E0BE]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
/****** Object:  Default [DF__webpages___Passw__06CD04F7]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
/****** Object:  ForeignKey [FK8E48BFAB91767533]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Entity]  WITH CHECK ADD  CONSTRAINT [FK8E48BFAB91767533] FOREIGN KEY([Entity_id])
REFERENCES [dbo].[Entity] ([Id])
GO
ALTER TABLE [dbo].[Entity] CHECK CONSTRAINT [FK8E48BFAB91767533]
GO
/****** Object:  ForeignKey [FK8E48BFABF1D9ECE0]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Entity]  WITH CHECK ADD  CONSTRAINT [FK8E48BFABF1D9ECE0] FOREIGN KEY([Parent_id])
REFERENCES [dbo].[Entity] ([Id])
GO
ALTER TABLE [dbo].[Entity] CHECK CONSTRAINT [FK8E48BFABF1D9ECE0]
GO
/****** Object:  ForeignKey [FK8C1490CB853C38D5]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CB853C38D5] FOREIGN KEY([Country_id])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CB853C38D5]
GO
/****** Object:  ForeignKey [FK8C1490CBC79B318E]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CBC79B318E] FOREIGN KEY([City_id])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CBC79B318E]
GO
/****** Object:  ForeignKey [FK8C1490CBCADCEBE]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CBCADCEBE] FOREIGN KEY([State_id])
REFERENCES [dbo].[State] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CBCADCEBE]
GO
/****** Object:  ForeignKey [FK8C1490CBE25D67FF]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CBE25D67FF] FOREIGN KEY([PinCode_id])
REFERENCES [dbo].[PinCode] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CBE25D67FF]
GO
/****** Object:  ForeignKey [FK8C1490CBE9E9AC89]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CBE9E9AC89] FOREIGN KEY([Sector_id])
REFERENCES [dbo].[Sector] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CBE9E9AC89]
GO
/****** Object:  ForeignKey [FK8C1490CBEC46931E]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK8C1490CBEC46931E] FOREIGN KEY([Locality_id])
REFERENCES [dbo].[Locality] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK8C1490CBEC46931E]
GO
/****** Object:  ForeignKey [FK29C589E991767533]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[EntityCommand]  WITH CHECK ADD  CONSTRAINT [FK29C589E991767533] FOREIGN KEY([Entity_id])
REFERENCES [dbo].[Entity] ([Id])
GO
ALTER TABLE [dbo].[EntityCommand] CHECK CONSTRAINT [FK29C589E991767533]
GO
/****** Object:  ForeignKey [FKC5D7C49791767533]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[EntityColumn]  WITH CHECK ADD  CONSTRAINT [FKC5D7C49791767533] FOREIGN KEY([Entity_id])
REFERENCES [dbo].[Entity] ([Id])
GO
ALTER TABLE [dbo].[EntityColumn] CHECK CONSTRAINT [FKC5D7C49791767533]
GO
/****** Object:  ForeignKey [FK5E90D9F71B713744]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F71B713744] FOREIGN KEY([Religion_id])
REFERENCES [dbo].[Religion] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F71B713744]
GO
/****** Object:  ForeignKey [FK5E90D9F71EE1405F]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F71EE1405F] FOREIGN KEY([Education_id])
REFERENCES [dbo].[Education] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F71EE1405F]
GO
/****** Object:  ForeignKey [FK5E90D9F74C0C55B4]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F74C0C55B4] FOREIGN KEY([Nakshatra_id])
REFERENCES [dbo].[Nakshatra] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F74C0C55B4]
GO
/****** Object:  ForeignKey [FK5E90D9F772F77606]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F772F77606] FOREIGN KEY([MaritalStatus_id])
REFERENCES [dbo].[MaritalStatus] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F772F77606]
GO
/****** Object:  ForeignKey [FK5E90D9F7774C8758]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7774C8758] FOREIGN KEY([Occupation_id])
REFERENCES [dbo].[Occupation] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7774C8758]
GO
/****** Object:  ForeignKey [FK5E90D9F788BCABDA]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F788BCABDA] FOREIGN KEY([Cast_id])
REFERENCES [dbo].[Cast] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F788BCABDA]
GO
/****** Object:  ForeignKey [FK5E90D9F78BD03375]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F78BD03375] FOREIGN KEY([Gender_id])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F78BD03375]
GO
/****** Object:  ForeignKey [FK5E90D9F7AF19857A]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7AF19857A] FOREIGN KEY([Rassi_id])
REFERENCES [dbo].[Rassi] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7AF19857A]
GO
/****** Object:  ForeignKey [FK5E90D9F7C41165A6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7C41165A6] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7C41165A6]
GO
/****** Object:  ForeignKey [FK5E90D9F7D4AF759B]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7D4AF759B] FOREIGN KEY([Address_id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7D4AF759B]
GO
/****** Object:  ForeignKey [FK5E90D9F7EE90EAEE]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7EE90EAEE] FOREIGN KEY([MemberType_id])
REFERENCES [dbo].[MemberType] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7EE90EAEE]
GO
/****** Object:  ForeignKey [FK5E90D9F7F1CC6AF3]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [FK5E90D9F7F1CC6AF3] FOREIGN KEY([Gothram_id])
REFERENCES [dbo].[Gothram] ([Id])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [FK5E90D9F7F1CC6AF3]
GO
/****** Object:  ForeignKey [FK8C9E61C1183DF5B5]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[MemberRelation]  WITH CHECK ADD  CONSTRAINT [FK8C9E61C1183DF5B5] FOREIGN KEY([Member_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[MemberRelation] CHECK CONSTRAINT [FK8C9E61C1183DF5B5]
GO
/****** Object:  ForeignKey [FK8C9E61C18B2669D6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[MemberRelation]  WITH CHECK ADD  CONSTRAINT [FK8C9E61C18B2669D6] FOREIGN KEY([RelatedMember_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[MemberRelation] CHECK CONSTRAINT [FK8C9E61C18B2669D6]
GO
/****** Object:  ForeignKey [FK8C9E61C193217ADE]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[MemberRelation]  WITH CHECK ADD  CONSTRAINT [FK8C9E61C193217ADE] FOREIGN KEY([MemberRelationType_id])
REFERENCES [dbo].[MemberRelationType] ([Id])
GO
ALTER TABLE [dbo].[MemberRelation] CHECK CONSTRAINT [FK8C9E61C193217ADE]
GO
/****** Object:  ForeignKey [FK983898B3C41165A6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[MemberHistory]  WITH CHECK ADD  CONSTRAINT [FK983898B3C41165A6] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[MemberHistory] CHECK CONSTRAINT [FK983898B3C41165A6]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
/****** Object:  ForeignKey [FKB7600A30580EE5]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FKB7600A30580EE5] FOREIGN KEY([AlbumId_id])
REFERENCES [dbo].[Album] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FKB7600A30580EE5]
GO
/****** Object:  ForeignKey [FKB7600A30C41165A6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FKB7600A30C41165A6] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FKB7600A30C41165A6]
GO
/****** Object:  ForeignKey [FK2AF37E728A909ABC]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK2AF37E728A909ABC] FOREIGN KEY([Sender_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK2AF37E728A909ABC]
GO
/****** Object:  ForeignKey [FK2AF37E72DB606FD1]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Alert]  WITH CHECK ADD  CONSTRAINT [FK2AF37E72DB606FD1] FOREIGN KEY([Recipient_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Alert] CHECK CONSTRAINT [FK2AF37E72DB606FD1]
GO
/****** Object:  ForeignKey [FKA2FD7DF6201768DF]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FKA2FD7DF6201768DF] FOREIGN KEY([Image_id])
REFERENCES [dbo].[Media] ([Id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FKA2FD7DF6201768DF]
GO
/****** Object:  ForeignKey [FKA2FD7DF6C41165A6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FKA2FD7DF6C41165A6] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FKA2FD7DF6C41165A6]
GO
/****** Object:  ForeignKey [FKBEB8EC69201768DF]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Seva]  WITH CHECK ADD  CONSTRAINT [FKBEB8EC69201768DF] FOREIGN KEY([Image_id])
REFERENCES [dbo].[Media] ([Id])
GO
ALTER TABLE [dbo].[Seva] CHECK CONSTRAINT [FKBEB8EC69201768DF]
GO
/****** Object:  ForeignKey [FKBEB8EC694782AA82]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Seva]  WITH CHECK ADD  CONSTRAINT [FKBEB8EC694782AA82] FOREIGN KEY([Category_id])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Seva] CHECK CONSTRAINT [FKBEB8EC694782AA82]
GO
/****** Object:  ForeignKey [FKBEB8EC69C41165A6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[Seva]  WITH CHECK ADD  CONSTRAINT [FKBEB8EC69C41165A6] FOREIGN KEY([UpdatedBy_id])
REFERENCES [dbo].[Member] ([Id])
GO
ALTER TABLE [dbo].[Seva] CHECK CONSTRAINT [FKBEB8EC69C41165A6]
GO
/****** Object:  ForeignKey [FK636E5A24F45A2C72]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[SevaDependency]  WITH CHECK ADD  CONSTRAINT [FK636E5A24F45A2C72] FOREIGN KEY([Seva_id])
REFERENCES [dbo].[Seva] ([Id])
GO
ALTER TABLE [dbo].[SevaDependency] CHECK CONSTRAINT [FK636E5A24F45A2C72]
GO
/****** Object:  ForeignKey [FKD2F9F46965DD0C55]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[EventSevaDependency]  WITH CHECK ADD  CONSTRAINT [FKD2F9F46965DD0C55] FOREIGN KEY([SevaDependency_id])
REFERENCES [dbo].[SevaDependency] ([Id])
GO
ALTER TABLE [dbo].[EventSevaDependency] CHECK CONSTRAINT [FKD2F9F46965DD0C55]
GO
/****** Object:  ForeignKey [FKD2F9F469A677D8D6]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[EventSevaDependency]  WITH CHECK ADD  CONSTRAINT [FKD2F9F469A677D8D6] FOREIGN KEY([Event_id])
REFERENCES [dbo].[Event] ([Id])
GO
ALTER TABLE [dbo].[EventSevaDependency] CHECK CONSTRAINT [FKD2F9F469A677D8D6]
GO
/****** Object:  ForeignKey [FKD2F9F469F45A2C72]    Script Date: 11/11/2015 15:59:17 ******/
ALTER TABLE [dbo].[EventSevaDependency]  WITH CHECK ADD  CONSTRAINT [FKD2F9F469F45A2C72] FOREIGN KEY([Seva_id])
REFERENCES [dbo].[Seva] ([Id])
GO
ALTER TABLE [dbo].[EventSevaDependency] CHECK CONSTRAINT [FKD2F9F469F45A2C72]
GO
