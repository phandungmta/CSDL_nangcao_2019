USE [master]
GO
/****** Object:  Database [QLGV]    Script Date: 6/17/2019 3:40:43 PM ******/
CREATE DATABASE [QLGV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLDV.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLDV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\QLDV_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLGV] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLGV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLGV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLGV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLGV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLGV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLGV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLGV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLGV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLGV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLGV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLGV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLGV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLGV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLGV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLGV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLGV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLGV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLGV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLGV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLGV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLGV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLGV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLGV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLGV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLGV] SET  MULTI_USER 
GO
ALTER DATABASE [QLGV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLGV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLGV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLGV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLGV] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLGV', N'ON'
GO
ALTER DATABASE [QLGV] SET QUERY_STORE = OFF
GO
USE [QLGV]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [QLGV]
GO
/****** Object:  Table [dbo].[ACADEMIC_RANK]    Script Date: 6/17/2019 3:40:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACADEMIC_RANK](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[quotahour] [int] NULL,
	[Researchtitlecode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_ACADEMIC_RANK_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[rightgroupcode] [varchar](10) NULL,
	[username] [varchar](20) NULL,
	[password] [nvarchar](200) NULL,
 CONSTRAINT [PK_ACCOUNT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ADMINISTRATIVE_POST]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADMINISTRATIVE_POST](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[remissionrate] [int] NULL,
 CONSTRAINT [PK_ADMINISTRATIVE_POST_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[APPLIED_TECH_PRODUCT]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APPLIED_TECH_PRODUCT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[time] [date] NULL,
	[Appliedscale] [nvarchar](1000) NULL,
	[eficiency] [nvarchar](1000) NULL,
 CONSTRAINT [PK_APPLIED_TECH_PRODUCT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AWARD]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AWARD](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
 CONSTRAINT [PK_AWARD_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK](
	[booktypecode] [varchar](10) NULL,
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[workload] [int] NULL,
	[Publishtime] [date] NULL,
	[numberofauthors] [int] NULL,
 CONSTRAINT [PK_BOOK_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK_HISTORY]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[booktypename] [nvarchar](200) NULL,
	[bookname] [nvarchar](200) NULL,
	[amountofauthor] [int] NULL,
	[amountoftime] [date] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_BOOK_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK_TYPE]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[unit] [nvarchar](50) NULL,
 CONSTRAINT [PK_BOOK_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASS]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[numberof] [int] NULL,
	[edubranchcode] [varchar](10) NULL,
 CONSTRAINT [PK_CLASS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNCIL]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNCIL](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Counciltypecode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_COUNCIL_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNCIL_HISTORY]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNCIL_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[counciltypename] [nvarchar](200) NULL,
	[councilname] [nvarchar](200) NULL,
	[ocurrence] [int] NULL,
	[amountoftime] [date] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_COUNCIL_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNCIL_ROLE]    Script Date: 6/17/2019 3:40:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNCIL_ROLE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[coefficent] [float] NULL,
 CONSTRAINT [PK_COUNCIL_ROLE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COUNCIL_TYPE]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNCIL_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
 CONSTRAINT [PK_COUNCIL_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEGREE]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEGREE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[quota] [int] NULL,
 CONSTRAINT [PK_DEGREE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[facultycode] [varchar](10) NULL,
	[Numberofmember] [int] NULL,
 CONSTRAINT [PK_DEPARTMENT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_ACADEMIC_RANK]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_ACADEMIC_RANK](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[academicrankcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_DT_ACADEMIC_RANK_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_ADMINISTRATIVE_POST]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_ADMINISTRATIVE_POST](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Administrativepostcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[facultycode] [varchar](10) NULL,
	[departmentcode] [varchar](10) NULL,
	[tenure] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_ADMINISTRATIVE_POST_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_AWARD]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_AWARD](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[awardcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_DT_AWARD_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_BOOK]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_BOOK](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[bookcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[writingrolecode] [varchar](10) NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_BOOK_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_Council]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_Council](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[realcouncilcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[councilrolecode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[time] [date] NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_Council_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_DEGREE]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_DEGREE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[degreecode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_DT_DEGREE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_DEPARTMENT]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_DEPARTMENT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[departmentcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[numberofdecision] [varchar](10) NULL,
	[semester] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_DEPARTMENT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_EXAMIN]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_EXAMIN](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[subjectclasscode] [varchar](10) NULL,
	[numberofstudent] [int] NULL,
	[semester] [smallint] NULL,
	[Examintypecode] [varchar](10) NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_EXAMIN_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_MENTORING]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_MENTORING](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[studentcode] [varchar](10) NULL,
	[thesiscode] [varchar](10) NULL,
	[star] [date] NULL,
	[end] [date] NULL,
	[semester] [smallint] NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_MENTORING_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_PARTY_POST]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PARTY_POST](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Partypostcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[facultycode] [varchar](10) NULL,
	[departmentcode] [varchar](10) NULL,
	[tenure] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_PARTY_POST_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_PUNISHMENT]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PUNISHMENT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[punishmentcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_DT_PUNISHMENT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_RESEARCH]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_RESEARCH](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[researchcode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[researchrolecode] [varchar](10) NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_RESEARCH_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_RESEARCH_TITLE]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_RESEARCH_TITLE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Researchtitlecode] [varchar](10) NULL,
	[teachercode] [varchar](10) NULL,
	[place] [nvarchar](1000) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_DT_RESEARCH_TITLE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_RIGHT]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_RIGHT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[rightcode] [varchar](10) NULL,
	[rightgroupcode] [varchar](10) NULL,
 CONSTRAINT [PK_DT_RIGHT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_SUBJECT_CLASS]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_SUBJECT_CLASS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[studentcode] [varchar](10) NULL,
	[Result] [float] NULL,
	[subjectclasscode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_SUBJECT_CLASS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DT_TEACHING]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_TEACHING](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[subjectcode] [varchar](10) NULL,
	[teachingtypecode] [varchar](10) NULL,
	[time] [date] NULL,
	[semester] [smallint] NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_DT_TEACHING_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EDU_BRANCH]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDU_BRANCH](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[edulevelcode] [varchar](10) NULL,
 CONSTRAINT [PK_EDU_BRANCH_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EDUCATION_PROCESS]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDUCATION_PROCESS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[bsedubranch] [nvarchar](100) NULL,
	[Bsplace] [nvarchar](1000) NULL,
	[Bsspecialization] [nvarchar](100) NULL,
	[bscountry] [nvarchar](1000) NULL,
	[Bsyear] [date] NULL,
	[msspecialzation] [nvarchar](100) NULL,
	[yearms] [date] NULL,
	[msthesisname] [nvarchar](100) NULL,
	[phdspeciallization] [nvarchar](100) NULL,
	[yearphd] [date] NULL,
	[phdthesisname] [nvarchar](100) NULL,
 CONSTRAINT [PK_EDUCATION_PROCESS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EDULEVEL]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDULEVEL](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
 CONSTRAINT [PK_EDULEVEL_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMIN_HISTORY ]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAMIN_HISTORY ](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[examintypename] [nvarchar](200) NULL,
	[subjectname] [nvarchar](200) NULL,
	[classname] [nvarchar](200) NULL,
	[amountoftime] [date] NULL,
	[subjectclassname] [nvarchar](200) NULL,
	[numberofstudent] [int] NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_EXAMIN_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMIN_TYPE]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAMIN_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[coefficent] [float] NULL,
 CONSTRAINT [PK_EXAMIN_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTY]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Numberofmember] [int] NULL,
	[numberphone] [varchar](15) NULL,
 CONSTRAINT [PK_FACULTY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTY_HISTORY]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTY_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[facultycode] [varchar](10) NULL,
	[facultyname] [nvarchar](200) NULL,
	[totalnumber] [int] NULL,
	[profnumber] [int] NULL,
	[asprofnumber] [int] NULL,
	[doctorscinumber] [int] NULL,
	[doctornumber] [int] NULL,
	[masternumber] [int] NULL,
	[bachelornumber] [int] NULL,
	[otherpeoplenumber] [int] NULL,
	[totaltitle] [int] NULL,
	[seniorlecturenumber] [int] NULL,
	[lecturenumber] [int] NULL,
	[atstartnumber] [int] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_FACULTY_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAD_BY_SEMESTER]    Script Date: 6/17/2019 3:40:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAD_BY_SEMESTER](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[researchquota] [int] NULL,
	[teachingquota] [int] NULL,
	[semester] [int] NULL,
	[start] [date] NULL,
	[end] [date] NULL,
 CONSTRAINT [PK_LOAD_BY_SEMESTER_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAD_STATISTIC]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAD_STATISTIC](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[departmentname] [nvarchar](200) NULL,
	[facultyname] [nvarchar](200) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[realteachingload] [int] NULL,
	[requiredteachingload] [int] NULL,
	[teachingratio] [int] NULL,
	[realresearchload] [int] NULL,
	[requiredresearchload] [int] NULL,
	[researchratio] [int] NULL,
	[totalrealload] [int] NULL,
	[totalrequiredload] [int] NULL,
 CONSTRAINT [PK_LOAD_STATISTIC_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENTORING_HISTORY]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENTORING_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[mentoringtypename] [nvarchar](200) NULL,
	[studentname] [nvarchar](200) NULL,
	[classname] [nvarchar](200) NULL,
	[amountoftime] [nvarchar](200) NULL,
	[standardquantity] [int] NULL,
	[edubranchname] [nvarchar](200) NULL,
	[thesisname] [nvarchar](200) NULL,
	[dtcode] [nvarchar](10) NULL,
 CONSTRAINT [PK_MENTORING_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENTORING_TYPE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENTORING_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[edulevelcode] [varchar](10) NULL,
	[standartquantity] [int] NULL,
	[coefficent] [float] NULL,
 CONSTRAINT [PK_MENTORING_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTHER_BUSINESS]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTHER_BUSINESS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
 CONSTRAINT [PK_OTHER_BUSINESS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARTY_POST]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARTY_POST](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[remissionrate] [int] NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_PARTY_POST_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUNISHMENT]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUNISHMENT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_PUNISHMENT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REAL_COUNCIL]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REAL_COUNCIL](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Councilcode] [varchar](10) NULL,
	[semester] [smallint] NULL,
	[workloadpart] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_REAL_COUNCIL_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESEARCH]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESEARCH](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Standartime] [int] NULL,
	[researchtypecode] [varchar](10) NULL,
	[finishtime] [date] NULL,
	[starttime] [date] NULL,
	[acceptancestatus] [nvarchar](50) NULL,
	[id] [varchar](20) NULL,
	[numberofauthors] [int] NULL,
 CONSTRAINT [PK_RESEARCH_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESEARCH_HISTORY]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESEARCH_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[researchtypename] [nvarchar](200) NULL,
	[researchrolename] [nvarchar](200) NULL,
	[amountofauthor] [int] NULL,
	[amountoftime] [date] NULL,
	[workloadname] [nvarchar](200) NULL,
	[postname] [nvarchar](200) NULL,
	[place] [nvarchar](200) NULL,
	[tenure] [int] NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_RESEARCH_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESEARCH_ROLE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESEARCH_ROLE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[coeficoent] [float] NULL,
	[workloadtypecode] [varchar](10) NULL,
 CONSTRAINT [PK_RESEARCH_ROLE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESEARCH_TITLE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESEARCH_TITLE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[place] [nvarchar](1000) NULL,
	[time] [varchar](10) NULL,
 CONSTRAINT [PK_RESEARCH_TITLE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESEARCH_TYPE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESEARCH_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[standardtime] [int] NULL,
	[workloadtypecode] [varchar](10) NULL,
 CONSTRAINT [PK_RESEARCH_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RIGHT]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RIGHT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[linkpath] [varchar](20) NULL,
	[isCreate] [smallint] NULL,
	[isUpdate] [smallint] NULL,
	[isDelete] [smallint] NULL,
	[description] [nvarchar](300) NULL,
 CONSTRAINT [PK_RIGHT] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RIGHT_GROUP]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RIGHT_GROUP](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
 CONSTRAINT [PK_RIGHT_GROUP_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENT]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[gender] [nvarchar](5) NULL,
	[Address] [nvarchar](1000) NULL,
	[hometown] [nvarchar](1000) NULL,
	[Birthday] [date] NULL,
	[classcode] [varchar](10) NULL,
	[Email] [varchar](1000) NULL,
 CONSTRAINT [PK_STUDENT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBJECT]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECT](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[Departmentcode] [varchar](10) NULL,
	[creditnum] [int] NULL,
	[lessonnum] [int] NULL,
 CONSTRAINT [PK_SUBJECT_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBJECT_CLASS]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECT_CLASS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[numberof] [int] NULL,
	[subjectcode] [varchar](10) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[edubranchcode] [varchar](10) NULL,
	[Semester] [int] NULL,
	[yearstart] [int] NULL,
 CONSTRAINT [PK_SUBJECT_CLASS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHER]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[gender] [nvarchar](5) NULL,
	[Address] [nvarchar](1000) NULL,
	[hometown] [nvarchar](1000) NULL,
	[birthday] [date] NULL,
	[Email] [varchar](1000) NULL,
	[phone] [varchar](15) NULL,
	[Departmentcode] [varchar](10) NULL,
	[Haschild36m] [bit] NULL,
	[finalremissionrate] [int] NULL,
 CONSTRAINT [PK_TEACHER_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHER_HISTORY]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHER_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[departmentname] [nvarchar](200) NULL,
	[facultyname] [nvarchar](200) NULL,
	[start] [date] NULL,
	[end] [date] NULL,
 CONSTRAINT [PK_TEACHER_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHING_HISTORY]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHING_HISTORY](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[teachername] [nvarchar](200) NULL,
	[edulevelname] [nvarchar](200) NULL,
	[subjectname] [nvarchar](200) NULL,
	[classname] [nvarchar](200) NULL,
	[amountoftime] [date] NULL,
	[subjectclassname] [int] NULL,
	[numberofstudent] [int] NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[teachingtypename] [nvarchar](200) NULL,
	[creditnum] [int] NULL,
	[lessionnum] [int] NULL,
	[dtcode] [varchar](10) NULL,
 CONSTRAINT [PK_TEACHING_HISTORY_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHING_TYPE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHING_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[edulevelcode] [varchar](10) NULL,
	[coefficent] [float] NULL,
 CONSTRAINT [PK_TEACHING_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TECH_AWARD]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TECH_AWARD](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[teachercode] [varchar](10) NULL,
	[Time] [date] NULL,
	[Organization] [nvarchar](200) NULL,
	[form] [nvarchar](200) NULL,
 CONSTRAINT [PK_TECH_AWARD_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THESIS]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THESIS](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[mentoritypengcode] [varchar](10) NULL,
	[numberofteacher] [int] NULL,
 CONSTRAINT [PK_THESIS_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WORKLOAD_TYPE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORKLOAD_TYPE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
 CONSTRAINT [PK_WORKLOAD_TYPE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WRITING_ROLE]    Script Date: 6/17/2019 3:40:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WRITING_ROLE](
	[code] [varchar](10) NOT NULL,
	[codeview] [varchar](20) NULL,
	[name] [nvarchar](200) NULL,
	[note] [nvarchar](200) NULL,
	[lastedituser] [varchar](20) NULL,
	[lastedittime] [datetime] NULL,
	[lock] [smallint] NULL,
	[lockdate] [datetime] NULL,
	[theorder] [int] NULL,
	[coefficent] [float] NULL,
 CONSTRAINT [PK_WRITING_ROLE_MY] PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ACCOUNT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightgroupcode], [username], [password]) VALUES (N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'admin', N'admin')
INSERT [dbo].[ACCOUNT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightgroupcode], [username], [password]) VALUES (N'2', N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'1', N'1')
INSERT [dbo].[DEPARTMENT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [facultycode], [Numberofmember]) VALUES (N'1', N'1', N'HTTT', NULL, NULL, NULL, NULL, NULL, 1, N'1', 4)
INSERT [dbo].[DT_RIGHT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightcode], [rightgroupcode]) VALUES (N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'1', N'1')
INSERT [dbo].[DT_RIGHT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightcode], [rightgroupcode]) VALUES (N'2', N'2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'1')
INSERT [dbo].[FACULTY] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Numberofmember], [numberphone]) VALUES (N'1', N'1', N'CNTT', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[RIGHT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [linkpath], [isCreate], [isUpdate], [isDelete], [description]) VALUES (N'1', N'1', N'TEACHER', NULL, NULL, NULL, NULL, NULL, 1, N'', 1, 1, 1, N'1')
INSERT [dbo].[RIGHT] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [linkpath], [isCreate], [isUpdate], [isDelete], [description]) VALUES (N'2', N'2', N'SUBJECT', NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, 1, 1, N'')
INSERT [dbo].[RIGHT_GROUP] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES (N'1', N'1', N'Phòng đào tạo', NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[TEACHER] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [birthday], [Email], [phone], [Departmentcode], [Haschild36m], [finalremissionrate]) VALUES (N'1', N'1', N'Nguyễn Thị Lờ', NULL, NULL, NULL, NULL, NULL, NULL, N'Nữ', NULL, NULL, NULL, NULL, NULL, N'1', 0, NULL)
INSERT [dbo].[TEACHER] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [birthday], [Email], [phone], [Departmentcode], [Haschild36m], [finalremissionrate]) VALUES (N'2', N'2', N'Nguyễn Thị Bờ', NULL, NULL, NULL, NULL, NULL, NULL, N'Nữ', NULL, NULL, NULL, NULL, NULL, N'1', 1, NULL)
INSERT [dbo].[TEACHER] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [birthday], [Email], [phone], [Departmentcode], [Haschild36m], [finalremissionrate]) VALUES (N'3', N'3', N'Nguyễn Văn Cờ', NULL, NULL, NULL, NULL, NULL, NULL, N'Nam', NULL, NULL, NULL, NULL, NULL, N'1', 0, NULL)
INSERT [dbo].[TEACHER] ([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [birthday], [Email], [phone], [Departmentcode], [Haschild36m], [finalremissionrate]) VALUES (N'4', N'4', N'Nguyễn Văn Tê', NULL, NULL, NULL, NULL, NULL, NULL, N'Nam', NULL, NULL, NULL, NULL, NULL, N'1', 0, NULL)
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNT_RIGHT_GROUP] FOREIGN KEY([rightgroupcode])
REFERENCES [dbo].[RIGHT_GROUP] ([code])
GO
ALTER TABLE [dbo].[ACCOUNT] CHECK CONSTRAINT [FK_ACCOUNT_RIGHT_GROUP]
GO
ALTER TABLE [dbo].[APPLIED_TECH_PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_APPLIED_TECH_PRODUCT_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[APPLIED_TECH_PRODUCT] CHECK CONSTRAINT [FK_APPLIED_TECH_PRODUCT_TEACHER]
GO
ALTER TABLE [dbo].[BOOK]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_BOOK_TYPE] FOREIGN KEY([booktypecode])
REFERENCES [dbo].[BOOK_TYPE] ([code])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[BOOK] CHECK CONSTRAINT [FK_BOOK_BOOK_TYPE]
GO
ALTER TABLE [dbo].[BOOK_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_BOOK_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[BOOK_HISTORY] CHECK CONSTRAINT [FK_BOOK_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[CLASS]  WITH CHECK ADD  CONSTRAINT [FK_CLASS_EDU_BRANCH] FOREIGN KEY([edubranchcode])
REFERENCES [dbo].[EDU_BRANCH] ([code])
GO
ALTER TABLE [dbo].[CLASS] CHECK CONSTRAINT [FK_CLASS_EDU_BRANCH]
GO
ALTER TABLE [dbo].[COUNCIL]  WITH CHECK ADD  CONSTRAINT [FK_COUNCIL_COUNCIL_TYPE] FOREIGN KEY([Counciltypecode])
REFERENCES [dbo].[COUNCIL_TYPE] ([code])
GO
ALTER TABLE [dbo].[COUNCIL] CHECK CONSTRAINT [FK_COUNCIL_COUNCIL_TYPE]
GO
ALTER TABLE [dbo].[COUNCIL_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_COUNCIL_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[COUNCIL_HISTORY] CHECK CONSTRAINT [FK_COUNCIL_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTMENT_FACULTY] FOREIGN KEY([facultycode])
REFERENCES [dbo].[FACULTY] ([code])
GO
ALTER TABLE [dbo].[DEPARTMENT] CHECK CONSTRAINT [FK_DEPARTMENT_FACULTY]
GO
ALTER TABLE [dbo].[DT_ACADEMIC_RANK]  WITH CHECK ADD  CONSTRAINT [FK_DT_ACADEMIC_RANK_ACADEMIC_RANK] FOREIGN KEY([academicrankcode])
REFERENCES [dbo].[ACADEMIC_RANK] ([code])
GO
ALTER TABLE [dbo].[DT_ACADEMIC_RANK] CHECK CONSTRAINT [FK_DT_ACADEMIC_RANK_ACADEMIC_RANK]
GO
ALTER TABLE [dbo].[DT_ACADEMIC_RANK]  WITH CHECK ADD  CONSTRAINT [FK_DT_ACADEMIC_RANK_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_ACADEMIC_RANK] CHECK CONSTRAINT [FK_DT_ACADEMIC_RANK_TEACHER]
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_ADMINISTRATIVE_POST] FOREIGN KEY([Administrativepostcode])
REFERENCES [dbo].[ADMINISTRATIVE_POST] ([code])
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST] CHECK CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_ADMINISTRATIVE_POST]
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_DEPARTMENT] FOREIGN KEY([departmentcode])
REFERENCES [dbo].[DEPARTMENT] ([code])
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST] CHECK CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_DEPARTMENT]
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_FACULTY] FOREIGN KEY([facultycode])
REFERENCES [dbo].[FACULTY] ([code])
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST] CHECK CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_FACULTY]
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_ADMINISTRATIVE_POST] CHECK CONSTRAINT [FK_DT_ADMINISTRATIVE_POST_TEACHER]
GO
ALTER TABLE [dbo].[DT_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_DT_AWARD_AWARD] FOREIGN KEY([awardcode])
REFERENCES [dbo].[AWARD] ([code])
GO
ALTER TABLE [dbo].[DT_AWARD] CHECK CONSTRAINT [FK_DT_AWARD_AWARD]
GO
ALTER TABLE [dbo].[DT_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_DT_AWARD_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_AWARD] CHECK CONSTRAINT [FK_DT_AWARD_TEACHER]
GO
ALTER TABLE [dbo].[DT_BOOK]  WITH CHECK ADD  CONSTRAINT [FK_DT_BOOK_BOOK] FOREIGN KEY([bookcode])
REFERENCES [dbo].[BOOK] ([code])
GO
ALTER TABLE [dbo].[DT_BOOK] CHECK CONSTRAINT [FK_DT_BOOK_BOOK]
GO
ALTER TABLE [dbo].[DT_BOOK]  WITH CHECK ADD  CONSTRAINT [FK_DT_BOOK_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_BOOK] CHECK CONSTRAINT [FK_DT_BOOK_TEACHER]
GO
ALTER TABLE [dbo].[DT_BOOK]  WITH CHECK ADD  CONSTRAINT [FK_DT_BOOK_WRITING_ROLE] FOREIGN KEY([writingrolecode])
REFERENCES [dbo].[WRITING_ROLE] ([code])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[DT_BOOK] CHECK CONSTRAINT [FK_DT_BOOK_WRITING_ROLE]
GO
ALTER TABLE [dbo].[DT_Council]  WITH CHECK ADD  CONSTRAINT [FK_DT_Council_COUNCIL_ROLE] FOREIGN KEY([councilrolecode])
REFERENCES [dbo].[COUNCIL_ROLE] ([code])
GO
ALTER TABLE [dbo].[DT_Council] CHECK CONSTRAINT [FK_DT_Council_COUNCIL_ROLE]
GO
ALTER TABLE [dbo].[DT_Council]  WITH CHECK ADD  CONSTRAINT [FK_DT_Council_REAL_COUNCIL] FOREIGN KEY([realcouncilcode])
REFERENCES [dbo].[REAL_COUNCIL] ([code])
GO
ALTER TABLE [dbo].[DT_Council] CHECK CONSTRAINT [FK_DT_Council_REAL_COUNCIL]
GO
ALTER TABLE [dbo].[DT_Council]  WITH CHECK ADD  CONSTRAINT [FK_DT_Council_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_Council] CHECK CONSTRAINT [FK_DT_Council_TEACHER]
GO
ALTER TABLE [dbo].[DT_DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_DT_DEGREE_DEGREE] FOREIGN KEY([degreecode])
REFERENCES [dbo].[DEGREE] ([code])
GO
ALTER TABLE [dbo].[DT_DEGREE] CHECK CONSTRAINT [FK_DT_DEGREE_DEGREE]
GO
ALTER TABLE [dbo].[DT_DEGREE]  WITH CHECK ADD  CONSTRAINT [FK_DT_DEGREE_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_DEGREE] CHECK CONSTRAINT [FK_DT_DEGREE_TEACHER]
GO
ALTER TABLE [dbo].[DT_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_DT_DEPARTMENT_DEPARTMENT] FOREIGN KEY([departmentcode])
REFERENCES [dbo].[DEPARTMENT] ([code])
GO
ALTER TABLE [dbo].[DT_DEPARTMENT] CHECK CONSTRAINT [FK_DT_DEPARTMENT_DEPARTMENT]
GO
ALTER TABLE [dbo].[DT_DEPARTMENT]  WITH CHECK ADD  CONSTRAINT [FK_DT_DEPARTMENT_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_DEPARTMENT] CHECK CONSTRAINT [FK_DT_DEPARTMENT_TEACHER]
GO
ALTER TABLE [dbo].[DT_EXAMIN]  WITH CHECK ADD  CONSTRAINT [FK_DT_EXAMIN_EXAMIN_TYPE] FOREIGN KEY([Examintypecode])
REFERENCES [dbo].[EXAMIN_TYPE] ([code])
GO
ALTER TABLE [dbo].[DT_EXAMIN] CHECK CONSTRAINT [FK_DT_EXAMIN_EXAMIN_TYPE]
GO
ALTER TABLE [dbo].[DT_EXAMIN]  WITH CHECK ADD  CONSTRAINT [FK_DT_EXAMIN_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_EXAMIN] CHECK CONSTRAINT [FK_DT_EXAMIN_TEACHER]
GO
ALTER TABLE [dbo].[DT_MENTORING]  WITH CHECK ADD  CONSTRAINT [FK_DT_MENTORING_DT_EXAMIN] FOREIGN KEY([teachercode])
REFERENCES [dbo].[DT_EXAMIN] ([code])
GO
ALTER TABLE [dbo].[DT_MENTORING] CHECK CONSTRAINT [FK_DT_MENTORING_DT_EXAMIN]
GO
ALTER TABLE [dbo].[DT_MENTORING]  WITH CHECK ADD  CONSTRAINT [FK_DT_MENTORING_STUDENT] FOREIGN KEY([studentcode])
REFERENCES [dbo].[STUDENT] ([code])
GO
ALTER TABLE [dbo].[DT_MENTORING] CHECK CONSTRAINT [FK_DT_MENTORING_STUDENT]
GO
ALTER TABLE [dbo].[DT_MENTORING]  WITH CHECK ADD  CONSTRAINT [FK_DT_MENTORING_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_MENTORING] CHECK CONSTRAINT [FK_DT_MENTORING_TEACHER]
GO
ALTER TABLE [dbo].[DT_MENTORING]  WITH CHECK ADD  CONSTRAINT [FK_DT_MENTORING_THESIS] FOREIGN KEY([thesiscode])
REFERENCES [dbo].[THESIS] ([code])
GO
ALTER TABLE [dbo].[DT_MENTORING] CHECK CONSTRAINT [FK_DT_MENTORING_THESIS]
GO
ALTER TABLE [dbo].[DT_PARTY_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_PARTY_POST_DEPARTMENT] FOREIGN KEY([departmentcode])
REFERENCES [dbo].[DEPARTMENT] ([code])
GO
ALTER TABLE [dbo].[DT_PARTY_POST] CHECK CONSTRAINT [FK_DT_PARTY_POST_DEPARTMENT]
GO
ALTER TABLE [dbo].[DT_PARTY_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_PARTY_POST_FACULTY] FOREIGN KEY([facultycode])
REFERENCES [dbo].[FACULTY] ([code])
GO
ALTER TABLE [dbo].[DT_PARTY_POST] CHECK CONSTRAINT [FK_DT_PARTY_POST_FACULTY]
GO
ALTER TABLE [dbo].[DT_PARTY_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_PARTY_POST_PARTY_POST] FOREIGN KEY([Partypostcode])
REFERENCES [dbo].[PARTY_POST] ([code])
GO
ALTER TABLE [dbo].[DT_PARTY_POST] CHECK CONSTRAINT [FK_DT_PARTY_POST_PARTY_POST]
GO
ALTER TABLE [dbo].[DT_PARTY_POST]  WITH CHECK ADD  CONSTRAINT [FK_DT_PARTY_POST_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_PARTY_POST] CHECK CONSTRAINT [FK_DT_PARTY_POST_TEACHER]
GO
ALTER TABLE [dbo].[DT_PUNISHMENT]  WITH CHECK ADD  CONSTRAINT [FK_DT_PUNISHMENT_PUNISHMENT] FOREIGN KEY([punishmentcode])
REFERENCES [dbo].[PUNISHMENT] ([code])
GO
ALTER TABLE [dbo].[DT_PUNISHMENT] CHECK CONSTRAINT [FK_DT_PUNISHMENT_PUNISHMENT]
GO
ALTER TABLE [dbo].[DT_PUNISHMENT]  WITH CHECK ADD  CONSTRAINT [FK_DT_PUNISHMENT_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_PUNISHMENT] CHECK CONSTRAINT [FK_DT_PUNISHMENT_TEACHER]
GO
ALTER TABLE [dbo].[DT_RESEARCH]  WITH CHECK ADD  CONSTRAINT [FK_DT_RESEARCH_RESEARCH] FOREIGN KEY([researchcode])
REFERENCES [dbo].[RESEARCH] ([code])
GO
ALTER TABLE [dbo].[DT_RESEARCH] CHECK CONSTRAINT [FK_DT_RESEARCH_RESEARCH]
GO
ALTER TABLE [dbo].[DT_RESEARCH]  WITH CHECK ADD  CONSTRAINT [FK_DT_RESEARCH_RESEARCH_ROLE] FOREIGN KEY([researchrolecode])
REFERENCES [dbo].[RESEARCH_ROLE] ([code])
GO
ALTER TABLE [dbo].[DT_RESEARCH] CHECK CONSTRAINT [FK_DT_RESEARCH_RESEARCH_ROLE]
GO
ALTER TABLE [dbo].[DT_RESEARCH]  WITH CHECK ADD  CONSTRAINT [FK_DT_RESEARCH_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_RESEARCH] CHECK CONSTRAINT [FK_DT_RESEARCH_TEACHER]
GO
ALTER TABLE [dbo].[DT_RESEARCH_TITLE]  WITH CHECK ADD  CONSTRAINT [FK_DT_RESEARCH_TITLE_RESEARCH_TITLE] FOREIGN KEY([Researchtitlecode])
REFERENCES [dbo].[RESEARCH_TITLE] ([code])
GO
ALTER TABLE [dbo].[DT_RESEARCH_TITLE] CHECK CONSTRAINT [FK_DT_RESEARCH_TITLE_RESEARCH_TITLE]
GO
ALTER TABLE [dbo].[DT_RESEARCH_TITLE]  WITH CHECK ADD  CONSTRAINT [FK_DT_RESEARCH_TITLE_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_RESEARCH_TITLE] CHECK CONSTRAINT [FK_DT_RESEARCH_TITLE_TEACHER]
GO
ALTER TABLE [dbo].[DT_RIGHT]  WITH CHECK ADD  CONSTRAINT [FK_DT_RIGHT_RIGHT] FOREIGN KEY([rightcode])
REFERENCES [dbo].[RIGHT] ([code])
GO
ALTER TABLE [dbo].[DT_RIGHT] CHECK CONSTRAINT [FK_DT_RIGHT_RIGHT]
GO
ALTER TABLE [dbo].[DT_RIGHT]  WITH CHECK ADD  CONSTRAINT [FK_DT_RIGHT_RIGHT_GROUP] FOREIGN KEY([rightgroupcode])
REFERENCES [dbo].[RIGHT_GROUP] ([code])
GO
ALTER TABLE [dbo].[DT_RIGHT] CHECK CONSTRAINT [FK_DT_RIGHT_RIGHT_GROUP]
GO
ALTER TABLE [dbo].[DT_SUBJECT_CLASS]  WITH CHECK ADD  CONSTRAINT [FK_DT_SUBJECT_CLASS_STUDENT] FOREIGN KEY([studentcode])
REFERENCES [dbo].[STUDENT] ([code])
GO
ALTER TABLE [dbo].[DT_SUBJECT_CLASS] CHECK CONSTRAINT [FK_DT_SUBJECT_CLASS_STUDENT]
GO
ALTER TABLE [dbo].[DT_SUBJECT_CLASS]  WITH CHECK ADD  CONSTRAINT [FK_DT_SUBJECT_CLASS_SUBJECT_CLASS] FOREIGN KEY([subjectclasscode])
REFERENCES [dbo].[SUBJECT_CLASS] ([code])
GO
ALTER TABLE [dbo].[DT_SUBJECT_CLASS] CHECK CONSTRAINT [FK_DT_SUBJECT_CLASS_SUBJECT_CLASS]
GO
ALTER TABLE [dbo].[DT_TEACHING]  WITH CHECK ADD  CONSTRAINT [FK_DT_TEACHING_DT_EXAMIN] FOREIGN KEY([teachingtypecode])
REFERENCES [dbo].[DT_EXAMIN] ([code])
GO
ALTER TABLE [dbo].[DT_TEACHING] CHECK CONSTRAINT [FK_DT_TEACHING_DT_EXAMIN]
GO
ALTER TABLE [dbo].[DT_TEACHING]  WITH CHECK ADD  CONSTRAINT [FK_DT_TEACHING_SUBJECT_CLASS] FOREIGN KEY([subjectcode])
REFERENCES [dbo].[SUBJECT_CLASS] ([code])
GO
ALTER TABLE [dbo].[DT_TEACHING] CHECK CONSTRAINT [FK_DT_TEACHING_SUBJECT_CLASS]
GO
ALTER TABLE [dbo].[DT_TEACHING]  WITH CHECK ADD  CONSTRAINT [FK_DT_TEACHING_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DT_TEACHING] CHECK CONSTRAINT [FK_DT_TEACHING_TEACHER]
GO
ALTER TABLE [dbo].[DT_TEACHING]  WITH CHECK ADD  CONSTRAINT [FK_DT_TEACHING_TEACHING_TYPE1] FOREIGN KEY([teachingtypecode])
REFERENCES [dbo].[TEACHING_TYPE] ([code])
GO
ALTER TABLE [dbo].[DT_TEACHING] CHECK CONSTRAINT [FK_DT_TEACHING_TEACHING_TYPE1]
GO
ALTER TABLE [dbo].[EDU_BRANCH]  WITH CHECK ADD  CONSTRAINT [FK_EDU_BRANCH_EDULEVEL] FOREIGN KEY([edulevelcode])
REFERENCES [dbo].[EDULEVEL] ([code])
GO
ALTER TABLE [dbo].[EDU_BRANCH] CHECK CONSTRAINT [FK_EDU_BRANCH_EDULEVEL]
GO
ALTER TABLE [dbo].[EDUCATION_PROCESS]  WITH CHECK ADD  CONSTRAINT [FK_EDUCATION_PROCESS_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EDUCATION_PROCESS] CHECK CONSTRAINT [FK_EDUCATION_PROCESS_TEACHER]
GO
ALTER TABLE [dbo].[EXAMIN_HISTORY ]  WITH CHECK ADD  CONSTRAINT [FK_EXAMIN_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[EXAMIN_HISTORY ] CHECK CONSTRAINT [FK_EXAMIN_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[FACULTY_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_FACULTY_HISTORY_FACULTY] FOREIGN KEY([facultycode])
REFERENCES [dbo].[FACULTY] ([code])
GO
ALTER TABLE [dbo].[FACULTY_HISTORY] CHECK CONSTRAINT [FK_FACULTY_HISTORY_FACULTY]
GO
ALTER TABLE [dbo].[LOAD_BY_SEMESTER]  WITH CHECK ADD  CONSTRAINT [FK_LOAD_BY_SEMESTER_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[LOAD_BY_SEMESTER] CHECK CONSTRAINT [FK_LOAD_BY_SEMESTER_TEACHER]
GO
ALTER TABLE [dbo].[LOAD_STATISTIC]  WITH CHECK ADD  CONSTRAINT [FK_LOAD_STATISTIC_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[LOAD_STATISTIC] CHECK CONSTRAINT [FK_LOAD_STATISTIC_TEACHER]
GO
ALTER TABLE [dbo].[MENTORING_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_MENTORING_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[MENTORING_HISTORY] CHECK CONSTRAINT [FK_MENTORING_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[MENTORING_TYPE]  WITH CHECK ADD  CONSTRAINT [FK_MENTORING_TYPE_EDULEVEL] FOREIGN KEY([edulevelcode])
REFERENCES [dbo].[EDULEVEL] ([code])
GO
ALTER TABLE [dbo].[MENTORING_TYPE] CHECK CONSTRAINT [FK_MENTORING_TYPE_EDULEVEL]
GO
ALTER TABLE [dbo].[OTHER_BUSINESS]  WITH CHECK ADD  CONSTRAINT [FK_OTHER_BUSINESS_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OTHER_BUSINESS] CHECK CONSTRAINT [FK_OTHER_BUSINESS_TEACHER]
GO
ALTER TABLE [dbo].[REAL_COUNCIL]  WITH CHECK ADD  CONSTRAINT [FK_REAL_COUNCIL_COUNCIL] FOREIGN KEY([Councilcode])
REFERENCES [dbo].[COUNCIL] ([code])
GO
ALTER TABLE [dbo].[REAL_COUNCIL] CHECK CONSTRAINT [FK_REAL_COUNCIL_COUNCIL]
GO
ALTER TABLE [dbo].[RESEARCH]  WITH CHECK ADD  CONSTRAINT [FK_RESEARCH_RESEARCH_TYPE] FOREIGN KEY([researchtypecode])
REFERENCES [dbo].[RESEARCH_TYPE] ([code])
GO
ALTER TABLE [dbo].[RESEARCH] CHECK CONSTRAINT [FK_RESEARCH_RESEARCH_TYPE]
GO
ALTER TABLE [dbo].[RESEARCH_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_RESEARCH_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[RESEARCH_HISTORY] CHECK CONSTRAINT [FK_RESEARCH_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[RESEARCH_ROLE]  WITH CHECK ADD  CONSTRAINT [FK_RESEARCH_ROLE_WORKLOAD_TYPE] FOREIGN KEY([workloadtypecode])
REFERENCES [dbo].[WORKLOAD_TYPE] ([code])
GO
ALTER TABLE [dbo].[RESEARCH_ROLE] CHECK CONSTRAINT [FK_RESEARCH_ROLE_WORKLOAD_TYPE]
GO
ALTER TABLE [dbo].[RESEARCH_TYPE]  WITH CHECK ADD  CONSTRAINT [FK_RESEARCH_TYPE_WORKLOAD_TYPE] FOREIGN KEY([workloadtypecode])
REFERENCES [dbo].[WORKLOAD_TYPE] ([code])
GO
ALTER TABLE [dbo].[RESEARCH_TYPE] CHECK CONSTRAINT [FK_RESEARCH_TYPE_WORKLOAD_TYPE]
GO
ALTER TABLE [dbo].[STUDENT]  WITH CHECK ADD  CONSTRAINT [FK_STUDENT_CLASS] FOREIGN KEY([classcode])
REFERENCES [dbo].[CLASS] ([code])
GO
ALTER TABLE [dbo].[STUDENT] CHECK CONSTRAINT [FK_STUDENT_CLASS]
GO
ALTER TABLE [dbo].[SUBJECT_CLASS]  WITH CHECK ADD  CONSTRAINT [FK_SUBJECT_CLASS_EDU_BRANCH] FOREIGN KEY([edubranchcode])
REFERENCES [dbo].[EDU_BRANCH] ([code])
GO
ALTER TABLE [dbo].[SUBJECT_CLASS] CHECK CONSTRAINT [FK_SUBJECT_CLASS_EDU_BRANCH]
GO
ALTER TABLE [dbo].[SUBJECT_CLASS]  WITH CHECK ADD  CONSTRAINT [FK_SUBJECT_CLASS_SUBJECT] FOREIGN KEY([subjectcode])
REFERENCES [dbo].[SUBJECT] ([code])
GO
ALTER TABLE [dbo].[SUBJECT_CLASS] CHECK CONSTRAINT [FK_SUBJECT_CLASS_SUBJECT]
GO
ALTER TABLE [dbo].[TEACHER_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_TEACHER_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[TEACHER_HISTORY] CHECK CONSTRAINT [FK_TEACHER_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[TEACHING_HISTORY]  WITH CHECK ADD  CONSTRAINT [FK_TEACHING_HISTORY_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
GO
ALTER TABLE [dbo].[TEACHING_HISTORY] CHECK CONSTRAINT [FK_TEACHING_HISTORY_TEACHER]
GO
ALTER TABLE [dbo].[TECH_AWARD]  WITH CHECK ADD  CONSTRAINT [FK_TECH_AWARD_TEACHER] FOREIGN KEY([teachercode])
REFERENCES [dbo].[TEACHER] ([code])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TECH_AWARD] CHECK CONSTRAINT [FK_TECH_AWARD_TEACHER]
GO
ALTER TABLE [dbo].[THESIS]  WITH CHECK ADD  CONSTRAINT [FK_THESIS_MENTORING_TYPE] FOREIGN KEY([mentoritypengcode])
REFERENCES [dbo].[MENTORING_TYPE] ([code])
GO
ALTER TABLE [dbo].[THESIS] CHECK CONSTRAINT [FK_THESIS_MENTORING_TYPE]
GO
USE [master]
GO
ALTER DATABASE [QLGV] SET  READ_WRITE 
GO
