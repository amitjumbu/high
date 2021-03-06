USE [Membership]
GO
/****** Object:  Table [dbo].[tblBenefit]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBenefit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MembershipName] [nvarchar](50) NULL,
	[MemberPrefixCode] [nvarchar](50) NULL,
	[MembershipCategory] [nvarchar](50) NULL,
	[Duration] [nvarchar](50) NULL,
	[Fees] [float] NULL,
	[CreditLimit] [float] NULL,
	[MaxAdult] [int] NULL,
	[MaxChild] [int] NULL,
 CONSTRAINT [PK_tblBenefit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MembershipName] [nvarchar](50) NULL,
	[CategoryType] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDuration]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DurationName] [nvarchar](50) NULL,
	[DurationDays] [int] NULL,
 CONSTRAINT [PK_tblDuration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFamily]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFamily](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Names] [nvarchar](50) NULL,
	[Birthdate] [date] NULL,
	[Category] [nvarchar](50) NULL,
	[Bloodgroup] [nvarchar](50) NULL,
	[Relation] [nvarchar](50) NULL,
	[ContactNo] [varchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MarritalStatus] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[CardNo] [nvarchar](50) NULL,
	[Photo] [nvarchar](300) NULL,
 CONSTRAINT [PK_tblFamily] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImages]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Img1] [nvarchar](50) NULL,
	[Img2] [nvarchar](50) NULL,
	[Img3] [nvarchar](50) NULL,
	[Img4] [nvarchar](50) NULL,
	[Img5] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarrital]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarrital](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GenderTypes] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblGender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMemberInfo]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMemberInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberCategory] [nvarchar](50) NULL,
	[MemberName] [nvarchar](50) NULL,
	[CardNumber] [int] NULL,
	[MemberCode] [nvarchar](50) NULL,
	[MembershipEndDate] [date] NULL,
	[Fees] [float] NULL,
	[CreditLimit] [float] NULL,
	[AvailableCredit] [float] NULL,
	[TotalTaxAmount] [float] NULL,
	[NetAmount] [float] NULL,
	[AmountPaid] [float] NULL,
 CONSTRAINT [PK_tblMemberInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPersonal]    Script Date: 4/1/2021 4:39:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPersonal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[ZipCode] [char](6) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Comments] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Nationality] [nvarchar](50) NULL,
	[ReferredBy] [nvarchar](50) NULL,
	[Photo] [nvarchar](300) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_tblPersonal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblBenefit] ON 

INSERT [dbo].[tblBenefit] ([Id], [MembershipName], [MemberPrefixCode], [MembershipCategory], [Duration], [Fees], [CreditLimit], [MaxAdult], [MaxChild]) VALUES (1, N'Test 1', N'T1', N'Regular', N'2', 20, 45, 10, 9)
INSERT [dbo].[tblBenefit] ([Id], [MembershipName], [MemberPrefixCode], [MembershipCategory], [Duration], [Fees], [CreditLimit], [MaxAdult], [MaxChild]) VALUES (2, N'Benefit 1', N'B1', N'Regular', N'3', 20, 45, 50, 3)
SET IDENTITY_INSERT [dbo].[tblBenefit] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([Id], [MembershipName], [CategoryType], [Description]) VALUES (1, N'Test 1', N'Regular', N'Testing 101')
INSERT [dbo].[tblCategory] ([Id], [MembershipName], [CategoryType], [Description]) VALUES (2, N'Test 2', N'Corporate', N'Testing 102')
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDuration] ON 

INSERT [dbo].[tblDuration] ([Id], [DurationName], [DurationDays]) VALUES (1, N'Duration Test', 50)
INSERT [dbo].[tblDuration] ([Id], [DurationName], [DurationDays]) VALUES (2, N'Duration 01042021', 30)
SET IDENTITY_INSERT [dbo].[tblDuration] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFamily] ON 

INSERT [dbo].[tblFamily] ([Id], [Names], [Birthdate], [Category], [Bloodgroup], [Relation], [ContactNo], [Email], [MarritalStatus], [Age], [CardNo], [Photo]) VALUES (1, N'Family 1', CAST(N'2021-03-22' AS Date), N'Regular', N'B-', NULL, NULL, NULL, N'Female', 12, N'147', N'~\PersonalImages\cup-of-coffee-1280537_640.jpg')
INSERT [dbo].[tblFamily] ([Id], [Names], [Birthdate], [Category], [Bloodgroup], [Relation], [ContactNo], [Email], [MarritalStatus], [Age], [CardNo], [Photo]) VALUES (2, N'Harmaan', CAST(N'2021-04-13' AS Date), N'Corporate', N'A-', NULL, NULL, NULL, N'Male', NULL, N'32', N'~\PersonalImages\cup.jpg')
SET IDENTITY_INSERT [dbo].[tblFamily] OFF
GO
SET IDENTITY_INSERT [dbo].[tblImages] ON 

INSERT [dbo].[tblImages] ([Id], [Img1], [Img2], [Img3], [Img4], [Img5]) VALUES (1, NULL, N'~\PersonalImages\cup-of-coffee-1280537_640.jpg', NULL, N'~\PersonalImages\cup-of-coffee-1280537_640.jpg', NULL)
SET IDENTITY_INSERT [dbo].[tblImages] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMarrital] ON 

INSERT [dbo].[tblMarrital] ([Id], [GenderTypes]) VALUES (1, N'Male')
INSERT [dbo].[tblMarrital] ([Id], [GenderTypes]) VALUES (2, N'Female')
SET IDENTITY_INSERT [dbo].[tblMarrital] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMemberInfo] ON 

INSERT [dbo].[tblMemberInfo] ([Id], [MemberCategory], [MemberName], [CardNumber], [MemberCode], [MembershipEndDate], [Fees], [CreditLimit], [AvailableCredit], [TotalTaxAmount], [NetAmount], [AmountPaid]) VALUES (1, N'Regular', N'Test 1', 123, N'78-12', CAST(N'2021-03-16' AS Date), NULL, NULL, 20, NULL, NULL, NULL)
INSERT [dbo].[tblMemberInfo] ([Id], [MemberCategory], [MemberName], [CardNumber], [MemberCode], [MembershipEndDate], [Fees], [CreditLimit], [AvailableCredit], [TotalTaxAmount], [NetAmount], [AmountPaid]) VALUES (2, N'Corporate', N'Test 2', 12, N'qw-54', CAST(N'2021-04-14' AS Date), 20, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblMemberInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPersonal] ON 

INSERT [dbo].[tblPersonal] ([Id], [FirstName], [LastName], [Address], [ZipCode], [City], [State], [Country], [Gender], [Comments], [Category], [Nationality], [ReferredBy], [Photo], [IsActive]) VALUES (1, N'Personal 1', N'Personal Last', N'123', N'456987', N'Pune', N'Maharashtra', N'Australia', N'Female', N'123456', N'Regular', NULL, N'Self', N'~\PersonalImages\cup-of-coffee-1280537_640.jpg', 1)
INSERT [dbo].[tblPersonal] ([Id], [FirstName], [LastName], [Address], [ZipCode], [City], [State], [Country], [Gender], [Comments], [Category], [Nationality], [ReferredBy], [Photo], [IsActive]) VALUES (2, N'Rohan', N'Aaware', N'123', N'098765', N'Mumbai', N'Delhi', N'India', N'Female', NULL, N'Regular', NULL, NULL, N'~\PersonalImages\cup.jpg', 1)
SET IDENTITY_INSERT [dbo].[tblPersonal] OFF
GO
