
--USE [master]
--GO

--CREATE DATABASE [ChatAppDB]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'ChatAppDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLEXPRESS17\MSSQL\DATA\ChatAppDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- LOG ON 
--( NAME = N'ChatAppDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLEXPRESS17\MSSQL\DATA\ChatAppDB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
--GO

CREATE DATABASE [ChatAppDB]
GO
ALTER DATABASE [ChatAppDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChatAppDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChatAppDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChatAppDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChatAppDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChatAppDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChatAppDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChatAppDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChatAppDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChatAppDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChatAppDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChatAppDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChatAppDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChatAppDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChatAppDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChatAppDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChatAppDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChatAppDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChatAppDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChatAppDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChatAppDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChatAppDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChatAppDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ChatAppDB] SET  MULTI_USER 
GO
ALTER DATABASE [ChatAppDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChatAppDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChatAppDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChatAppDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChatAppDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChatAppDB', N'ON'
GO
USE [ChatAppDB]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 19/04/2019 2:25:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FromUser] [int] NULL,
	[ToUser] [int] NULL,
	[Message] [nvarchar](max) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 19/04/2019 2:25:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserConnection]    Script Date: 19/04/2019 2:25:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserConnection](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ConnectionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UserConnection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (147, 4, 1, N'hi ahmed
', CAST(N'2019-04-14T19:21:31.303' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (148, 1, 4, N'zyadddddddddd
', CAST(N'2019-04-14T19:22:57.630' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (149, 1, 2, N'?
', CAST(N'2019-04-15T19:38:43.323' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (150, 1, 2, N'??
', CAST(N'2019-04-15T19:39:42.147' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (171, 2, 1, N'hi ahmed from ali', CAST(N'2019-04-15T19:54:15.697' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (173, 2, 3, N'ji fars from ali', CAST(N'2019-04-15T19:54:44.417' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (174, 3, 2, N'ok', CAST(N'2019-04-15T19:54:53.180' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45454, 2, 1, N'?', CAST(N'2019-04-19T12:50:56.283' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45455, 1, 3, N'1', CAST(N'2019-04-19T12:51:53.467' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45456, 1, 3, N'2', CAST(N'2019-04-19T12:51:53.773' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45457, 1, 3, N'3', CAST(N'2019-04-19T12:51:54.017' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45458, 1, 3, N'4', CAST(N'2019-04-19T12:51:54.280' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45459, 1, 3, N'5', CAST(N'2019-04-19T12:51:54.523' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45460, 1, 3, N'6', CAST(N'2019-04-19T12:51:54.743' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45461, 1, 3, N'7', CAST(N'2019-04-19T12:51:54.973' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45462, 1, 3, N'8', CAST(N'2019-04-19T12:51:55.237' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45463, 1, 3, N'9', CAST(N'2019-04-19T12:51:55.420' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45464, 1, 3, N'10', CAST(N'2019-04-19T12:51:55.630' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45465, 1, 3, N'11', CAST(N'2019-04-19T12:51:55.813' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45466, 3, 1, N'12', CAST(N'2019-04-19T12:51:59.547' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45467, 3, 1, N'13', CAST(N'2019-04-19T12:51:59.827' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45468, 3, 1, N'14', CAST(N'2019-04-19T12:52:00.117' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45469, 3, 1, N'15', CAST(N'2019-04-19T12:52:00.330' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45470, 3, 1, N'16', CAST(N'2019-04-19T12:52:00.607' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45471, 3, 1, N'17', CAST(N'2019-04-19T12:52:00.820' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45472, 3, 1, N'18', CAST(N'2019-04-19T12:52:01.053' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45473, 3, 1, N'19', CAST(N'2019-04-19T12:52:01.307' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45474, 3, 1, N'20', CAST(N'2019-04-19T12:52:01.547' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45475, 3, 1, N'21', CAST(N'2019-04-19T12:52:01.800' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45476, 3, 1, N'22', CAST(N'2019-04-19T12:52:02.030' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45477, 3, 1, N'23', CAST(N'2019-04-19T12:52:02.267' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45478, 3, 1, N'24', CAST(N'2019-04-19T12:52:02.477' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45479, 3, 1, N'25', CAST(N'2019-04-19T12:52:02.710' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45480, 3, 1, N'26', CAST(N'2019-04-19T12:52:02.957' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45481, 3, 1, N'27', CAST(N'2019-04-19T12:52:03.220' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45482, 3, 1, N'28', CAST(N'2019-04-19T12:52:03.570' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45483, 3, 1, N'29', CAST(N'2019-04-19T12:52:03.817' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45484, 3, 1, N'30', CAST(N'2019-04-19T12:52:04.073' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45485, 3, 1, N'31', CAST(N'2019-04-19T12:52:04.303' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45486, 3, 1, N'32', CAST(N'2019-04-19T12:52:04.573' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45487, 3, 1, N'33', CAST(N'2019-04-19T12:52:04.807' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45488, 3, 1, N'34', CAST(N'2019-04-19T12:52:04.977' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45489, 3, 1, N'35', CAST(N'2019-04-19T12:52:06.143' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45490, 1, 3, N'36', CAST(N'2019-04-19T12:52:07.903' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45491, 1, 3, N'37', CAST(N'2019-04-19T12:52:08.113' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45492, 1, 3, N'38', CAST(N'2019-04-19T12:52:08.353' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45493, 1, 3, N'39', CAST(N'2019-04-19T12:52:08.610' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45494, 1, 3, N'40', CAST(N'2019-04-19T12:52:08.820' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45495, 1, 3, N'41', CAST(N'2019-04-19T12:52:09.053' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45496, 1, 3, N'42', CAST(N'2019-04-19T12:52:09.320' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45497, 1, 3, N'43', CAST(N'2019-04-19T12:52:09.593' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45498, 1, 3, N'44', CAST(N'2019-04-19T12:52:09.860' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45499, 1, 3, N'45', CAST(N'2019-04-19T12:52:10.130' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45500, 1, 3, N'46', CAST(N'2019-04-19T12:52:10.413' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45501, 1, 3, N'47', CAST(N'2019-04-19T12:52:10.703' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45502, 1, 3, N'48', CAST(N'2019-04-19T12:52:10.943' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45503, 1, 3, N'49', CAST(N'2019-04-19T12:52:11.147' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45504, 1, 3, N'50', CAST(N'2019-04-19T12:52:11.387' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45505, 1, 3, N'51', CAST(N'2019-04-19T12:52:11.647' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45506, 1, 3, N'52', CAST(N'2019-04-19T12:52:11.957' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45507, 1, 3, N'53', CAST(N'2019-04-19T12:52:12.227' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45508, 1, 3, N'54', CAST(N'2019-04-19T12:52:12.443' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45509, 1, 3, N'55', CAST(N'2019-04-19T12:52:12.677' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45510, 1, 3, N'56', CAST(N'2019-04-19T12:52:12.893' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45511, 1, 3, N'57', CAST(N'2019-04-19T12:52:13.140' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45512, 1, 3, N'58', CAST(N'2019-04-19T12:52:13.367' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45513, 1, 3, N'59', CAST(N'2019-04-19T12:52:13.623' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45514, 3, 1, N'60', CAST(N'2019-04-19T12:52:16.567' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45515, 3, 1, N'61', CAST(N'2019-04-19T12:52:16.800' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45516, 3, 1, N'62', CAST(N'2019-04-19T12:52:17.087' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45517, 3, 1, N'63', CAST(N'2019-04-19T12:52:17.400' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45518, 3, 1, N'64', CAST(N'2019-04-19T12:52:17.650' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45519, 3, 1, N'65', CAST(N'2019-04-19T12:52:17.970' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45520, 3, 1, N'66', CAST(N'2019-04-19T12:52:18.273' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45521, 3, 1, N'67', CAST(N'2019-04-19T12:52:18.560' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45522, 3, 1, N'68', CAST(N'2019-04-19T12:52:18.833' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45523, 3, 1, N'69', CAST(N'2019-04-19T12:52:19.090' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45524, 3, 1, N'70', CAST(N'2019-04-19T12:52:19.333' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45525, 3, 1, N'71', CAST(N'2019-04-19T12:52:19.800' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45526, 3, 1, N'72', CAST(N'2019-04-19T12:52:20.037' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45527, 3, 1, N'73', CAST(N'2019-04-19T12:52:20.260' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45528, 3, 1, N'74', CAST(N'2019-04-19T12:52:20.477' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45529, 3, 1, N'75', CAST(N'2019-04-19T12:52:20.697' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45530, 3, 1, N'76', CAST(N'2019-04-19T12:52:20.960' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45531, 3, 1, N'77', CAST(N'2019-04-19T12:52:21.163' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45532, 3, 1, N'78', CAST(N'2019-04-19T12:52:21.393' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45533, 3, 1, N'79', CAST(N'2019-04-19T12:52:21.607' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45534, 3, 1, N'80', CAST(N'2019-04-19T12:52:21.813' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45535, 3, 1, N'81', CAST(N'2019-04-19T12:52:22.037' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45536, 3, 1, N'82', CAST(N'2019-04-19T12:52:22.260' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45537, 3, 1, N'83', CAST(N'2019-04-19T12:52:22.487' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45538, 3, 1, N'84', CAST(N'2019-04-19T12:52:22.713' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45539, 1, 3, N'85', CAST(N'2019-04-19T12:52:24.840' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45540, 1, 3, N'86', CAST(N'2019-04-19T12:52:25.070' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45541, 1, 3, N'87', CAST(N'2019-04-19T12:52:25.337' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45542, 1, 3, N'88', CAST(N'2019-04-19T12:52:25.603' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45543, 1, 3, N'89', CAST(N'2019-04-19T12:52:25.890' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45544, 1, 3, N'90', CAST(N'2019-04-19T12:52:26.113' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45545, 1, 3, N'91', CAST(N'2019-04-19T12:52:26.360' AS DateTime))
GO
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45546, 1, 3, N'92', CAST(N'2019-04-19T12:52:26.647' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45547, 1, 3, N'93', CAST(N'2019-04-19T12:52:26.893' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45548, 1, 3, N'94', CAST(N'2019-04-19T12:52:27.177' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45549, 1, 3, N'95', CAST(N'2019-04-19T12:52:27.493' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45550, 1, 3, N'96', CAST(N'2019-04-19T12:52:27.687' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45551, 1, 3, N'97', CAST(N'2019-04-19T12:52:27.973' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45552, 1, 3, N'98', CAST(N'2019-04-19T12:52:28.183' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45553, 1, 3, N'99', CAST(N'2019-04-19T12:52:28.443' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45554, 1, 3, N'100', CAST(N'2019-04-19T12:52:28.650' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45555, 1, 3, N'101', CAST(N'2019-04-19T12:52:28.883' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45556, 1, 3, N'102', CAST(N'2019-04-19T12:52:29.120' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45557, 1, 3, N'103', CAST(N'2019-04-19T12:52:29.397' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45558, 1, 3, N'104', CAST(N'2019-04-19T12:52:29.680' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45559, 1, 3, N'105', CAST(N'2019-04-19T12:52:29.917' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45560, 1, 3, N'106', CAST(N'2019-04-19T12:52:30.103' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45561, 1, 3, N'107', CAST(N'2019-04-19T12:52:30.353' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45562, 1, 3, N'108', CAST(N'2019-04-19T12:52:30.587' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45563, 1, 3, N'109', CAST(N'2019-04-19T12:52:30.837' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45564, 1, 3, N'110', CAST(N'2019-04-19T12:52:31.137' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45565, 1, 3, N'111', CAST(N'2019-04-19T12:52:31.333' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45566, 1, 3, N'112', CAST(N'2019-04-19T12:52:31.583' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45567, 1, 3, N'113', CAST(N'2019-04-19T12:52:31.830' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45568, 1, 3, N'114', CAST(N'2019-04-19T12:52:32.060' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45569, 1, 3, N'115', CAST(N'2019-04-19T12:52:32.300' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45570, 1, 3, N'116', CAST(N'2019-04-19T12:52:32.517' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45571, 1, 3, N'117', CAST(N'2019-04-19T12:52:32.727' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45572, 3, 1, N'118', CAST(N'2019-04-19T12:52:35.567' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45573, 3, 1, N'119', CAST(N'2019-04-19T12:52:35.740' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45574, 3, 1, N'120', CAST(N'2019-04-19T12:52:35.987' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45575, 3, 1, N'121', CAST(N'2019-04-19T12:52:36.187' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45576, 3, 1, N'122', CAST(N'2019-04-19T12:52:36.410' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45577, 3, 1, N'123', CAST(N'2019-04-19T12:52:36.637' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45578, 3, 1, N'124', CAST(N'2019-04-19T12:52:36.873' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45579, 3, 1, N'125', CAST(N'2019-04-19T12:52:37.107' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45580, 3, 1, N'126', CAST(N'2019-04-19T12:52:37.333' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45581, 3, 1, N'127', CAST(N'2019-04-19T12:52:37.587' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45582, 3, 1, N'128', CAST(N'2019-04-19T12:52:37.890' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45583, 3, 1, N'129', CAST(N'2019-04-19T12:52:38.083' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45584, 3, 1, N'130', CAST(N'2019-04-19T12:52:38.353' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45585, 3, 1, N'131', CAST(N'2019-04-19T12:52:38.577' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45586, 3, 1, N'132', CAST(N'2019-04-19T12:52:38.800' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45587, 3, 1, N'133', CAST(N'2019-04-19T12:52:39.040' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45588, 3, 1, N'134', CAST(N'2019-04-19T12:52:39.273' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45589, 3, 1, N'135', CAST(N'2019-04-19T12:52:39.500' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45590, 3, 1, N'136', CAST(N'2019-04-19T12:52:39.733' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45591, 3, 1, N'137', CAST(N'2019-04-19T12:52:39.967' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45592, 3, 1, N'138', CAST(N'2019-04-19T12:52:40.183' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45593, 3, 1, N'139', CAST(N'2019-04-19T12:52:40.427' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45594, 3, 1, N'140', CAST(N'2019-04-19T12:52:40.687' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45595, 3, 1, N'141', CAST(N'2019-04-19T12:52:40.947' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45596, 3, 1, N'142', CAST(N'2019-04-19T12:52:41.223' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45597, 3, 1, N'143', CAST(N'2019-04-19T12:52:41.477' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45598, 3, 1, N'144', CAST(N'2019-04-19T12:52:41.723' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45599, 3, 1, N'145', CAST(N'2019-04-19T12:52:41.993' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45600, 3, 1, N'146', CAST(N'2019-04-19T12:52:42.220' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45601, 1, 3, N'147', CAST(N'2019-04-19T12:52:48.037' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45602, 1, 3, N'148', CAST(N'2019-04-19T12:52:48.250' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45603, 1, 3, N'149', CAST(N'2019-04-19T12:52:48.517' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45604, 1, 3, N'150', CAST(N'2019-04-19T12:52:48.833' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45605, 1, 3, N'151', CAST(N'2019-04-19T12:52:49.113' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45606, 1, 3, N'152', CAST(N'2019-04-19T12:52:49.410' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45607, 1, 3, N'153', CAST(N'2019-04-19T12:52:49.690' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45608, 1, 3, N'154', CAST(N'2019-04-19T12:52:49.913' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45609, 1, 3, N'155', CAST(N'2019-04-19T12:52:50.193' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45610, 1, 3, N'156', CAST(N'2019-04-19T12:52:50.490' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45611, 1, 3, N'157', CAST(N'2019-04-19T12:52:50.750' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45612, 1, 3, N'158', CAST(N'2019-04-19T12:52:51.023' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45613, 1, 3, N'159', CAST(N'2019-04-19T12:52:51.287' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45614, 1, 3, N'160', CAST(N'2019-04-19T12:52:51.580' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45615, 1, 3, N'161', CAST(N'2019-04-19T12:52:51.850' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45616, 1, 3, N'162', CAST(N'2019-04-19T12:52:52.113' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45617, 1, 3, N'163', CAST(N'2019-04-19T12:52:52.410' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45618, 1, 3, N'164', CAST(N'2019-04-19T12:52:52.610' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45619, 1, 3, N'165', CAST(N'2019-04-19T12:52:52.873' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45620, 1, 3, N'166', CAST(N'2019-04-19T12:52:53.177' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45621, 1, 3, N'167', CAST(N'2019-04-19T12:52:53.473' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45622, 1, 3, N'168', CAST(N'2019-04-19T12:52:53.777' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45623, 1, 3, N'169', CAST(N'2019-04-19T12:52:53.983' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45624, 1, 3, N'170', CAST(N'2019-04-19T12:52:54.257' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45625, 3, 1, N'171', CAST(N'2019-04-19T12:52:57.343' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45626, 3, 1, N'172', CAST(N'2019-04-19T12:52:57.517' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45627, 3, 1, N'173', CAST(N'2019-04-19T12:52:57.757' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45628, 3, 1, N'174', CAST(N'2019-04-19T12:52:58.023' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45629, 3, 1, N'175', CAST(N'2019-04-19T12:52:58.207' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45630, 3, 1, N'176', CAST(N'2019-04-19T12:52:58.443' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45631, 3, 1, N'177', CAST(N'2019-04-19T12:52:58.710' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45632, 3, 1, N'178', CAST(N'2019-04-19T12:52:58.947' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45633, 3, 1, N'179', CAST(N'2019-04-19T12:52:59.183' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45634, 3, 1, N'180', CAST(N'2019-04-19T12:52:59.450' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45635, 3, 1, N'181', CAST(N'2019-04-19T12:52:59.710' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45636, 3, 1, N'182', CAST(N'2019-04-19T12:52:59.943' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45637, 3, 1, N'183', CAST(N'2019-04-19T12:53:00.203' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45638, 3, 1, N'184', CAST(N'2019-04-19T12:53:00.467' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45639, 3, 1, N'185', CAST(N'2019-04-19T12:53:00.757' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45640, 3, 1, N'186', CAST(N'2019-04-19T12:53:00.990' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45641, 3, 1, N'187', CAST(N'2019-04-19T12:53:01.283' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45642, 3, 1, N'188', CAST(N'2019-04-19T12:53:01.490' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45643, 3, 1, N'189', CAST(N'2019-04-19T12:53:01.757' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45644, 3, 1, N'190', CAST(N'2019-04-19T12:53:02.020' AS DateTime))
INSERT [dbo].[Message] ([Id], [FromUser], [ToUser], [Message], [Date]) VALUES (45645, 3, 1, N'191', CAST(N'2019-04-19T12:53:02.283' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [FullName], [Password]) VALUES (1, N'ahmedelsaka', N'Ahmed Elsaka', N'123')
INSERT [dbo].[User] ([UserId], [Username], [FullName], [Password]) VALUES (2, N'ali', N'Ali', N'123')
INSERT [dbo].[User] ([UserId], [Username], [FullName], [Password]) VALUES (3, N'fars', N'Fars', N'123')
INSERT [dbo].[User] ([UserId], [Username], [FullName], [Password]) VALUES (4, N'zyad', N'Zyad', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserConnection] ON 

INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (307, 1, N'a4d9e26d-c4eb-46f1-a0dd-8dd0c6df07e9')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (308, 1, N'6d88965d-2418-48bd-94e5-19a13f4e91f5')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (310, 1, N'74f9a2f8-2e2c-419e-8c9d-b3ac8516a0b2')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (311, 1, N'41566f27-cfc3-4ea2-a938-817a88f924eb')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (316, 1, N'87b69d3a-b8a8-4a17-ab5c-e9acb8bcb148')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (317, 1, N'07af6f98-7a83-4874-800c-8e6ba46fb4f3')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (318, 1, N'9b6e74f7-f151-424b-b2c3-ab34be3387ab')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (321, 1, N'f2b8e4e9-4362-4ea6-8f9f-0e6c9427aa08')
INSERT [dbo].[UserConnection] ([Id], [UserId], [ConnectionId]) VALUES (322, 1, N'f9315066-0dd4-4a17-97b6-2ff3adf9b69a')
SET IDENTITY_INSERT [dbo].[UserConnection] OFF
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Messages_User] FOREIGN KEY([FromUser])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Messages_User]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [FK_Messages_User1] FOREIGN KEY([ToUser])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [FK_Messages_User1]
GO
ALTER TABLE [dbo].[UserConnection]  WITH CHECK ADD  CONSTRAINT [FK_UserConnection_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserConnection] CHECK CONSTRAINT [FK_UserConnection_User]
GO
USE [master]
GO
ALTER DATABASE [ChatAppDB] SET  READ_WRITE 
GO
