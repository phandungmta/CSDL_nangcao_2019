
-----------------begin EXAMIN_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_TYPE_insert')
    DROP PROCEDURE [gen_EXAMIN_TYPE_insert]
GO 
CREATE PROCEDURE [gen_EXAMIN_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coefficent float)
AS 
BEGIN
	INSERT INTO [EXAMIN_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coefficent)
END
-----------------end EXAMIN_TYPE_insert--------------------
GO

-----------------begin EXAMIN_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_TYPE_update')
    DROP PROCEDURE [gen_EXAMIN_TYPE_update]
GO 
CREATE PROCEDURE [gen_EXAMIN_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coefficent float, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [EXAMIN_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coefficent] =@coefficent WHERE [code] =@Key_code
END
-----------------end EXAMIN_TYPE_update--------------------
GO

-----------------begin EXAMIN_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_TYPE_delete')
    DROP PROCEDURE [gen_EXAMIN_TYPE_delete]
GO 
CREATE PROCEDURE [gen_EXAMIN_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [EXAMIN_TYPE] WHERE [code] =@code
END
-----------------end EXAMIN_TYPE_delete--------------------
GO

-----------------begin OTHER_BUSINESS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_OTHER_BUSINESS_insert')
    DROP PROCEDURE [gen_OTHER_BUSINESS_insert]
GO 
CREATE PROCEDURE [gen_OTHER_BUSINESS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode Varchar(10))
AS 
BEGIN
	INSERT INTO [OTHER_BUSINESS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode)
END
-----------------end OTHER_BUSINESS_insert--------------------
GO

-----------------begin OTHER_BUSINESS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_OTHER_BUSINESS_update')
    DROP PROCEDURE [gen_OTHER_BUSINESS_update]
GO 
CREATE PROCEDURE [gen_OTHER_BUSINESS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [OTHER_BUSINESS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode WHERE [code] =@Key_code
END
-----------------end OTHER_BUSINESS_update--------------------
GO

-----------------begin OTHER_BUSINESS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_OTHER_BUSINESS_delete')
    DROP PROCEDURE [gen_OTHER_BUSINESS_delete]
GO 
CREATE PROCEDURE [gen_OTHER_BUSINESS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [OTHER_BUSINESS] WHERE [code] =@code
END
-----------------end OTHER_BUSINESS_delete--------------------
GO

