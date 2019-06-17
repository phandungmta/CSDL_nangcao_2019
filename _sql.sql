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



