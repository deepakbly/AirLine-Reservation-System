USE [master]
GO
/****** Object:  Database [Airline]    Script Date: 05/03/2020 10:21:18 ******/
CREATE DATABASE [Airline] ON  PRIMARY 
( NAME = N'Airline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Airline.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Airline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Airline_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Airline] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Airline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Airline] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Airline] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Airline] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Airline] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Airline] SET ARITHABORT OFF
GO
ALTER DATABASE [Airline] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [Airline] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Airline] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Airline] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Airline] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Airline] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Airline] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Airline] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Airline] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Airline] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Airline] SET  ENABLE_BROKER
GO
ALTER DATABASE [Airline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Airline] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Airline] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Airline] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Airline] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Airline] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Airline] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Airline] SET  READ_WRITE
GO
ALTER DATABASE [Airline] SET RECOVERY FULL
GO
ALTER DATABASE [Airline] SET  MULTI_USER
GO
ALTER DATABASE [Airline] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Airline] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'Airline', N'ON'
GO
USE [Airline]
GO
/****** Object:  Table [dbo].[schedule]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[schedule](
	[flightid] [int] NOT NULL,
	[Flightname] [varchar](50) NOT NULL,
	[Fromstation] [varchar](50) NOT NULL,
	[Tostation] [varchar](50) NOT NULL,
	[Firstclass] [int] NOT NULL,
	[Bussinessclass] [int] NOT NULL,
	[economicclass] [int] NOT NULL,
	[dateandtimings] [varchar](50) NOT NULL,
 CONSTRAINT [PK_schedule] PRIMARY KEY CLUSTERED 
(
	[flightid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[schedule] ([flightid], [Flightname], [Fromstation], [Tostation], [Firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (0, N'', N'', N'', 0, 0, 0, N'')
INSERT [dbo].[schedule] ([flightid], [Flightname], [Fromstation], [Tostation], [Firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (1, N'anbx', N'bly', N'indi', 20, 15, 10, N'12/01/2000')
INSERT [dbo].[schedule] ([flightid], [Flightname], [Fromstation], [Tostation], [Firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (12, N'Air', N'bly', N'aaa', 20, 15, 10, N'16/04/2020 12:20')
INSERT [dbo].[schedule] ([flightid], [Flightname], [Fromstation], [Tostation], [Firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (13, N'fox', N'punj', N'del', 20, 15, 10, N'16/04/2020 12:20')
/****** Object:  Table [dbo].[Reg]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reg](
	[Name] [varchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Emailid] [varchar](50) NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Registration_1] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Reg] ([Name], [Address], [Emailid], [username], [password]) VALUES (N'', N'', N'', N'', N'')
INSERT [dbo].[Reg] ([Name], [Address], [Emailid], [username], [password]) VALUES (N'Deepak Kumar', N'HOUSE NO. 1364 JOGI NAWADA
DURGA NAGAR BAREILLY
Bareilly', N'abss@gmail.com', N'aaa', N'111')
INSERT [dbo].[Reg] ([Name], [Address], [Emailid], [username], [password]) VALUES (N'sadha', N'HOUSE NO. 1364 JOGI NAWADA
DURGA NAGAR BAREILLY
Bareilly', N'abss@gmail.com', N'abc', N'121')
INSERT [dbo].[Reg] ([Name], [Address], [Emailid], [username], [password]) VALUES (N'Deepak Kumar', N'HOUSE NO. 1364 JOGI NAWADA
DURGA NAGAR BAREILLY
Bareilly', N'abss@gmail.com', N'ddd', N'2222')
INSERT [dbo].[Reg] ([Name], [Address], [Emailid], [username], [password]) VALUES (NULL, NULL, NULL, N'deep', N'123')
/****** Object:  Table [dbo].[Plist]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Plist](
	[Pid] [int] NOT NULL,
	[passengername] [varchar](50) NOT NULL,
	[flightid] [int] NOT NULL,
	[Flightname] [varchar](50) NOT NULL,
	[Fromstation] [varchar](50) NOT NULL,
	[Tostation] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
	[Dateandtimings] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Plist] PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pid]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pid](
	[pid] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fares]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fares](
	[Flightname] [varchar](50) NOT NULL,
	[flightid] [int] NOT NULL,
	[Fromstation] [varchar](50) NOT NULL,
	[Tostation] [varchar](50) NOT NULL,
	[firstclass] [money] NOT NULL,
	[Bussinessclass] [money] NOT NULL,
	[economicclass] [money] NOT NULL,
	[dateandtimings] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Fares_1] PRIMARY KEY CLUSTERED 
(
	[flightid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Fares] ([Flightname], [flightid], [Fromstation], [Tostation], [firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (N'', 0, N'', N'', 0.0000, 0.0000, 0.0000, N'')
INSERT [dbo].[Fares] ([Flightname], [flightid], [Fromstation], [Tostation], [firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (N'anbx', 1, N'bly', N'indi', 20000.0000, 14500.0000, 10000.0000, N'')
INSERT [dbo].[Fares] ([Flightname], [flightid], [Fromstation], [Tostation], [firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (N'Air', 12, N'bly', N'aaa', 20000.0000, 14500.0000, 10000.0000, N'16/04/2020 12:20')
INSERT [dbo].[Fares] ([Flightname], [flightid], [Fromstation], [Tostation], [firstclass], [Bussinessclass], [economicclass], [dateandtimings]) VALUES (N'fox', 13, N'punj', N'del', 20000.0000, 14500.0000, 10000.0000, N'16/04/2020 12:20')
/****** Object:  Table [dbo].[canreq]    Script Date: 05/03/2020 10:21:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[canreq](
	[pid] [int] NOT NULL,
	[pname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_canreq] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
