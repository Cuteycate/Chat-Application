USE [master]
GO
/****** Object:  Database [ChatSystem]    Script Date: 05/10/2023 10:36:29 CH ******/
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
/****** Object:  Table [dbo].[AddFriend]    Script Date: 05/10/2023 10:36:29 CH ******/
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
/****** Object:  Table [dbo].[Login]    Script Date: 05/10/2023 10:36:29 CH ******/
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
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'BocchiTheKien', 1, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'caheo123555', 0, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'Ganyu', 1, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'caheo12355', N'Kien', 1, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[AddFriend] ([User1], [User2], [FriendRequestFlag], [DateTime]) VALUES (N'Ganyu', N'Hutao', 1, CAST(N'2023-10-05' AS Date))
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'BocchiTheKien', N'amongus', N'amongus', N'F:\Images\bocchi-bocchi-the-rock.gif', N'BocchiTheKien@gmail.com')
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'caheo12355', N'caheo12355', N'caheo12355', N'F:\Images\user-icon-2048x2048-ihoxz4vq.png', N'starsbreaks@gmail.com')
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'caheo123555', N'12345', N'12345', N'user-icon-2048x2048-ihoxz4vq.png', N'amongus3@gmail.com')
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'Ganyu', N'ganyu', N'ganyu', N'Meat.png', N'Ganyu@gmail.com')
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'Hutao', N'hutao', N'hutao', N'jETieq3.png', N'Hutao@gmail.com')
INSERT [dbo].[Login] ([Username], [Password], [ConfirmPass], [image], [Email]) VALUES (N'Kien', N'caheo12355', N'caheo12355', N'F:\Images\user-icon-2048x2048-ihoxz4vq.png', N'amongus@gmail.com')
ALTER TABLE [dbo].[AddFriend]  WITH CHECK ADD  CONSTRAINT [FK_AddFriend_Login] FOREIGN KEY([User1])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[AddFriend] CHECK CONSTRAINT [FK_AddFriend_Login]
GO
ALTER TABLE [dbo].[AddFriend]  WITH CHECK ADD  CONSTRAINT [FK_AddFriend_Login1] FOREIGN KEY([User2])
REFERENCES [dbo].[Login] ([Username])
GO
ALTER TABLE [dbo].[AddFriend] CHECK CONSTRAINT [FK_AddFriend_Login1]
GO
USE [master]
GO
ALTER DATABASE [ChatSystem] SET  READ_WRITE 
GO
