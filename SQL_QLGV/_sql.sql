-----------------begin TEACHER--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEACHER]') AND type in (N'U'))
DROP TABLE [dbo].[TEACHER]
GO
-------------
CREATE TABLE [TEACHER]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [gender] Nvarchar(05) NULL,
  [Address] Nvarchar(1000) NULL,
  [hometown] Nvarchar(1000) NULL,
  [birthday] date NULL,
  [Email] Varchar(1000) NULL,
  [phone] Varchar(15) NULL,
  [Departmentcode] Varchar(10) NULL,
  [Haschild36m] bit NULL,
  [finalremissionrate] int NULL,

    CONSTRAINT [PK_TEACHER_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end TEACHER--------------------
GO


-----------------begin TEACHING_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEACHING_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[TEACHING_TYPE]
GO
-------------
CREATE TABLE [TEACHING_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [edulevelcode] varchar(10) NULL,
  [coefficent] float NULL,

    CONSTRAINT [PK_TEACHING_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end TEACHING_TYPE--------------------
GO


-----------------begin DT_TEACHING--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_TEACHING]') AND type in (N'U'))
DROP TABLE [dbo].[DT_TEACHING]
GO
-------------
CREATE TABLE [DT_TEACHING]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [subjectcode] varchar(10) NULL,
  [teachingtypecode] varchar(10) NULL,
  [time] date NULL,
  [semester] smallint NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_TEACHING_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_TEACHING--------------------
GO


-----------------begin DEPARTMENT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEPARTMENT]') AND type in (N'U'))
DROP TABLE [dbo].[DEPARTMENT]
GO
-------------
CREATE TABLE [DEPARTMENT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [facultycode] Varchar(10) NULL,
  [Numberofmember] int NULL,

    CONSTRAINT [PK_DEPARTMENT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DEPARTMENT--------------------
GO


-----------------begin DT_DEPARTMENT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_DEPARTMENT]') AND type in (N'U'))
DROP TABLE [dbo].[DT_DEPARTMENT]
GO
-------------
CREATE TABLE [DT_DEPARTMENT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [departmentcode] Varchar(10) NULL,
  [teachercode] Varchar(10) NULL,
  [start] date NULL,
  [end] date NULL,
  [numberofdecision] Varchar(10) NULL,
  [semester] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_DEPARTMENT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_DEPARTMENT--------------------
GO


-----------------begin FACULTY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACULTY]') AND type in (N'U'))
DROP TABLE [dbo].[FACULTY]
GO
-------------
CREATE TABLE [FACULTY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Numberofmember] int NULL,
  [numberphone] Varchar(15) NULL,

    CONSTRAINT [PK_FACULTY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end FACULTY--------------------
GO


-----------------begin SUBJECT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SUBJECT]') AND type in (N'U'))
DROP TABLE [dbo].[SUBJECT]
GO
-------------
CREATE TABLE [SUBJECT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Departmentcode] Varchar(10) NULL,
  [creditnum] int NULL,
  [lessonnum] int NULL,

    CONSTRAINT [PK_SUBJECT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end SUBJECT--------------------
GO


-----------------begin SUBJECT_CLASS--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SUBJECT_CLASS]') AND type in (N'U'))
DROP TABLE [dbo].[SUBJECT_CLASS]
GO
-------------
CREATE TABLE [SUBJECT_CLASS]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [numberof] int NULL,
  [subjectcode] varchar(10) NULL,
  [start] date NULL,
  [end] date NULL,
  [edubranchcode] Varchar(10) NULL,
  [Semester] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_SUBJECT_CLASS_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end SUBJECT_CLASS--------------------
GO


-----------------begin DT_SUBJECT_CLASS--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_SUBJECT_CLASS]') AND type in (N'U'))
DROP TABLE [dbo].[DT_SUBJECT_CLASS]
GO
-------------
CREATE TABLE [DT_SUBJECT_CLASS]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [studentcode] Varchar(10) NULL,
  [Result] float NULL,
  [subjectclasscode] varchar(10) NULL,
  [semester] smallint NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_SUBJECT_CLASS_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_SUBJECT_CLASS--------------------
GO


-----------------begin STUDENT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[STUDENT]') AND type in (N'U'))
DROP TABLE [dbo].[STUDENT]
GO
-------------
CREATE TABLE [STUDENT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [gender] Nvarchar(05) NULL,
  [Address] Nvarchar(1000) NULL,
  [hometown] Nvarchar(1000) NULL,
  [Birthday] date NULL,
  [classcode] Nvarchar(10) NULL,
  [Email] Varchar(1000) NULL,

    CONSTRAINT [PK_STUDENT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end STUDENT--------------------
GO


-----------------begin CLASS--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CLASS]') AND type in (N'U'))
DROP TABLE [dbo].[CLASS]
GO
-------------
CREATE TABLE [CLASS]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [numberof] int NULL,
  [edulevelcode] Varchar(10) NULL,

    CONSTRAINT [PK_CLASS_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end CLASS--------------------
GO


-----------------begin MENTORING_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MENTORING_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[MENTORING_TYPE]
GO
-------------
CREATE TABLE [MENTORING_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [edulevelcode] Nvarchar(10) NULL,
  [standartquantity] int NULL,
  [coefficent] float NULL,

    CONSTRAINT [PK_MENTORING_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
        

    ) ON [PRIMARY]
)
GO 
-----------------end MENTORING_TYPE--------------------
GO


-----------------begin THESIS--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[THESIS]') AND type in (N'U'))
DROP TABLE [dbo].[THESIS]
GO
-------------
CREATE TABLE [THESIS]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [mentoritypengcode] Nvarchar(10) NULL,
  [numberofteacher] int NULL,

    CONSTRAINT [PK_THESIS_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end THESIS--------------------
GO


-----------------begin DT_MENTORING--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_MENTORING]') AND type in (N'U'))
DROP TABLE [dbo].[DT_MENTORING]
GO
-------------
CREATE TABLE [DT_MENTORING]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [studentcode] varchar(10) NULL,
  [thesiscode] varchar(10) NULL,
  [star] date NULL,
  [end] date NULL,
  [semester] smallint NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_MENTORING_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_MENTORING--------------------
GO


-----------------begin MENTORING_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MENTORING_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[MENTORING_TYPE]
GO
-------------
CREATE TABLE [MENTORING_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [edulevelcode] Nvarchar(10) NULL,
  [standartquantity] int NULL,
  [coefficent] float NULL,

    CONSTRAINT [PK_MENTORING_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
       

    ) ON [PRIMARY]
)
GO 
-----------------end MENTORING_TYPE--------------------
GO


-----------------begin DT_EXAMIN--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_EXAMIN]') AND type in (N'U'))
DROP TABLE [dbo].[DT_EXAMIN]
GO
-------------
CREATE TABLE [DT_EXAMIN]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [subjectclasscode] Varchar(10) NULL,
  [numberofstudent] int NULL,
  [semester] smallint NULL,
  [Examintypecode] Varchar(10) NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_EXAMIN_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_EXAMIN--------------------
GO


-----------------begin COUNCIL--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNCIL]') AND type in (N'U'))
DROP TABLE [dbo].[COUNCIL]
GO
-------------
CREATE TABLE [COUNCIL]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Counciltypecode] Nvarchar(10) NULL,
  [semester] smallint NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_COUNCIL_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end COUNCIL--------------------
GO


-----------------begin COUNCIL_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNCIL_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[COUNCIL_TYPE]
GO
-------------
CREATE TABLE [COUNCIL_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_COUNCIL_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end COUNCIL_TYPE--------------------
GO


-----------------begin DT_Council--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_Council]') AND type in (N'U'))
DROP TABLE [dbo].[DT_Council]
GO
-------------
CREATE TABLE [DT_Council]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Councilcode] varchar(10) NULL,
  [teachercode] Varchar(10) NULL,
  [councilrolecode] Varchar(10) NULL,
  [semester] smallint NULL,
  [time] date NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_Council_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_Council--------------------
GO


-----------------begin COUNCIL_ROLE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNCIL_ROLE]') AND type in (N'U'))
DROP TABLE [dbo].[COUNCIL_ROLE]
GO
-------------
CREATE TABLE [COUNCIL_ROLE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [coefficent] float NULL,

    CONSTRAINT [PK_COUNCIL_ROLE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end COUNCIL_ROLE--------------------
GO


-----------------begin BOOK_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BOOK_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[BOOK_TYPE]
GO
-------------
CREATE TABLE [BOOK_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [unit] Nvarchar(50) NULL,

    CONSTRAINT [PK_BOOK_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BOOK_TYPE--------------------
GO


-----------------begin BOOK--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BOOK]') AND type in (N'U'))
DROP TABLE [dbo].[BOOK]
GO
-------------
CREATE TABLE [BOOK]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [workload] int NULL,
  [Publishtime] date NULL,
  [numberofauthors] int NULL,

    CONSTRAINT [PK_BOOK_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BOOK--------------------
GO


-----------------begin DT_BOOK--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_BOOK]') AND type in (N'U'))
DROP TABLE [dbo].[DT_BOOK]
GO
-------------
CREATE TABLE [DT_BOOK]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [bookcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [semester] smallint NULL,
  [writingrolecode] varchar(10) NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_BOOK_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_BOOK--------------------
GO


-----------------begin WRITING_ROLE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WRITING_ROLE]') AND type in (N'U'))
DROP TABLE [dbo].[WRITING_ROLE]
GO
-------------
CREATE TABLE [WRITING_ROLE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [coefficent] float NULL,

    CONSTRAINT [PK_WRITING_ROLE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end WRITING_ROLE--------------------
GO


-----------------begin RESEARCH_ROLE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH_ROLE]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH_ROLE]
GO
-------------
CREATE TABLE [RESEARCH_ROLE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [coeficoent] float NULL,
  [workloadtype] Varchar(10) NULL,

    CONSTRAINT [PK_RESEARCH_ROLE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH_ROLE--------------------
GO


-----------------begin WORKLOAD_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WORKLOAD_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[WORKLOAD_TYPE]
GO
-------------
CREATE TABLE [WORKLOAD_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_WORKLOAD_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end WORKLOAD_TYPE--------------------
GO


-----------------begin RESEARCH_TYPE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH_TYPE]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH_TYPE]
GO
-------------
CREATE TABLE [RESEARCH_TYPE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [standardtime] int NULL,
  [workloadtypecode] Varchar(10) NULL,

    CONSTRAINT [PK_RESEARCH_TYPE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH_TYPE--------------------
GO


-----------------begin RESEARCH--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH]
GO
-------------
CREATE TABLE [RESEARCH]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Standartime] int NULL,
  [researchtypecode] Varchar(10) NULL,
  [finishtime] date NULL,
  [starttime] date NULL,
  [acceptancestatus] Nvarchar(50) NULL,
  [id] Varchar(20) NULL,
  [numberofauthors] int NULL,

    CONSTRAINT [PK_RESEARCH_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH--------------------
GO


-----------------begin DT_RESEARCH--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_RESEARCH]') AND type in (N'U'))
DROP TABLE [dbo].[DT_RESEARCH]
GO
-------------
CREATE TABLE [DT_RESEARCH]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [researchcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [semester] smallint NULL,
  [researchrolecode] varchar(10) NULL,
  [workloadpart] int NULL,
  [yearstart] int NULL,

    CONSTRAINT [PK_DT_RESEARCH_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_RESEARCH--------------------
GO


-----------------begin EDULEVEL--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDULEVEL]') AND type in (N'U'))
DROP TABLE [dbo].[EDULEVEL]
GO
-------------
CREATE TABLE [EDULEVEL]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_EDULEVEL_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end EDULEVEL--------------------
GO


-----------------begin EDU_BRANCH--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDU_BRANCH]') AND type in (N'U'))
DROP TABLE [dbo].[EDU_BRANCH]
GO
-------------
CREATE TABLE [EDU_BRANCH]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [edulevelcode] Varchar(10) NULL,

    CONSTRAINT [PK_EDU_BRANCH_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end EDU_BRANCH--------------------
GO


-----------------begin ACADEMIC_RANK--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACADEMIC_RANK]') AND type in (N'U'))
DROP TABLE [dbo].[ACADEMIC_RANK]
GO
-------------
CREATE TABLE [ACADEMIC_RANK]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [quotahour] int NULL,
  [Researchtitlecode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [time] date NULL,

    CONSTRAINT [PK_ACADEMIC_RANK_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
      

    ) ON [PRIMARY]
)
GO 
-----------------end ACADEMIC_RANK--------------------
GO


-----------------begin DT_ACADEMIC_RANK--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_ACADEMIC_RANK]') AND type in (N'U'))
DROP TABLE [dbo].[DT_ACADEMIC_RANK]
GO
-------------
CREATE TABLE [DT_ACADEMIC_RANK]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [academicrankcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [time] date NULL,

    CONSTRAINT [PK_DT_ACADEMIC_RANK_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_ACADEMIC_RANK--------------------
GO


-----------------begin DEGREE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DEGREE]') AND type in (N'U'))
DROP TABLE [dbo].[DEGREE]
GO
-------------
CREATE TABLE [DEGREE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [quota] int NULL,

    CONSTRAINT [PK_DEGREE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DEGREE--------------------
GO


-----------------begin DT_DEGREE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_DEGREE]') AND type in (N'U'))
DROP TABLE [dbo].[DT_DEGREE]
GO
-------------
CREATE TABLE [DT_DEGREE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [degreecode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [time] date NULL,

    CONSTRAINT [PK_DT_DEGREE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_DEGREE--------------------
GO


-----------------begin PARTY_POST--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PARTY_POST]') AND type in (N'U'))
DROP TABLE [dbo].[PARTY_POST]
GO
-------------
CREATE TABLE [PARTY_POST]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [remissionrate] int NULL,
  [level] int NULL,

    CONSTRAINT [PK_PARTY_POST_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end PARTY_POST--------------------
GO


-----------------begin DT_PARTY_POST--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_PARTY_POST]') AND type in (N'U'))
DROP TABLE [dbo].[DT_PARTY_POST]
GO
-------------
CREATE TABLE [DT_PARTY_POST]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Partypostcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [start] date NULL,
  [end] date NULL,
  [facultycode] Varchar(10) NULL,
  [departmentcode] Varchar(10) NULL,
  [tenure] Nvarchar(50) NULL,

    CONSTRAINT [PK_DT_PARTY_POST_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_PARTY_POST--------------------
GO


-----------------begin ADMINISTRATIVE_POST--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ADMINISTRATIVE_POST]') AND type in (N'U'))
DROP TABLE [dbo].[ADMINISTRATIVE_POST]
GO
-------------
CREATE TABLE [ADMINISTRATIVE_POST]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [remissionrate] int NULL,

    CONSTRAINT [PK_ADMINISTRATIVE_POST_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ADMINISTRATIVE_POST--------------------
GO


-----------------begin DT_ADMINISTRATIVE_POST--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_ADMINISTRATIVE_POST]') AND type in (N'U'))
DROP TABLE [dbo].[DT_ADMINISTRATIVE_POST]
GO
-------------
CREATE TABLE [DT_ADMINISTRATIVE_POST]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [Administrativepostcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [start] date NULL,
  [end] date NULL,
  [facultycode] Varchar(10) NULL,
  [departmentcode] Varchar(10) NULL,
  [tenure] Nvarchar(50) NULL,

    CONSTRAINT [PK_DT_ADMINISTRATIVE_POST_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_ADMINISTRATIVE_POST--------------------
GO


-----------------begin RESEARCH_TITLE--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH_TITLE]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH_TITLE]
GO
-------------
CREATE TABLE [RESEARCH_TITLE]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [place] Nvarchar(1000) NULL,
  [time] Varchar(10) NULL,

    CONSTRAINT [PK_RESEARCH_TITLE_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH_TITLE--------------------
GO


-----------------begin ACADEMIC_RANK--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACADEMIC_RANK]') AND type in (N'U'))
DROP TABLE [dbo].[ACADEMIC_RANK]
GO
-------------
CREATE TABLE [ACADEMIC_RANK]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [quotahour] int NULL,
  [Researchtitlecode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [time] date NULL,

    CONSTRAINT [PK_ACADEMIC_RANK_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
      

    ) ON [PRIMARY]
)
GO 
-----------------end ACADEMIC_RANK--------------------
GO


-----------------begin AWARD--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AWARD]') AND type in (N'U'))
DROP TABLE [dbo].[AWARD]
GO
-------------
CREATE TABLE [AWARD]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_AWARD_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end AWARD--------------------
GO


-----------------begin DT_AWARD--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_AWARD]') AND type in (N'U'))
DROP TABLE [dbo].[DT_AWARD]
GO
-------------
CREATE TABLE [DT_AWARD]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [awardcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [time] date NULL,

    CONSTRAINT [PK_DT_AWARD_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_AWARD--------------------
GO


-----------------begin PUNISHMENT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PUNISHMENT]') AND type in (N'U'))
DROP TABLE [dbo].[PUNISHMENT]
GO
-------------
CREATE TABLE [PUNISHMENT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [time] date NULL,

    CONSTRAINT [PK_PUNISHMENT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end PUNISHMENT--------------------
GO


-----------------begin DT_PUNISHMENT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DT_PUNISHMENT]') AND type in (N'U'))
DROP TABLE [dbo].[DT_PUNISHMENT]
GO
-------------
CREATE TABLE [DT_PUNISHMENT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [punishmentcode] varchar(10) NULL,
  [teachercode] varchar(10) NULL,
  [time] date NULL,

    CONSTRAINT [PK_DT_PUNISHMENT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end DT_PUNISHMENT--------------------
GO


-----------------begin EDUCATION_PROCESS--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EDUCATION_PROCESS]') AND type in (N'U'))
DROP TABLE [dbo].[EDUCATION_PROCESS]
GO
-------------
CREATE TABLE [EDUCATION_PROCESS]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] Varchar(10) NULL,
  [bsedubranch] Nvarchar(100) NULL,
  [Bsplace] Nvarchar(1000) NULL,
  [Bsspecialization] Nvarchar(100) NULL,
  [bscountry] Nvarchar(1000) NULL,
  [Bsyear] date NULL,
  [msspecialzation] Nvarchar(100) NULL,
  [yearms] date NULL,
  [msthesisname] Nvarchar(100) NULL,
  [phdspeciallization] Nvarchar(100) NULL,
  [yearphd] date NULL,
  [phdthesisname] Nvarchar(100) NULL,

    CONSTRAINT [PK_EDUCATION_PROCESS_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end EDUCATION_PROCESS--------------------
GO


-----------------begin APPLIED_TECH_PRODUCT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[APPLIED_TECH_PRODUCT]') AND type in (N'U'))
DROP TABLE [dbo].[APPLIED_TECH_PRODUCT]
GO
-------------
CREATE TABLE [APPLIED_TECH_PRODUCT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] Varchar(10) NULL,
  [place] Nvarchar(1000) NULL,
  [time] date NULL,
  [Appliedscale] Nvarchar(1000) NULL,
  [eficiency] Nvarchar(1000) NULL,

    CONSTRAINT [PK_APPLIED_TECH_PRODUCT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end APPLIED_TECH_PRODUCT--------------------
GO


-----------------begin TECH_AWARD--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TECH_AWARD]') AND type in (N'U'))
DROP TABLE [dbo].[TECH_AWARD]
GO
-------------
CREATE TABLE [TECH_AWARD]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [Time] date NULL,
  [Organization] Nvarchar(200) NULL,
  [form] Nvarchar(200) NULL,

    CONSTRAINT [PK_TECH_AWARD_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end TECH_AWARD--------------------
GO


-----------------begin COUNCIL_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COUNCIL_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[COUNCIL_HISTORY]
GO
-------------
CREATE TABLE [COUNCIL_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [counciltypename] Nvarchar(200) NULL,
  [councilname] Nvarchar(200) NULL,
  [ocurrence] int NULL,
  [amountoftime] date NULL,

    CONSTRAINT [PK_COUNCIL_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end COUNCIL_HISTORY--------------------
GO


-----------------begin BOOK_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BOOK_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[BOOK_HISTORY]
GO
-------------
CREATE TABLE [BOOK_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [booktypename] Nvarchar(200) NULL,
  [bookname] Nvarchar(200) NULL,
  [amountofauthor] int NULL,
  [amountoftime] date NULL,

    CONSTRAINT [PK_BOOK_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end BOOK_HISTORY--------------------
GO


-----------------begin RESEARCH_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH_HISTORY]
GO
-------------
CREATE TABLE [RESEARCH_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [researchtypename] Nvarchar(200) NULL,
  [researchrolename] Nvarchar(200) NULL,
  [amountofauthor] int NULL,
  [amountoftime] date NULL,
  [workloadname] Nvarchar(200) NULL,
  [postname] Nvarchar(200) NULL,
  [place] Nvarchar(200) NULL,
  [tenure] int NULL,
  [start] date NULL,
  [end] date NULL,

    CONSTRAINT [PK_RESEARCH_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
    

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH_HISTORY--------------------
GO


-----------------begin RESEARCH_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RESEARCH_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[RESEARCH_HISTORY]
GO
-------------
CREATE TABLE [RESEARCH_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [researchtypename] Nvarchar(200) NULL,
  [researchrolename] Nvarchar(200) NULL,
  [amountofauthor] int NULL,
  [amountoftime] date NULL,
  [workloadname] Nvarchar(200) NULL,

  [postname] Nvarchar(200) NULL,
  [place] Nvarchar(200) NULL,
  [tenure] int NULL,
  [start] date NULL,
  [end] date NULL,

    CONSTRAINT [PK_RESEARCH_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC
       

    ) ON [PRIMARY]
)
GO 
-----------------end RESEARCH_HISTORY--------------------
GO


-----------------begin FACULTY_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACULTY_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[FACULTY_HISTORY]
GO
-------------
CREATE TABLE [FACULTY_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [facultycode] varchar(10) NULL,
  [facultyname] Nvarchar(200) NULL,
  [totalnumber] int NULL,
  [profnumber] int NULL,
  [asprofnumber] int NULL,
  [doctorscinumber] int NULL,
  [doctornumber] int NULL,
  [masternumber] int NULL,
  [bachelornumber] int NULL,
  [otherpeoplenumber] int NULL,
  [totaltitle] int NULL,
  [seniorlecturenumber] int NULL,
  [lecturenumber] int NULL,
  [atstartnumber] int NULL,

    CONSTRAINT [PK_FACULTY_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end FACULTY_HISTORY--------------------
GO


-----------------begin MENTORING_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MENTORING_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[MENTORING_HISTORY]
GO
-------------
CREATE TABLE [MENTORING_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [mentoringtypename] Nvarchar(200) NULL,
  [studentname] Nvarchar(200) NULL,
  [classname] Nvarchar(200) NULL,
  [amountoftime] Nvarchar(200) NULL,
  [standardquantity] int NULL,
  [edubranchname] Nvarchar(200) NULL,
  [thesisname] Nvarchar(200) NULL,

    CONSTRAINT [PK_MENTORING_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end MENTORING_HISTORY--------------------
GO


-----------------begin EXAMIN_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXAMIN_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[EXAMIN_HISTORY]
GO
-------------
CREATE TABLE [EXAMIN_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [examintypename] Nvarchar(200) NULL,
  [subjectname] Nvarchar(200) NULL,
  [classname] Nvarchar(200) NULL,
  [amountoftime] date NULL,
  [subjectclassname] Nvarchar(200) NULL,
  [numberofstudent] int NULL,
  [start] date NULL,
  [end] date NULL,

    CONSTRAINT [PK_EXAMIN_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end EXAMIN_HISTORY--------------------
GO


-----------------begin TEACHING_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEACHING_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[TEACHING_HISTORY]
GO
-------------
CREATE TABLE [TEACHING_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [edulevelname] Nvarchar(200) NULL,
  [subjectname] Nvarchar(200) NULL,
  [classname] Nvarchar(200) NULL,
  [amountoftime] date NULL,
  [subjectclassname] int NULL,
  [numberofstudent] int NULL,
  [start] date NULL,
  [end] date NULL,
  [teachingtypename] Nvarchar(200) NULL,
  [creditnum] int NULL,
  [lessionnum] int NULL,

    CONSTRAINT [PK_TEACHING_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end TEACHING_HISTORY--------------------
GO


-----------------begin TEACHER_HISTORY--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TEACHER_HISTORY]') AND type in (N'U'))
DROP TABLE [dbo].[TEACHER_HISTORY]
GO
-------------
CREATE TABLE [TEACHER_HISTORY]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [departmentname] Nvarchar(200) NULL,
  [facultyname] Nvarchar(200) NULL,
  [start] date NULL,
  [end] date NULL,

    CONSTRAINT [PK_TEACHER_HISTORY_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end TEACHER_HISTORY--------------------
GO


-----------------begin LOAD_STATISTIC--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAD_STATISTIC]') AND type in (N'U'))
DROP TABLE [dbo].[LOAD_STATISTIC]
GO
-------------
CREATE TABLE [LOAD_STATISTIC]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [departmentname] Nvarchar(200) NULL,
  [facultyname] Nvarchar(200) NULL,
  [start] date NULL,
  [end] date NULL,
  [realteachingload] int NULL,
  [requiredteachingload] int NULL,
  [teachingratio] Int NULL,
  [realresearchload] Int NULL,
  [requiredresearchload] Int NULL,
  [researchratio] Int NULL,
  [totalrealload] Int NULL,
  [totalrequiredload] int NULL,

    CONSTRAINT [PK_LOAD_STATISTIC_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end LOAD_STATISTIC--------------------
GO


-----------------begin LOAD_BY_SEMESTER--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAD_BY_SEMESTER]') AND type in (N'U'))
DROP TABLE [dbo].[LOAD_BY_SEMESTER]
GO
-------------
CREATE TABLE [LOAD_BY_SEMESTER]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [teachercode] varchar(10) NULL,
  [teachername] Nvarchar(200) NULL,
  [researchquota] int NULL,
  [teachingquota] int NULL,
  [semester] Int NULL,
  [start] date NULL,
  [end] date NULL,

    CONSTRAINT [PK_LOAD_BY_SEMESTER_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end LOAD_BY_SEMESTER--------------------
GO


-----------------begin ACCOUNT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ACCOUNT]') AND type in (N'U'))
DROP TABLE [dbo].[ACCOUNT]
GO
-------------
CREATE TABLE [ACCOUNT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [rightgroupcode] varchar(10) NULL,
  [username] Varchar(20) NULL,
  [password] NVarchar(200) NULL,

    CONSTRAINT [PK_ACCOUNT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end ACCOUNT--------------------
GO


-----------------begin RIGHT_GROUP--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RIGHT_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[RIGHT_GROUP]
GO
-------------
CREATE TABLE [RIGHT_GROUP]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,

    CONSTRAINT [PK_RIGHT_GROUP_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RIGHT_GROUP--------------------
GO


-----------------begin RIGHT--------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RIGHT]') AND type in (N'U'))
DROP TABLE [dbo].[RIGHT]
GO
-------------
CREATE TABLE [RIGHT]
(
  [code] Varchar(10) NOT NULL,
  [codeview] Varchar(20) NULL,
  [name] Nvarchar(200) NULL,
  [note] Nvarchar(200) NULL,
  [lastedituser] Varchar(20) NULL,
  [lastedittime] Datetime NULL,
  [lock] smallint NULL,
  [lockdate] datetime NULL,
  [theorder] int NULL,
  [rightgroupcode] varchar(10) NULL,
  [linkpath] Varchar(20) NULL,
  [isCreate] smallint NULL,
  [isUpdate] smallint NULL,
  [isDelete] smallint NULL,
  [description] Nvarchar(300) NULL,

    CONSTRAINT [PK_RIGHT_MY] PRIMARY KEY CLUSTERED 
    (
        [code] ASC

    ) ON [PRIMARY]
)
GO 
-----------------end RIGHT--------------------
GO



