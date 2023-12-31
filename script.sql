USE [master]
GO
/****** Object:  Database [ChatSystem]    Script Date: 15/10/2023 10:05:16 CH ******/
CREATE DATABASE [ChatSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChatSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ChatSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChatSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ChatSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChatSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChatSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChatSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChatSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChatSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChatSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChatSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChatSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChatSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChatSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChatSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChatSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChatSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChatSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChatSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChatSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChatSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChatSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChatSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChatSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChatSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChatSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChatSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChatSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChatSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChatSystem] SET  MULTI_USER 
GO
ALTER DATABASE [ChatSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChatSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChatSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChatSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ChatSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ChatSystem]
GO
/****** Object:  Table [dbo].[AddFriend]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddFriend](
	[User1] [nvarchar](50) NOT NULL,
	[User2] [nvarchar](50) NOT NULL,
	[FriendRequestFlag] [bit] NULL,
	[DateTime] [date] NOT NULL,
 CONSTRAINT [PK_AddFriend_1] PRIMARY KEY CLUSTERED 
(
	[User1] ASC,
	[User2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Login]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ConfirmPass] [nvarchar](50) NOT NULL,
	[image] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[IDPermission] [int] NULL,
	[UserStatus] [bit] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Messenger]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messenger](
	[idMessenger] [int] IDENTITY(1,1) NOT NULL,
	[Username1] [nvarchar](50) NOT NULL,
	[Username2] [nvarchar](50) NOT NULL,
	[Messenger] [nvarchar](max) NOT NULL,
	[TimeMessenger] [datetime] NOT NULL,
 CONSTRAINT [PK_Messenger] PRIMARY KEY CLUSTERED 
(
	[idMessenger] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[IDPermission] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[IDPermission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Reason]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reason](
	[ReportReasonID] [int] IDENTITY(1,1) NOT NULL,
	[Reasons] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Reasons] PRIMARY KEY CLUSTERED 
(
	[ReportReasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReportUser]    Script Date: 15/10/2023 10:05:16 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportUser](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ReportUser] [nvarchar](50) NOT NULL,
	[ReportedUser] [nvarchar](50) NOT NULL,
	[ReportReasonID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_ReportUser] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'BocchiTheKien', 1, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'Hutao', 0, CAST(N'2023-10-13' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'Kien', 0, CAST(N'2023-10-13' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'Ganyu', N'BocchiTheKien', 1, CAST(N'2023-10-08' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'Ganyu', N'caheo12355', 1, CAST(N'2023-10-08' AS Date))
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'BocchiTheKien', N'amongus', N'amongus', N'F:\Images\bocchi-bocchi-the-rock.gif', N'BocchiTheKien@gmail.com', 1, 0)
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'caheo12355', N'caheo12355', N'caheo12355', N'F:\Images\user-icon-2048x2048-ihoxz4vq.png', N'starsbreaks@gmail.com', 2, 0)
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'Ganyu', N'ganyu', N'ganyu', N'Meat.png', N'Ganyu@gmail.com', 2, 1)
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'gex', N'segs', N'segs', N'Illegal.jpg', N'amongus@gmail.com', 3, 0)
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'Hutao', N'hutao', N'hutao', N'Hutao1.jpg', N'hutao@gmail.com', 1, 0)
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email], [IDPermission], [UserStatus]) VALUES (N'Kien', N'caheo12355', N'caheo12355', N'F:\Images\user-icon-2048x2048-ihoxz4vq.png', N'amongus@gmail.com', 1, 0)
SET IDENTITY_INSERT [dbo].[Messenger] ON 

INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (1, N'caheo12355', N'Ganyu', N'aaaaa', CAST(N'2023-10-12 21:47:17.813' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (2, N'Ganyu', N'caheo12355', N'among us
', CAST(N'2023-10-12 21:55:55.570' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (3, N'caheo12355', N'Ganyu', N'segs', CAST(N'2023-10-12 21:55:58.387' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (4, N'caheo12355', N'BocchiTheKien', N'segs ?', CAST(N'2023-10-13 15:15:11.560' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (5, N'caheo12355', N'BocchiTheKien', N'sex', CAST(N'2023-10-13 15:15:13.783' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (6, N'caheo12355', N'Ganyu', N'omg hi ganyu !!1111', CAST(N'2023-10-13 15:15:20.637' AS DateTime))
INSERT [dbo].[Messenger] ([idMessenger], [Username1], [Username2], [Messenger], [TimeMessenger]) VALUES (7, N'caheo12355', N'BocchiTheKien', N'among us', CAST(N'2023-10-15 15:23:20.433' AS DateTime))
SET IDENTITY_INSERT [dbo].[Messenger] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([IDPermission], [PermissionName]) VALUES (1, N'User')
INSERT [dbo].[Permission] ([IDPermission], [PermissionName]) VALUES (2, N'Admin')
INSERT [dbo].[Permission] ([IDPermission], [PermissionName]) VALUES (3, N'Banned')
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Reason] ON 

INSERT [dbo].[Reason] ([ReportReasonID], [Reasons]) VALUES (1, N'Nội dung nhạy cảm')
INSERT [dbo].[Reason] ([ReportReasonID], [Reasons]) VALUES (2, N'Làm Phiền')
INSERT [dbo].[Reason] ([ReportReasonID], [Reasons]) VALUES (3, N'Lừa Đảo')
INSERT [dbo].[Reason] ([ReportReasonID], [Reasons]) VALUES (4, N'Lý Do Khác')
SET IDENTITY_INSERT [dbo].[Reason] OFF
SET IDENTITY_INSERT [dbo].[ReportUser] ON 

INSERT [dbo].[ReportUser] ([ReportID], [ReportUser], [ReportedUser], [ReportReasonID], [Note]) VALUES (1, N'caheo12355', N'BocchiTheKien', 1, N'Bocchi dam dang')
INSERT [dbo].[ReportUser] ([ReportID], [ReportUser], [ReportedUser], [ReportReasonID], [Note]) VALUES (2, N'caheo12355', N'Kien', 2, N'Among us')
INSERT [dbo].[ReportUser] ([ReportID], [ReportUser], [ReportedUser], [ReportReasonID], [Note]) VALUES (3, N'caheo12355', N'BocchiTheKien', 1, N'3')
SET IDENTITY_INSERT [dbo].[ReportUser] OFF
ALTER TABLE [dbo].[AddFriend]  WITH CHECK ADD  CONSTRAINT [FK_AddFriend_Login1] FOREIGN KEY([User2])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[AddFriend] CHECK CONSTRAINT [FK_AddFriend_Login1]
GO
ALTER TABLE [dbo].[AddFriend]  WITH CHECK ADD  CONSTRAINT [FK_AddFriend_Login2] FOREIGN KEY([User1])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[AddFriend] CHECK CONSTRAINT [FK_AddFriend_Login2]
GO
ALTER TABLE [dbo].[Login]  WITH CHECK ADD  CONSTRAINT [FK_Login_Permission] FOREIGN KEY([IDPermission])
REFERENCES [dbo].[Permission] ([IDPermission])
GO
ALTER TABLE [dbo].[Login] CHECK CONSTRAINT [FK_Login_Permission]
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD  CONSTRAINT [FK_Messenger_Login] FOREIGN KEY([Username1])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[Messenger] CHECK CONSTRAINT [FK_Messenger_Login]
GO
ALTER TABLE [dbo].[Messenger]  WITH CHECK ADD  CONSTRAINT [FK_Messenger_Login1] FOREIGN KEY([Username2])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[Messenger] CHECK CONSTRAINT [FK_Messenger_Login1]
GO
ALTER TABLE [dbo].[ReportUser]  WITH CHECK ADD  CONSTRAINT [FK_ReportUser_Login] FOREIGN KEY([ReportUser])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[ReportUser] CHECK CONSTRAINT [FK_ReportUser_Login]
GO
ALTER TABLE [dbo].[ReportUser]  WITH CHECK ADD  CONSTRAINT [FK_ReportUser_Login1] FOREIGN KEY([ReportedUser])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[ReportUser] CHECK CONSTRAINT [FK_ReportUser_Login1]
GO
ALTER TABLE [dbo].[ReportUser]  WITH CHECK ADD  CONSTRAINT [FK_ReportUser_Reason] FOREIGN KEY([ReportReasonID])
REFERENCES [dbo].[Reason] ([ReportReasonID])
GO
ALTER TABLE [dbo].[ReportUser] CHECK CONSTRAINT [FK_ReportUser_Reason]
GO
USE [master]
GO
ALTER DATABASE [ChatSystem] SET  READ_WRITE 
GO
