
-----------------begin TEACHER_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_insert')
    DROP PROCEDURE [gen_TEACHER_insert]
GO 
CREATE PROCEDURE [gen_TEACHER_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @gender Nvarchar(05),   @Address Nvarchar(1000),   @hometown Nvarchar(1000),   @birthday date,   @Email Varchar(1000),   @phone Varchar(15),   @Departmentcode Varchar(10),   @Haschild36m bit,   @finalremissionrate int)
AS 
BEGIN
	INSERT INTO [TEACHER]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [birthday], [Email], [phone], [Departmentcode], [Haschild36m], [finalremissionrate]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @gender, @Address, @hometown, @birthday, @Email, @phone, @Departmentcode, @Haschild36m, @finalremissionrate)
END
-----------------end TEACHER_insert--------------------
GO

-----------------begin TEACHER_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_update')
    DROP PROCEDURE [gen_TEACHER_update]
GO 
CREATE PROCEDURE [gen_TEACHER_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @gender Nvarchar(05), @Address Nvarchar(1000), @hometown Nvarchar(1000), @birthday date, @Email Varchar(1000), @phone Varchar(15), @Departmentcode Varchar(10), @Haschild36m bit, @finalremissionrate int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [TEACHER] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [gender] =@gender, [Address] =@Address, [hometown] =@hometown, [birthday] =@birthday, [Email] =@Email, [phone] =@phone, [Departmentcode] =@Departmentcode, [Haschild36m] =@Haschild36m, [finalremissionrate] =@finalremissionrate WHERE [code] =@Key_code
END
-----------------end TEACHER_update--------------------
GO

-----------------begin TEACHER_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_delete')
    DROP PROCEDURE [gen_TEACHER_delete]
GO 
CREATE PROCEDURE [gen_TEACHER_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [TEACHER] WHERE [code] =@code
END
-----------------end TEACHER_delete--------------------
GO

-----------------begin TEACHING_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_TYPE_insert')
    DROP PROCEDURE [gen_TEACHING_TYPE_insert]
GO 
CREATE PROCEDURE [gen_TEACHING_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @edulevelcode varchar(10),   @coefficent float)
AS 
BEGIN
	INSERT INTO [TEACHING_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [edulevelcode], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @edulevelcode, @coefficent)
END
-----------------end TEACHING_TYPE_insert--------------------
GO

-----------------begin TEACHING_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_TYPE_update')
    DROP PROCEDURE [gen_TEACHING_TYPE_update]
GO 
CREATE PROCEDURE [gen_TEACHING_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @edulevelcode varchar(10), @coefficent float, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [TEACHING_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [edulevelcode] =@edulevelcode, [coefficent] =@coefficent WHERE [code] =@Key_code
END
-----------------end TEACHING_TYPE_update--------------------
GO

-----------------begin TEACHING_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_TYPE_delete')
    DROP PROCEDURE [gen_TEACHING_TYPE_delete]
GO 
CREATE PROCEDURE [gen_TEACHING_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [TEACHING_TYPE] WHERE [code] =@code
END
-----------------end TEACHING_TYPE_delete--------------------
GO

-----------------begin DT_TEACHING_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_TEACHING_insert')
    DROP PROCEDURE [gen_DT_TEACHING_insert]
GO 
CREATE PROCEDURE [gen_DT_TEACHING_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @subjectcode varchar(10),   @teachingtypecode varchar(10),   @time date,   @semester smallint,   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_TEACHING]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [subjectcode], [teachingtypecode], [time], [semester], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @subjectcode, @teachingtypecode, @time, @semester, @workloadpart, @yearstart)
END
-----------------end DT_TEACHING_insert--------------------
GO

-----------------begin DT_TEACHING_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_TEACHING_update')
    DROP PROCEDURE [gen_DT_TEACHING_update]
GO 
CREATE PROCEDURE [gen_DT_TEACHING_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @subjectcode varchar(10), @teachingtypecode varchar(10), @time date, @semester smallint, @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_TEACHING] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [subjectcode] =@subjectcode, [teachingtypecode] =@teachingtypecode, [time] =@time, [semester] =@semester, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_TEACHING_update--------------------
GO

-----------------begin DT_TEACHING_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_TEACHING_delete')
    DROP PROCEDURE [gen_DT_TEACHING_delete]
GO 
CREATE PROCEDURE [gen_DT_TEACHING_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_TEACHING] WHERE [code] =@code
END
-----------------end DT_TEACHING_delete--------------------
GO

-----------------begin DEPARTMENT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENT_insert')
    DROP PROCEDURE [gen_DEPARTMENT_insert]
GO 
CREATE PROCEDURE [gen_DEPARTMENT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @facultycode Varchar(10),   @Numberofmember int)
AS 
BEGIN
	INSERT INTO [DEPARTMENT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [facultycode], [Numberofmember]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @facultycode, @Numberofmember)
END
-----------------end DEPARTMENT_insert--------------------
GO

-----------------begin DEPARTMENT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENT_update')
    DROP PROCEDURE [gen_DEPARTMENT_update]
GO 
CREATE PROCEDURE [gen_DEPARTMENT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @facultycode Varchar(10), @Numberofmember int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DEPARTMENT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [facultycode] =@facultycode, [Numberofmember] =@Numberofmember WHERE [code] =@Key_code
END
-----------------end DEPARTMENT_update--------------------
GO

-----------------begin DEPARTMENT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEPARTMENT_delete')
    DROP PROCEDURE [gen_DEPARTMENT_delete]
GO 
CREATE PROCEDURE [gen_DEPARTMENT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DEPARTMENT] WHERE [code] =@code
END
-----------------end DEPARTMENT_delete--------------------
GO

-----------------begin DT_DEPARTMENT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEPARTMENT_insert')
    DROP PROCEDURE [gen_DT_DEPARTMENT_insert]
GO 
CREATE PROCEDURE [gen_DT_DEPARTMENT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @departmentcode Varchar(10),   @teachercode Varchar(10),   @start date,   @end date,   @numberofdecision Varchar(10),   @semester int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_DEPARTMENT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [departmentcode], [teachercode], [start], [end], [numberofdecision], [semester], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @departmentcode, @teachercode, @start, @end, @numberofdecision, @semester, @yearstart)
END
-----------------end DT_DEPARTMENT_insert--------------------
GO

-----------------begin DT_DEPARTMENT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEPARTMENT_update')
    DROP PROCEDURE [gen_DT_DEPARTMENT_update]
GO 
CREATE PROCEDURE [gen_DT_DEPARTMENT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @departmentcode Varchar(10), @teachercode Varchar(10), @start date, @end date, @numberofdecision Varchar(10), @semester int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_DEPARTMENT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [departmentcode] =@departmentcode, [teachercode] =@teachercode, [start] =@start, [end] =@end, [numberofdecision] =@numberofdecision, [semester] =@semester, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_DEPARTMENT_update--------------------
GO

-----------------begin DT_DEPARTMENT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEPARTMENT_delete')
    DROP PROCEDURE [gen_DT_DEPARTMENT_delete]
GO 
CREATE PROCEDURE [gen_DT_DEPARTMENT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_DEPARTMENT] WHERE [code] =@code
END
-----------------end DT_DEPARTMENT_delete--------------------
GO

-----------------begin FACULTY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_insert')
    DROP PROCEDURE [gen_FACULTY_insert]
GO 
CREATE PROCEDURE [gen_FACULTY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Numberofmember int,   @numberphone Varchar(15))
AS 
BEGIN
	INSERT INTO [FACULTY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Numberofmember], [numberphone]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Numberofmember, @numberphone)
END
-----------------end FACULTY_insert--------------------
GO

-----------------begin FACULTY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_update')
    DROP PROCEDURE [gen_FACULTY_update]
GO 
CREATE PROCEDURE [gen_FACULTY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Numberofmember int, @numberphone Varchar(15), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [FACULTY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Numberofmember] =@Numberofmember, [numberphone] =@numberphone WHERE [code] =@Key_code
END
-----------------end FACULTY_update--------------------
GO

-----------------begin FACULTY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_delete')
    DROP PROCEDURE [gen_FACULTY_delete]
GO 
CREATE PROCEDURE [gen_FACULTY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [FACULTY] WHERE [code] =@code
END
-----------------end FACULTY_delete--------------------
GO

-----------------begin SUBJECT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_insert')
    DROP PROCEDURE [gen_SUBJECT_insert]
GO 
CREATE PROCEDURE [gen_SUBJECT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Departmentcode Varchar(10),   @creditnum int,   @lessonnum int)
AS 
BEGIN
	INSERT INTO [SUBJECT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Departmentcode], [creditnum], [lessonnum]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Departmentcode, @creditnum, @lessonnum)
END
-----------------end SUBJECT_insert--------------------
GO

-----------------begin SUBJECT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_update')
    DROP PROCEDURE [gen_SUBJECT_update]
GO 
CREATE PROCEDURE [gen_SUBJECT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Departmentcode Varchar(10), @creditnum int, @lessonnum int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [SUBJECT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Departmentcode] =@Departmentcode, [creditnum] =@creditnum, [lessonnum] =@lessonnum WHERE [code] =@Key_code
END
-----------------end SUBJECT_update--------------------
GO

-----------------begin SUBJECT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_delete')
    DROP PROCEDURE [gen_SUBJECT_delete]
GO 
CREATE PROCEDURE [gen_SUBJECT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [SUBJECT] WHERE [code] =@code
END
-----------------end SUBJECT_delete--------------------
GO

-----------------begin SUBJECT_CLASS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_CLASS_insert')
    DROP PROCEDURE [gen_SUBJECT_CLASS_insert]
GO 
CREATE PROCEDURE [gen_SUBJECT_CLASS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @numberof int,   @subjectcode varchar(10),   @start date,   @end date,   @edubranchcode Varchar(10),   @Semester int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [SUBJECT_CLASS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [numberof], [subjectcode], [start], [end], [edubranchcode], [Semester], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @numberof, @subjectcode, @start, @end, @edubranchcode, @Semester, @yearstart)
END
-----------------end SUBJECT_CLASS_insert--------------------
GO

-----------------begin SUBJECT_CLASS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_CLASS_update')
    DROP PROCEDURE [gen_SUBJECT_CLASS_update]
GO 
CREATE PROCEDURE [gen_SUBJECT_CLASS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @numberof int, @subjectcode varchar(10), @start date, @end date, @edubranchcode Varchar(10), @Semester int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [SUBJECT_CLASS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [numberof] =@numberof, [subjectcode] =@subjectcode, [start] =@start, [end] =@end, [edubranchcode] =@edubranchcode, [Semester] =@Semester, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end SUBJECT_CLASS_update--------------------
GO

-----------------begin SUBJECT_CLASS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_SUBJECT_CLASS_delete')
    DROP PROCEDURE [gen_SUBJECT_CLASS_delete]
GO 
CREATE PROCEDURE [gen_SUBJECT_CLASS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [SUBJECT_CLASS] WHERE [code] =@code
END
-----------------end SUBJECT_CLASS_delete--------------------
GO

-----------------begin DT_SUBJECT_CLASS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_SUBJECT_CLASS_insert')
    DROP PROCEDURE [gen_DT_SUBJECT_CLASS_insert]
GO 
CREATE PROCEDURE [gen_DT_SUBJECT_CLASS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @studentcode Varchar(10),   @Result float,   @subjectclasscode varchar(10),   @semester smallint,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_SUBJECT_CLASS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [studentcode], [Result], [subjectclasscode], [semester], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @studentcode, @Result, @subjectclasscode, @semester, @yearstart)
END
-----------------end DT_SUBJECT_CLASS_insert--------------------
GO

-----------------begin DT_SUBJECT_CLASS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_SUBJECT_CLASS_update')
    DROP PROCEDURE [gen_DT_SUBJECT_CLASS_update]
GO 
CREATE PROCEDURE [gen_DT_SUBJECT_CLASS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @studentcode Varchar(10), @Result float, @subjectclasscode varchar(10), @semester smallint, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_SUBJECT_CLASS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [studentcode] =@studentcode, [Result] =@Result, [subjectclasscode] =@subjectclasscode, [semester] =@semester, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_SUBJECT_CLASS_update--------------------
GO

-----------------begin DT_SUBJECT_CLASS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_SUBJECT_CLASS_delete')
    DROP PROCEDURE [gen_DT_SUBJECT_CLASS_delete]
GO 
CREATE PROCEDURE [gen_DT_SUBJECT_CLASS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_SUBJECT_CLASS] WHERE [code] =@code
END
-----------------end DT_SUBJECT_CLASS_delete--------------------
GO

-----------------begin STUDENT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STUDENT_insert')
    DROP PROCEDURE [gen_STUDENT_insert]
GO 
CREATE PROCEDURE [gen_STUDENT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @gender Nvarchar(05),   @Address Nvarchar(1000),   @hometown Nvarchar(1000),   @Birthday date,   @classcode Nvarchar(10),   @Email Varchar(1000))
AS 
BEGIN
	INSERT INTO [STUDENT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [gender], [Address], [hometown], [Birthday], [classcode], [Email]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @gender, @Address, @hometown, @Birthday, @classcode, @Email)
END
-----------------end STUDENT_insert--------------------
GO

-----------------begin STUDENT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STUDENT_update')
    DROP PROCEDURE [gen_STUDENT_update]
GO 
CREATE PROCEDURE [gen_STUDENT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @gender Nvarchar(05), @Address Nvarchar(1000), @hometown Nvarchar(1000), @Birthday date, @classcode Nvarchar(10), @Email Varchar(1000), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [STUDENT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [gender] =@gender, [Address] =@Address, [hometown] =@hometown, [Birthday] =@Birthday, [classcode] =@classcode, [Email] =@Email WHERE [code] =@Key_code
END
-----------------end STUDENT_update--------------------
GO

-----------------begin STUDENT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_STUDENT_delete')
    DROP PROCEDURE [gen_STUDENT_delete]
GO 
CREATE PROCEDURE [gen_STUDENT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [STUDENT] WHERE [code] =@code
END
-----------------end STUDENT_delete--------------------
GO

-----------------begin CLASS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_CLASS_insert')
    DROP PROCEDURE [gen_CLASS_insert]
GO 
CREATE PROCEDURE [gen_CLASS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @numberof int,   @edulevelcode Varchar(10))
AS 
BEGIN
	INSERT INTO [CLASS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [numberof], [edulevelcode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @numberof, @edulevelcode)
END
-----------------end CLASS_insert--------------------
GO

-----------------begin CLASS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_CLASS_update')
    DROP PROCEDURE [gen_CLASS_update]
GO 
CREATE PROCEDURE [gen_CLASS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @numberof int, @edulevelcode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [CLASS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [numberof] =@numberof, [edulevelcode] =@edulevelcode WHERE [code] =@Key_code
END
-----------------end CLASS_update--------------------
GO

-----------------begin CLASS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_CLASS_delete')
    DROP PROCEDURE [gen_CLASS_delete]
GO 
CREATE PROCEDURE [gen_CLASS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [CLASS] WHERE [code] =@code
END
-----------------end CLASS_delete--------------------
GO

-----------------begin MENTORING_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_insert')
    DROP PROCEDURE [gen_MENTORING_TYPE_insert]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @edulevelcode Nvarchar(10),   @standartquantity int,   @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coefficent float)
AS 
BEGIN
	INSERT INTO [MENTORING_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [edulevelcode], [standartquantity], [code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @edulevelcode, @standartquantity, @code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coefficent)
END
-----------------end MENTORING_TYPE_insert--------------------
GO

-----------------begin MENTORING_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_update')
    DROP PROCEDURE [gen_MENTORING_TYPE_update]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @edulevelcode Nvarchar(10), @standartquantity int, @code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coefficent float, @Key_code Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [MENTORING_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [edulevelcode] =@edulevelcode, [standartquantity] =@standartquantity, [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coefficent] =@coefficent WHERE [code] =@Key_code AND [code] =@Key_code
END
-----------------end MENTORING_TYPE_update--------------------
GO

-----------------begin MENTORING_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_delete')
    DROP PROCEDURE [gen_MENTORING_TYPE_delete]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_delete](  @code Varchar(10),   @code Varchar(10))
AS 
BEGIN
	DELETE FROM [MENTORING_TYPE] WHERE [code] =@code AND [code] =@code
END
-----------------end MENTORING_TYPE_delete--------------------
GO

-----------------begin THESIS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_THESIS_insert')
    DROP PROCEDURE [gen_THESIS_insert]
GO 
CREATE PROCEDURE [gen_THESIS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @mentoritypengcode Nvarchar(10),   @numberofteacher int)
AS 
BEGIN
	INSERT INTO [THESIS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [mentoritypengcode], [numberofteacher]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @mentoritypengcode, @numberofteacher)
END
-----------------end THESIS_insert--------------------
GO

-----------------begin THESIS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_THESIS_update')
    DROP PROCEDURE [gen_THESIS_update]
GO 
CREATE PROCEDURE [gen_THESIS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @mentoritypengcode Nvarchar(10), @numberofteacher int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [THESIS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [mentoritypengcode] =@mentoritypengcode, [numberofteacher] =@numberofteacher WHERE [code] =@Key_code
END
-----------------end THESIS_update--------------------
GO

-----------------begin THESIS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_THESIS_delete')
    DROP PROCEDURE [gen_THESIS_delete]
GO 
CREATE PROCEDURE [gen_THESIS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [THESIS] WHERE [code] =@code
END
-----------------end THESIS_delete--------------------
GO

-----------------begin DT_MENTORING_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_MENTORING_insert')
    DROP PROCEDURE [gen_DT_MENTORING_insert]
GO 
CREATE PROCEDURE [gen_DT_MENTORING_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @studentcode varchar(10),   @thesiscode varchar(10),   @star date,   @end date,   @semester smallint,   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_MENTORING]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [studentcode], [thesiscode], [star], [end], [semester], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @studentcode, @thesiscode, @star, @end, @semester, @workloadpart, @yearstart)
END
-----------------end DT_MENTORING_insert--------------------
GO

-----------------begin DT_MENTORING_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_MENTORING_update')
    DROP PROCEDURE [gen_DT_MENTORING_update]
GO 
CREATE PROCEDURE [gen_DT_MENTORING_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @studentcode varchar(10), @thesiscode varchar(10), @star date, @end date, @semester smallint, @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_MENTORING] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [studentcode] =@studentcode, [thesiscode] =@thesiscode, [star] =@star, [end] =@end, [semester] =@semester, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_MENTORING_update--------------------
GO

-----------------begin DT_MENTORING_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_MENTORING_delete')
    DROP PROCEDURE [gen_DT_MENTORING_delete]
GO 
CREATE PROCEDURE [gen_DT_MENTORING_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_MENTORING] WHERE [code] =@code
END
-----------------end DT_MENTORING_delete--------------------
GO

-----------------begin MENTORING_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_insert')
    DROP PROCEDURE [gen_MENTORING_TYPE_insert]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @edulevelcode Nvarchar(10),   @standartquantity int,   @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coefficent float)
AS 
BEGIN
	INSERT INTO [MENTORING_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [edulevelcode], [standartquantity], [code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @edulevelcode, @standartquantity, @code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coefficent)
END
-----------------end MENTORING_TYPE_insert--------------------
GO

-----------------begin MENTORING_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_update')
    DROP PROCEDURE [gen_MENTORING_TYPE_update]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @edulevelcode Nvarchar(10), @standartquantity int, @code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coefficent float, @Key_code Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [MENTORING_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [edulevelcode] =@edulevelcode, [standartquantity] =@standartquantity, [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coefficent] =@coefficent WHERE [code] =@Key_code AND [code] =@Key_code
END
-----------------end MENTORING_TYPE_update--------------------
GO

-----------------begin MENTORING_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_TYPE_delete')
    DROP PROCEDURE [gen_MENTORING_TYPE_delete]
GO 
CREATE PROCEDURE [gen_MENTORING_TYPE_delete](  @code Varchar(10),   @code Varchar(10))
AS 
BEGIN
	DELETE FROM [MENTORING_TYPE] WHERE [code] =@code AND [code] =@code
END
-----------------end MENTORING_TYPE_delete--------------------
GO

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

-----------------begin DT_EXAMIN_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_EXAMIN_insert')
    DROP PROCEDURE [gen_DT_EXAMIN_insert]
GO 
CREATE PROCEDURE [gen_DT_EXAMIN_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @subjectclasscode Varchar(10),   @numberofstudent int,   @semester smallint,   @Examintypecode Varchar(10),   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_EXAMIN]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [subjectclasscode], [numberofstudent], [semester], [Examintypecode], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @subjectclasscode, @numberofstudent, @semester, @Examintypecode, @workloadpart, @yearstart)
END
-----------------end DT_EXAMIN_insert--------------------
GO

-----------------begin DT_EXAMIN_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_EXAMIN_update')
    DROP PROCEDURE [gen_DT_EXAMIN_update]
GO 
CREATE PROCEDURE [gen_DT_EXAMIN_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @subjectclasscode Varchar(10), @numberofstudent int, @semester smallint, @Examintypecode Varchar(10), @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_EXAMIN] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [subjectclasscode] =@subjectclasscode, [numberofstudent] =@numberofstudent, [semester] =@semester, [Examintypecode] =@Examintypecode, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_EXAMIN_update--------------------
GO

-----------------begin DT_EXAMIN_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_EXAMIN_delete')
    DROP PROCEDURE [gen_DT_EXAMIN_delete]
GO 
CREATE PROCEDURE [gen_DT_EXAMIN_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_EXAMIN] WHERE [code] =@code
END
-----------------end DT_EXAMIN_delete--------------------
GO

-----------------begin REAL_COUNCIL_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_REAL_COUNCIL_insert')
    DROP PROCEDURE [gen_REAL_COUNCIL_insert]
GO 
CREATE PROCEDURE [gen_REAL_COUNCIL_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Councilcode Nvarchar(10),   @semester smallint,   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [REAL_COUNCIL]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Councilcode], [semester], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Councilcode, @semester, @workloadpart, @yearstart)
END
-----------------end REAL_COUNCIL_insert--------------------
GO

-----------------begin REAL_COUNCIL_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_REAL_COUNCIL_update')
    DROP PROCEDURE [gen_REAL_COUNCIL_update]
GO 
CREATE PROCEDURE [gen_REAL_COUNCIL_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Councilcode Nvarchar(10), @semester smallint, @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [REAL_COUNCIL] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Councilcode] =@Councilcode, [semester] =@semester, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end REAL_COUNCIL_update--------------------
GO

-----------------begin REAL_COUNCIL_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_REAL_COUNCIL_delete')
    DROP PROCEDURE [gen_REAL_COUNCIL_delete]
GO 
CREATE PROCEDURE [gen_REAL_COUNCIL_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [REAL_COUNCIL] WHERE [code] =@code
END
-----------------end REAL_COUNCIL_delete--------------------
GO

-----------------begin COUNCIL_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_insert')
    DROP PROCEDURE [gen_COUNCIL_insert]
GO 
CREATE PROCEDURE [gen_COUNCIL_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Counciltypecode Nvarchar(10),   @semester smallint,   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [COUNCIL]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Counciltypecode], [semester], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Counciltypecode, @semester, @workloadpart, @yearstart)
END
-----------------end COUNCIL_insert--------------------
GO

-----------------begin COUNCIL_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_update')
    DROP PROCEDURE [gen_COUNCIL_update]
GO 
CREATE PROCEDURE [gen_COUNCIL_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Counciltypecode Nvarchar(10), @semester smallint, @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [COUNCIL] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Counciltypecode] =@Counciltypecode, [semester] =@semester, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end COUNCIL_update--------------------
GO

-----------------begin COUNCIL_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_delete')
    DROP PROCEDURE [gen_COUNCIL_delete]
GO 
CREATE PROCEDURE [gen_COUNCIL_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [COUNCIL] WHERE [code] =@code
END
-----------------end COUNCIL_delete--------------------
GO

-----------------begin COUNCIL_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_TYPE_insert')
    DROP PROCEDURE [gen_COUNCIL_TYPE_insert]
GO 
CREATE PROCEDURE [gen_COUNCIL_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int)
AS 
BEGIN
	INSERT INTO [COUNCIL_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder)
END
-----------------end COUNCIL_TYPE_insert--------------------
GO

-----------------begin COUNCIL_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_TYPE_update')
    DROP PROCEDURE [gen_COUNCIL_TYPE_update]
GO 
CREATE PROCEDURE [gen_COUNCIL_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [COUNCIL_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end COUNCIL_TYPE_update--------------------
GO

-----------------begin COUNCIL_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_TYPE_delete')
    DROP PROCEDURE [gen_COUNCIL_TYPE_delete]
GO 
CREATE PROCEDURE [gen_COUNCIL_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [COUNCIL_TYPE] WHERE [code] =@code
END
-----------------end COUNCIL_TYPE_delete--------------------
GO

-----------------begin DT_COUNCIL_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_COUNCIL_insert')
    DROP PROCEDURE [gen_DT_COUNCIL_insert]
GO 
CREATE PROCEDURE [gen_DT_COUNCIL_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @realcouncilcode varchar(10),   @teachercode Varchar(10),   @councilrolecode Varchar(10),   @semester smallint,   @time date,   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_COUNCIL]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [realcouncilcode], [teachercode], [councilrolecode], [semester], [time], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @realcouncilcode, @teachercode, @councilrolecode, @semester, @time, @workloadpart, @yearstart)
END
-----------------end DT_COUNCIL_insert--------------------
GO

-----------------begin DT_COUNCIL_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_COUNCIL_update')
    DROP PROCEDURE [gen_DT_COUNCIL_update]
GO 
CREATE PROCEDURE [gen_DT_COUNCIL_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @realcouncilcode varchar(10), @teachercode Varchar(10), @councilrolecode Varchar(10), @semester smallint, @time date, @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_COUNCIL] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [realcouncilcode] =@realcouncilcode, [teachercode] =@teachercode, [councilrolecode] =@councilrolecode, [semester] =@semester, [time] =@time, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_COUNCIL_update--------------------
GO

-----------------begin DT_COUNCIL_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_COUNCIL_delete')
    DROP PROCEDURE [gen_DT_COUNCIL_delete]
GO 
CREATE PROCEDURE [gen_DT_COUNCIL_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_COUNCIL] WHERE [code] =@code
END
-----------------end DT_COUNCIL_delete--------------------
GO

-----------------begin COUNCIL_ROLE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_ROLE_insert')
    DROP PROCEDURE [gen_COUNCIL_ROLE_insert]
GO 
CREATE PROCEDURE [gen_COUNCIL_ROLE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coefficent float)
AS 
BEGIN
	INSERT INTO [COUNCIL_ROLE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coefficent)
END
-----------------end COUNCIL_ROLE_insert--------------------
GO

-----------------begin COUNCIL_ROLE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_ROLE_update')
    DROP PROCEDURE [gen_COUNCIL_ROLE_update]
GO 
CREATE PROCEDURE [gen_COUNCIL_ROLE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coefficent float, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [COUNCIL_ROLE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coefficent] =@coefficent WHERE [code] =@Key_code
END
-----------------end COUNCIL_ROLE_update--------------------
GO

-----------------begin COUNCIL_ROLE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_ROLE_delete')
    DROP PROCEDURE [gen_COUNCIL_ROLE_delete]
GO 
CREATE PROCEDURE [gen_COUNCIL_ROLE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [COUNCIL_ROLE] WHERE [code] =@code
END
-----------------end COUNCIL_ROLE_delete--------------------
GO

-----------------begin BOOK_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_TYPE_insert')
    DROP PROCEDURE [gen_BOOK_TYPE_insert]
GO 
CREATE PROCEDURE [gen_BOOK_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @unit Nvarchar(50))
AS 
BEGIN
	INSERT INTO [BOOK_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [unit]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @unit)
END
-----------------end BOOK_TYPE_insert--------------------
GO

-----------------begin BOOK_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_TYPE_update')
    DROP PROCEDURE [gen_BOOK_TYPE_update]
GO 
CREATE PROCEDURE [gen_BOOK_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @unit Nvarchar(50), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [BOOK_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [unit] =@unit WHERE [code] =@Key_code
END
-----------------end BOOK_TYPE_update--------------------
GO

-----------------begin BOOK_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_TYPE_delete')
    DROP PROCEDURE [gen_BOOK_TYPE_delete]
GO 
CREATE PROCEDURE [gen_BOOK_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [BOOK_TYPE] WHERE [code] =@code
END
-----------------end BOOK_TYPE_delete--------------------
GO

-----------------begin BOOK_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_insert')
    DROP PROCEDURE [gen_BOOK_insert]
GO 
CREATE PROCEDURE [gen_BOOK_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @workload int,   @Publishtime date,   @numberofauthors int)
AS 
BEGIN
	INSERT INTO [BOOK]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [workload], [Publishtime], [numberofauthors]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @workload, @Publishtime, @numberofauthors)
END
-----------------end BOOK_insert--------------------
GO

-----------------begin BOOK_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_update')
    DROP PROCEDURE [gen_BOOK_update]
GO 
CREATE PROCEDURE [gen_BOOK_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @workload int, @Publishtime date, @numberofauthors int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [BOOK] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [workload] =@workload, [Publishtime] =@Publishtime, [numberofauthors] =@numberofauthors WHERE [code] =@Key_code
END
-----------------end BOOK_update--------------------
GO

-----------------begin BOOK_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_delete')
    DROP PROCEDURE [gen_BOOK_delete]
GO 
CREATE PROCEDURE [gen_BOOK_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [BOOK] WHERE [code] =@code
END
-----------------end BOOK_delete--------------------
GO

-----------------begin DT_BOOK_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_BOOK_insert')
    DROP PROCEDURE [gen_DT_BOOK_insert]
GO 
CREATE PROCEDURE [gen_DT_BOOK_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @bookcode varchar(10),   @teachercode varchar(10),   @semester smallint,   @writingrolecode varchar(10),   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_BOOK]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [bookcode], [teachercode], [semester], [writingrolecode], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @bookcode, @teachercode, @semester, @writingrolecode, @workloadpart, @yearstart)
END
-----------------end DT_BOOK_insert--------------------
GO

-----------------begin DT_BOOK_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_BOOK_update')
    DROP PROCEDURE [gen_DT_BOOK_update]
GO 
CREATE PROCEDURE [gen_DT_BOOK_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @bookcode varchar(10), @teachercode varchar(10), @semester smallint, @writingrolecode varchar(10), @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_BOOK] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [bookcode] =@bookcode, [teachercode] =@teachercode, [semester] =@semester, [writingrolecode] =@writingrolecode, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_BOOK_update--------------------
GO

-----------------begin DT_BOOK_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_BOOK_delete')
    DROP PROCEDURE [gen_DT_BOOK_delete]
GO 
CREATE PROCEDURE [gen_DT_BOOK_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_BOOK] WHERE [code] =@code
END
-----------------end DT_BOOK_delete--------------------
GO

-----------------begin WRITING_ROLE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WRITING_ROLE_insert')
    DROP PROCEDURE [gen_WRITING_ROLE_insert]
GO 
CREATE PROCEDURE [gen_WRITING_ROLE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coefficent float)
AS 
BEGIN
	INSERT INTO [WRITING_ROLE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coefficent]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coefficent)
END
-----------------end WRITING_ROLE_insert--------------------
GO

-----------------begin WRITING_ROLE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WRITING_ROLE_update')
    DROP PROCEDURE [gen_WRITING_ROLE_update]
GO 
CREATE PROCEDURE [gen_WRITING_ROLE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coefficent float, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [WRITING_ROLE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coefficent] =@coefficent WHERE [code] =@Key_code
END
-----------------end WRITING_ROLE_update--------------------
GO

-----------------begin WRITING_ROLE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WRITING_ROLE_delete')
    DROP PROCEDURE [gen_WRITING_ROLE_delete]
GO 
CREATE PROCEDURE [gen_WRITING_ROLE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [WRITING_ROLE] WHERE [code] =@code
END
-----------------end WRITING_ROLE_delete--------------------
GO

-----------------begin RESEARCH_ROLE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_ROLE_insert')
    DROP PROCEDURE [gen_RESEARCH_ROLE_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_ROLE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @coeficoent float,   @workloadtype Varchar(10))
AS 
BEGIN
	INSERT INTO [RESEARCH_ROLE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [coeficoent], [workloadtype]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @coeficoent, @workloadtype)
END
-----------------end RESEARCH_ROLE_insert--------------------
GO

-----------------begin RESEARCH_ROLE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_ROLE_update')
    DROP PROCEDURE [gen_RESEARCH_ROLE_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_ROLE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @coeficoent float, @workloadtype Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH_ROLE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [coeficoent] =@coeficoent, [workloadtype] =@workloadtype WHERE [code] =@Key_code
END
-----------------end RESEARCH_ROLE_update--------------------
GO

-----------------begin RESEARCH_ROLE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_ROLE_delete')
    DROP PROCEDURE [gen_RESEARCH_ROLE_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_ROLE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH_ROLE] WHERE [code] =@code
END
-----------------end RESEARCH_ROLE_delete--------------------
GO

-----------------begin WORKLOAD_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WORKLOAD_TYPE_insert')
    DROP PROCEDURE [gen_WORKLOAD_TYPE_insert]
GO 
CREATE PROCEDURE [gen_WORKLOAD_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int)
AS 
BEGIN
	INSERT INTO [WORKLOAD_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder)
END
-----------------end WORKLOAD_TYPE_insert--------------------
GO

-----------------begin WORKLOAD_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WORKLOAD_TYPE_update')
    DROP PROCEDURE [gen_WORKLOAD_TYPE_update]
GO 
CREATE PROCEDURE [gen_WORKLOAD_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [WORKLOAD_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end WORKLOAD_TYPE_update--------------------
GO

-----------------begin WORKLOAD_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_WORKLOAD_TYPE_delete')
    DROP PROCEDURE [gen_WORKLOAD_TYPE_delete]
GO 
CREATE PROCEDURE [gen_WORKLOAD_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [WORKLOAD_TYPE] WHERE [code] =@code
END
-----------------end WORKLOAD_TYPE_delete--------------------
GO

-----------------begin RESEARCH_TYPE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TYPE_insert')
    DROP PROCEDURE [gen_RESEARCH_TYPE_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_TYPE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @standardtime int,   @workloadtypecode Varchar(10))
AS 
BEGIN
	INSERT INTO [RESEARCH_TYPE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [standardtime], [workloadtypecode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @standardtime, @workloadtypecode)
END
-----------------end RESEARCH_TYPE_insert--------------------
GO

-----------------begin RESEARCH_TYPE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TYPE_update')
    DROP PROCEDURE [gen_RESEARCH_TYPE_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_TYPE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @standardtime int, @workloadtypecode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH_TYPE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [standardtime] =@standardtime, [workloadtypecode] =@workloadtypecode WHERE [code] =@Key_code
END
-----------------end RESEARCH_TYPE_update--------------------
GO

-----------------begin RESEARCH_TYPE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TYPE_delete')
    DROP PROCEDURE [gen_RESEARCH_TYPE_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_TYPE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH_TYPE] WHERE [code] =@code
END
-----------------end RESEARCH_TYPE_delete--------------------
GO

-----------------begin RESEARCH_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_insert')
    DROP PROCEDURE [gen_RESEARCH_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Standartime int,   @researchtypecode Varchar(10),   @finishtime date,   @starttime date,   @acceptancestatus Nvarchar(50),   @id Varchar(20),   @numberofauthors int)
AS 
BEGIN
	INSERT INTO [RESEARCH]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Standartime], [researchtypecode], [finishtime], [starttime], [acceptancestatus], [id], [numberofauthors]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Standartime, @researchtypecode, @finishtime, @starttime, @acceptancestatus, @id, @numberofauthors)
END
-----------------end RESEARCH_insert--------------------
GO

-----------------begin RESEARCH_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_update')
    DROP PROCEDURE [gen_RESEARCH_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Standartime int, @researchtypecode Varchar(10), @finishtime date, @starttime date, @acceptancestatus Nvarchar(50), @id Varchar(20), @numberofauthors int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Standartime] =@Standartime, [researchtypecode] =@researchtypecode, [finishtime] =@finishtime, [starttime] =@starttime, [acceptancestatus] =@acceptancestatus, [id] =@id, [numberofauthors] =@numberofauthors WHERE [code] =@Key_code
END
-----------------end RESEARCH_update--------------------
GO

-----------------begin RESEARCH_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_delete')
    DROP PROCEDURE [gen_RESEARCH_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH] WHERE [code] =@code
END
-----------------end RESEARCH_delete--------------------
GO

-----------------begin DT_RESEARCH_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_insert')
    DROP PROCEDURE [gen_DT_RESEARCH_insert]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @researchcode varchar(10),   @teachercode varchar(10),   @semester smallint,   @researchrolecode varchar(10),   @workloadpart int,   @yearstart int)
AS 
BEGIN
	INSERT INTO [DT_RESEARCH]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [researchcode], [teachercode], [semester], [researchrolecode], [workloadpart], [yearstart]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @researchcode, @teachercode, @semester, @researchrolecode, @workloadpart, @yearstart)
END
-----------------end DT_RESEARCH_insert--------------------
GO

-----------------begin DT_RESEARCH_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_update')
    DROP PROCEDURE [gen_DT_RESEARCH_update]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @researchcode varchar(10), @teachercode varchar(10), @semester smallint, @researchrolecode varchar(10), @workloadpart int, @yearstart int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_RESEARCH] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [researchcode] =@researchcode, [teachercode] =@teachercode, [semester] =@semester, [researchrolecode] =@researchrolecode, [workloadpart] =@workloadpart, [yearstart] =@yearstart WHERE [code] =@Key_code
END
-----------------end DT_RESEARCH_update--------------------
GO

-----------------begin DT_RESEARCH_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_delete')
    DROP PROCEDURE [gen_DT_RESEARCH_delete]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_RESEARCH] WHERE [code] =@code
END
-----------------end DT_RESEARCH_delete--------------------
GO

-----------------begin EDU_LEVEL_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_LEVEL_insert')
    DROP PROCEDURE [gen_EDU_LEVEL_insert]
GO 
CREATE PROCEDURE [gen_EDU_LEVEL_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int)
AS 
BEGIN
	INSERT INTO [EDU_LEVEL]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder)
END
-----------------end EDU_LEVEL_insert--------------------
GO

-----------------begin EDU_LEVEL_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_LEVEL_update')
    DROP PROCEDURE [gen_EDU_LEVEL_update]
GO 
CREATE PROCEDURE [gen_EDU_LEVEL_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [EDU_LEVEL] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end EDU_LEVEL_update--------------------
GO

-----------------begin EDU_LEVEL_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_LEVEL_delete')
    DROP PROCEDURE [gen_EDU_LEVEL_delete]
GO 
CREATE PROCEDURE [gen_EDU_LEVEL_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [EDU_LEVEL] WHERE [code] =@code
END
-----------------end EDU_LEVEL_delete--------------------
GO

-----------------begin EDU_BRANCH_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_BRANCH_insert')
    DROP PROCEDURE [gen_EDU_BRANCH_insert]
GO 
CREATE PROCEDURE [gen_EDU_BRANCH_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @edulevelcode Varchar(10))
AS 
BEGIN
	INSERT INTO [EDU_BRANCH]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [edulevelcode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @edulevelcode)
END
-----------------end EDU_BRANCH_insert--------------------
GO

-----------------begin EDU_BRANCH_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_BRANCH_update')
    DROP PROCEDURE [gen_EDU_BRANCH_update]
GO 
CREATE PROCEDURE [gen_EDU_BRANCH_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @edulevelcode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [EDU_BRANCH] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [edulevelcode] =@edulevelcode WHERE [code] =@Key_code
END
-----------------end EDU_BRANCH_update--------------------
GO

-----------------begin EDU_BRANCH_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDU_BRANCH_delete')
    DROP PROCEDURE [gen_EDU_BRANCH_delete]
GO 
CREATE PROCEDURE [gen_EDU_BRANCH_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [EDU_BRANCH] WHERE [code] =@code
END
-----------------end EDU_BRANCH_delete--------------------
GO

-----------------begin ACADEMIC_RANK_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACADEMIC_RANK_insert')
    DROP PROCEDURE [gen_ACADEMIC_RANK_insert]
GO 
CREATE PROCEDURE [gen_ACADEMIC_RANK_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @quotahour int)
AS 
BEGIN
	INSERT INTO [ACADEMIC_RANK]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [quotahour]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @quotahour)
END
-----------------end ACADEMIC_RANK_insert--------------------
GO

-----------------begin ACADEMIC_RANK_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACADEMIC_RANK_update')
    DROP PROCEDURE [gen_ACADEMIC_RANK_update]
GO 
CREATE PROCEDURE [gen_ACADEMIC_RANK_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @quotahour int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [ACADEMIC_RANK] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [quotahour] =@quotahour WHERE [code] =@Key_code
END
-----------------end ACADEMIC_RANK_update--------------------
GO

-----------------begin ACADEMIC_RANK_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACADEMIC_RANK_delete')
    DROP PROCEDURE [gen_ACADEMIC_RANK_delete]
GO 
CREATE PROCEDURE [gen_ACADEMIC_RANK_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [ACADEMIC_RANK] WHERE [code] =@code
END
-----------------end ACADEMIC_RANK_delete--------------------
GO

-----------------begin DT_ACADEMIC_RANK_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ACADEMIC_RANK_insert')
    DROP PROCEDURE [gen_DT_ACADEMIC_RANK_insert]
GO 
CREATE PROCEDURE [gen_DT_ACADEMIC_RANK_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @academicrankcode varchar(10),   @teachercode varchar(10),   @place Nvarchar(1000),   @time date)
AS 
BEGIN
	INSERT INTO [DT_ACADEMIC_RANK]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [academicrankcode], [teachercode], [place], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @academicrankcode, @teachercode, @place, @time)
END
-----------------end DT_ACADEMIC_RANK_insert--------------------
GO

-----------------begin DT_ACADEMIC_RANK_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ACADEMIC_RANK_update')
    DROP PROCEDURE [gen_DT_ACADEMIC_RANK_update]
GO 
CREATE PROCEDURE [gen_DT_ACADEMIC_RANK_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @academicrankcode varchar(10), @teachercode varchar(10), @place Nvarchar(1000), @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_ACADEMIC_RANK] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [academicrankcode] =@academicrankcode, [teachercode] =@teachercode, [place] =@place, [time] =@time WHERE [code] =@Key_code
END
-----------------end DT_ACADEMIC_RANK_update--------------------
GO

-----------------begin DT_ACADEMIC_RANK_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ACADEMIC_RANK_delete')
    DROP PROCEDURE [gen_DT_ACADEMIC_RANK_delete]
GO 
CREATE PROCEDURE [gen_DT_ACADEMIC_RANK_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_ACADEMIC_RANK] WHERE [code] =@code
END
-----------------end DT_ACADEMIC_RANK_delete--------------------
GO

-----------------begin DEGREE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEGREE_insert')
    DROP PROCEDURE [gen_DEGREE_insert]
GO 
CREATE PROCEDURE [gen_DEGREE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @quota int)
AS 
BEGIN
	INSERT INTO [DEGREE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [quota]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @quota)
END
-----------------end DEGREE_insert--------------------
GO

-----------------begin DEGREE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEGREE_update')
    DROP PROCEDURE [gen_DEGREE_update]
GO 
CREATE PROCEDURE [gen_DEGREE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @quota int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DEGREE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [quota] =@quota WHERE [code] =@Key_code
END
-----------------end DEGREE_update--------------------
GO

-----------------begin DEGREE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DEGREE_delete')
    DROP PROCEDURE [gen_DEGREE_delete]
GO 
CREATE PROCEDURE [gen_DEGREE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DEGREE] WHERE [code] =@code
END
-----------------end DEGREE_delete--------------------
GO

-----------------begin DT_DEGREE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEGREE_insert')
    DROP PROCEDURE [gen_DT_DEGREE_insert]
GO 
CREATE PROCEDURE [gen_DT_DEGREE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @degreecode varchar(10),   @teachercode varchar(10),   @place Nvarchar(1000),   @time date)
AS 
BEGIN
	INSERT INTO [DT_DEGREE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [degreecode], [teachercode], [place], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @degreecode, @teachercode, @place, @time)
END
-----------------end DT_DEGREE_insert--------------------
GO

-----------------begin DT_DEGREE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEGREE_update')
    DROP PROCEDURE [gen_DT_DEGREE_update]
GO 
CREATE PROCEDURE [gen_DT_DEGREE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @degreecode varchar(10), @teachercode varchar(10), @place Nvarchar(1000), @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_DEGREE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [degreecode] =@degreecode, [teachercode] =@teachercode, [place] =@place, [time] =@time WHERE [code] =@Key_code
END
-----------------end DT_DEGREE_update--------------------
GO

-----------------begin DT_DEGREE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_DEGREE_delete')
    DROP PROCEDURE [gen_DT_DEGREE_delete]
GO 
CREATE PROCEDURE [gen_DT_DEGREE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_DEGREE] WHERE [code] =@code
END
-----------------end DT_DEGREE_delete--------------------
GO

-----------------begin PARTY_POST_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PARTY_POST_insert')
    DROP PROCEDURE [gen_PARTY_POST_insert]
GO 
CREATE PROCEDURE [gen_PARTY_POST_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @remissionrate int,   @level int)
AS 
BEGIN
	INSERT INTO [PARTY_POST]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [remissionrate], [level]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @remissionrate, @level)
END
-----------------end PARTY_POST_insert--------------------
GO

-----------------begin PARTY_POST_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PARTY_POST_update')
    DROP PROCEDURE [gen_PARTY_POST_update]
GO 
CREATE PROCEDURE [gen_PARTY_POST_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @remissionrate int, @level int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [PARTY_POST] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [remissionrate] =@remissionrate, [level] =@level WHERE [code] =@Key_code
END
-----------------end PARTY_POST_update--------------------
GO

-----------------begin PARTY_POST_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PARTY_POST_delete')
    DROP PROCEDURE [gen_PARTY_POST_delete]
GO 
CREATE PROCEDURE [gen_PARTY_POST_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [PARTY_POST] WHERE [code] =@code
END
-----------------end PARTY_POST_delete--------------------
GO

-----------------begin DT_PARTY_POST_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PARTY_POST_insert')
    DROP PROCEDURE [gen_DT_PARTY_POST_insert]
GO 
CREATE PROCEDURE [gen_DT_PARTY_POST_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Partypostcode varchar(10),   @teachercode varchar(10),   @place Nvarchar(1000),   @start date,   @end date,   @facultycode Varchar(10),   @departmentcode Varchar(10),   @tenure Nvarchar(50))
AS 
BEGIN
	INSERT INTO [DT_PARTY_POST]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Partypostcode], [teachercode], [place], [start], [end], [facultycode], [departmentcode], [tenure]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Partypostcode, @teachercode, @place, @start, @end, @facultycode, @departmentcode, @tenure)
END
-----------------end DT_PARTY_POST_insert--------------------
GO

-----------------begin DT_PARTY_POST_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PARTY_POST_update')
    DROP PROCEDURE [gen_DT_PARTY_POST_update]
GO 
CREATE PROCEDURE [gen_DT_PARTY_POST_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Partypostcode varchar(10), @teachercode varchar(10), @place Nvarchar(1000), @start date, @end date, @facultycode Varchar(10), @departmentcode Varchar(10), @tenure Nvarchar(50), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_PARTY_POST] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Partypostcode] =@Partypostcode, [teachercode] =@teachercode, [place] =@place, [start] =@start, [end] =@end, [facultycode] =@facultycode, [departmentcode] =@departmentcode, [tenure] =@tenure WHERE [code] =@Key_code
END
-----------------end DT_PARTY_POST_update--------------------
GO

-----------------begin DT_PARTY_POST_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PARTY_POST_delete')
    DROP PROCEDURE [gen_DT_PARTY_POST_delete]
GO 
CREATE PROCEDURE [gen_DT_PARTY_POST_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_PARTY_POST] WHERE [code] =@code
END
-----------------end DT_PARTY_POST_delete--------------------
GO

-----------------begin ADMINISTRATIVE_POST_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINISTRATIVE_POST_insert')
    DROP PROCEDURE [gen_ADMINISTRATIVE_POST_insert]
GO 
CREATE PROCEDURE [gen_ADMINISTRATIVE_POST_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @remissionrate int)
AS 
BEGIN
	INSERT INTO [ADMINISTRATIVE_POST]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [remissionrate]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @remissionrate)
END
-----------------end ADMINISTRATIVE_POST_insert--------------------
GO

-----------------begin ADMINISTRATIVE_POST_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINISTRATIVE_POST_update')
    DROP PROCEDURE [gen_ADMINISTRATIVE_POST_update]
GO 
CREATE PROCEDURE [gen_ADMINISTRATIVE_POST_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @remissionrate int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [ADMINISTRATIVE_POST] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [remissionrate] =@remissionrate WHERE [code] =@Key_code
END
-----------------end ADMINISTRATIVE_POST_update--------------------
GO

-----------------begin ADMINISTRATIVE_POST_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ADMINISTRATIVE_POST_delete')
    DROP PROCEDURE [gen_ADMINISTRATIVE_POST_delete]
GO 
CREATE PROCEDURE [gen_ADMINISTRATIVE_POST_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [ADMINISTRATIVE_POST] WHERE [code] =@code
END
-----------------end ADMINISTRATIVE_POST_delete--------------------
GO

-----------------begin DT_ADMINISTRATIVE_POST_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ADMINISTRATIVE_POST_insert')
    DROP PROCEDURE [gen_DT_ADMINISTRATIVE_POST_insert]
GO 
CREATE PROCEDURE [gen_DT_ADMINISTRATIVE_POST_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Administrativepostcode varchar(10),   @teachercode varchar(10),   @place Nvarchar(1000),   @start date,   @end date,   @facultycode Varchar(10),   @departmentcode Varchar(10),   @tenure Nvarchar(50))
AS 
BEGIN
	INSERT INTO [DT_ADMINISTRATIVE_POST]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Administrativepostcode], [teachercode], [place], [start], [end], [facultycode], [departmentcode], [tenure]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Administrativepostcode, @teachercode, @place, @start, @end, @facultycode, @departmentcode, @tenure)
END
-----------------end DT_ADMINISTRATIVE_POST_insert--------------------
GO

-----------------begin DT_ADMINISTRATIVE_POST_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ADMINISTRATIVE_POST_update')
    DROP PROCEDURE [gen_DT_ADMINISTRATIVE_POST_update]
GO 
CREATE PROCEDURE [gen_DT_ADMINISTRATIVE_POST_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Administrativepostcode varchar(10), @teachercode varchar(10), @place Nvarchar(1000), @start date, @end date, @facultycode Varchar(10), @departmentcode Varchar(10), @tenure Nvarchar(50), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_ADMINISTRATIVE_POST] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Administrativepostcode] =@Administrativepostcode, [teachercode] =@teachercode, [place] =@place, [start] =@start, [end] =@end, [facultycode] =@facultycode, [departmentcode] =@departmentcode, [tenure] =@tenure WHERE [code] =@Key_code
END
-----------------end DT_ADMINISTRATIVE_POST_update--------------------
GO

-----------------begin DT_ADMINISTRATIVE_POST_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_ADMINISTRATIVE_POST_delete')
    DROP PROCEDURE [gen_DT_ADMINISTRATIVE_POST_delete]
GO 
CREATE PROCEDURE [gen_DT_ADMINISTRATIVE_POST_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_ADMINISTRATIVE_POST] WHERE [code] =@code
END
-----------------end DT_ADMINISTRATIVE_POST_delete--------------------
GO

-----------------begin RESEARCH_TITLE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TITLE_insert')
    DROP PROCEDURE [gen_RESEARCH_TITLE_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_TITLE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @place Nvarchar(1000),   @time Varchar(10))
AS 
BEGIN
	INSERT INTO [RESEARCH_TITLE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [place], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @place, @time)
END
-----------------end RESEARCH_TITLE_insert--------------------
GO

-----------------begin RESEARCH_TITLE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TITLE_update')
    DROP PROCEDURE [gen_RESEARCH_TITLE_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_TITLE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @place Nvarchar(1000), @time Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH_TITLE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [place] =@place, [time] =@time WHERE [code] =@Key_code
END
-----------------end RESEARCH_TITLE_update--------------------
GO

-----------------begin RESEARCH_TITLE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_TITLE_delete')
    DROP PROCEDURE [gen_RESEARCH_TITLE_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_TITLE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH_TITLE] WHERE [code] =@code
END
-----------------end RESEARCH_TITLE_delete--------------------
GO

-----------------begin DT_RESEARCH_TITLE_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_TITLE_insert')
    DROP PROCEDURE [gen_DT_RESEARCH_TITLE_insert]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_TITLE_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @Researchtitlecode varchar(10),   @teachercode varchar(10),   @place Nvarchar(1000),   @time date)
AS 
BEGIN
	INSERT INTO [DT_RESEARCH_TITLE]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [Researchtitlecode], [teachercode], [place], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @Researchtitlecode, @teachercode, @place, @time)
END
-----------------end DT_RESEARCH_TITLE_insert--------------------
GO

-----------------begin DT_RESEARCH_TITLE_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_TITLE_update')
    DROP PROCEDURE [gen_DT_RESEARCH_TITLE_update]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_TITLE_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Researchtitlecode varchar(10), @teachercode varchar(10), @place Nvarchar(1000), @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_RESEARCH_TITLE] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [Researchtitlecode] =@Researchtitlecode, [teachercode] =@teachercode, [place] =@place, [time] =@time WHERE [code] =@Key_code
END
-----------------end DT_RESEARCH_TITLE_update--------------------
GO

-----------------begin DT_RESEARCH_TITLE_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RESEARCH_TITLE_delete')
    DROP PROCEDURE [gen_DT_RESEARCH_TITLE_delete]
GO 
CREATE PROCEDURE [gen_DT_RESEARCH_TITLE_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_RESEARCH_TITLE] WHERE [code] =@code
END
-----------------end DT_RESEARCH_TITLE_delete--------------------
GO

-----------------begin AWARD_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_AWARD_insert')
    DROP PROCEDURE [gen_AWARD_insert]
GO 
CREATE PROCEDURE [gen_AWARD_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int)
AS 
BEGIN
	INSERT INTO [AWARD]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder)
END
-----------------end AWARD_insert--------------------
GO

-----------------begin AWARD_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_AWARD_update')
    DROP PROCEDURE [gen_AWARD_update]
GO 
CREATE PROCEDURE [gen_AWARD_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [AWARD] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end AWARD_update--------------------
GO

-----------------begin AWARD_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_AWARD_delete')
    DROP PROCEDURE [gen_AWARD_delete]
GO 
CREATE PROCEDURE [gen_AWARD_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [AWARD] WHERE [code] =@code
END
-----------------end AWARD_delete--------------------
GO

-----------------begin DT_AWARD_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_AWARD_insert')
    DROP PROCEDURE [gen_DT_AWARD_insert]
GO 
CREATE PROCEDURE [gen_DT_AWARD_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @awardcode varchar(10),   @teachercode varchar(10),   @time date)
AS 
BEGIN
	INSERT INTO [DT_AWARD]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [awardcode], [teachercode], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @awardcode, @teachercode, @time)
END
-----------------end DT_AWARD_insert--------------------
GO

-----------------begin DT_AWARD_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_AWARD_update')
    DROP PROCEDURE [gen_DT_AWARD_update]
GO 
CREATE PROCEDURE [gen_DT_AWARD_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @awardcode varchar(10), @teachercode varchar(10), @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_AWARD] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [awardcode] =@awardcode, [teachercode] =@teachercode, [time] =@time WHERE [code] =@Key_code
END
-----------------end DT_AWARD_update--------------------
GO

-----------------begin DT_AWARD_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_AWARD_delete')
    DROP PROCEDURE [gen_DT_AWARD_delete]
GO 
CREATE PROCEDURE [gen_DT_AWARD_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_AWARD] WHERE [code] =@code
END
-----------------end DT_AWARD_delete--------------------
GO

-----------------begin PUNISHMENT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PUNISHMENT_insert')
    DROP PROCEDURE [gen_PUNISHMENT_insert]
GO 
CREATE PROCEDURE [gen_PUNISHMENT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @time date)
AS 
BEGIN
	INSERT INTO [PUNISHMENT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @time)
END
-----------------end PUNISHMENT_insert--------------------
GO

-----------------begin PUNISHMENT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PUNISHMENT_update')
    DROP PROCEDURE [gen_PUNISHMENT_update]
GO 
CREATE PROCEDURE [gen_PUNISHMENT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [PUNISHMENT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [time] =@time WHERE [code] =@Key_code
END
-----------------end PUNISHMENT_update--------------------
GO

-----------------begin PUNISHMENT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_PUNISHMENT_delete')
    DROP PROCEDURE [gen_PUNISHMENT_delete]
GO 
CREATE PROCEDURE [gen_PUNISHMENT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [PUNISHMENT] WHERE [code] =@code
END
-----------------end PUNISHMENT_delete--------------------
GO

-----------------begin DT_PUNISHMENT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PUNISHMENT_insert')
    DROP PROCEDURE [gen_DT_PUNISHMENT_insert]
GO 
CREATE PROCEDURE [gen_DT_PUNISHMENT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @punishmentcode varchar(10),   @teachercode varchar(10),   @time date)
AS 
BEGIN
	INSERT INTO [DT_PUNISHMENT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [punishmentcode], [teachercode], [time]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @punishmentcode, @teachercode, @time)
END
-----------------end DT_PUNISHMENT_insert--------------------
GO

-----------------begin DT_PUNISHMENT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PUNISHMENT_update')
    DROP PROCEDURE [gen_DT_PUNISHMENT_update]
GO 
CREATE PROCEDURE [gen_DT_PUNISHMENT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @punishmentcode varchar(10), @teachercode varchar(10), @time date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_PUNISHMENT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [punishmentcode] =@punishmentcode, [teachercode] =@teachercode, [time] =@time WHERE [code] =@Key_code
END
-----------------end DT_PUNISHMENT_update--------------------
GO

-----------------begin DT_PUNISHMENT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_PUNISHMENT_delete')
    DROP PROCEDURE [gen_DT_PUNISHMENT_delete]
GO 
CREATE PROCEDURE [gen_DT_PUNISHMENT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_PUNISHMENT] WHERE [code] =@code
END
-----------------end DT_PUNISHMENT_delete--------------------
GO

-----------------begin EDUCATION_PROCESS_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDUCATION_PROCESS_insert')
    DROP PROCEDURE [gen_EDUCATION_PROCESS_insert]
GO 
CREATE PROCEDURE [gen_EDUCATION_PROCESS_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode Varchar(10),   @bsedubranch Nvarchar(100),   @Bsplace Nvarchar(1000),   @Bsspecialization Nvarchar(100),   @bscountry Nvarchar(1000),   @Bsyear date,   @msspecialzation Nvarchar(100),   @yearms date,   @msthesisname Nvarchar(100),   @phdspeciallization Nvarchar(100),   @yearphd date,   @phdthesisname Nvarchar(100))
AS 
BEGIN
	INSERT INTO [EDUCATION_PROCESS]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [bsedubranch], [Bsplace], [Bsspecialization], [bscountry], [Bsyear], [msspecialzation], [yearms], [msthesisname], [phdspeciallization], [yearphd], [phdthesisname]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @bsedubranch, @Bsplace, @Bsspecialization, @bscountry, @Bsyear, @msspecialzation, @yearms, @msthesisname, @phdspeciallization, @yearphd, @phdthesisname)
END
-----------------end EDUCATION_PROCESS_insert--------------------
GO

-----------------begin EDUCATION_PROCESS_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDUCATION_PROCESS_update')
    DROP PROCEDURE [gen_EDUCATION_PROCESS_update]
GO 
CREATE PROCEDURE [gen_EDUCATION_PROCESS_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode Varchar(10), @bsedubranch Nvarchar(100), @Bsplace Nvarchar(1000), @Bsspecialization Nvarchar(100), @bscountry Nvarchar(1000), @Bsyear date, @msspecialzation Nvarchar(100), @yearms date, @msthesisname Nvarchar(100), @phdspeciallization Nvarchar(100), @yearphd date, @phdthesisname Nvarchar(100), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [EDUCATION_PROCESS] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [bsedubranch] =@bsedubranch, [Bsplace] =@Bsplace, [Bsspecialization] =@Bsspecialization, [bscountry] =@bscountry, [Bsyear] =@Bsyear, [msspecialzation] =@msspecialzation, [yearms] =@yearms, [msthesisname] =@msthesisname, [phdspeciallization] =@phdspeciallization, [yearphd] =@yearphd, [phdthesisname] =@phdthesisname WHERE [code] =@Key_code
END
-----------------end EDUCATION_PROCESS_update--------------------
GO

-----------------begin EDUCATION_PROCESS_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EDUCATION_PROCESS_delete')
    DROP PROCEDURE [gen_EDUCATION_PROCESS_delete]
GO 
CREATE PROCEDURE [gen_EDUCATION_PROCESS_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [EDUCATION_PROCESS] WHERE [code] =@code
END
-----------------end EDUCATION_PROCESS_delete--------------------
GO

-----------------begin APPLIED_TECH_PRODUCT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_APPLIED_TECH_PRODUCT_insert')
    DROP PROCEDURE [gen_APPLIED_TECH_PRODUCT_insert]
GO 
CREATE PROCEDURE [gen_APPLIED_TECH_PRODUCT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode Varchar(10),   @place Nvarchar(1000),   @time date,   @Appliedscale Nvarchar(1000),   @eficiency Nvarchar(1000))
AS 
BEGIN
	INSERT INTO [APPLIED_TECH_PRODUCT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [place], [time], [Appliedscale], [eficiency]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @place, @time, @Appliedscale, @eficiency)
END
-----------------end APPLIED_TECH_PRODUCT_insert--------------------
GO

-----------------begin APPLIED_TECH_PRODUCT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_APPLIED_TECH_PRODUCT_update')
    DROP PROCEDURE [gen_APPLIED_TECH_PRODUCT_update]
GO 
CREATE PROCEDURE [gen_APPLIED_TECH_PRODUCT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode Varchar(10), @place Nvarchar(1000), @time date, @Appliedscale Nvarchar(1000), @eficiency Nvarchar(1000), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [APPLIED_TECH_PRODUCT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [place] =@place, [time] =@time, [Appliedscale] =@Appliedscale, [eficiency] =@eficiency WHERE [code] =@Key_code
END
-----------------end APPLIED_TECH_PRODUCT_update--------------------
GO

-----------------begin APPLIED_TECH_PRODUCT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_APPLIED_TECH_PRODUCT_delete')
    DROP PROCEDURE [gen_APPLIED_TECH_PRODUCT_delete]
GO 
CREATE PROCEDURE [gen_APPLIED_TECH_PRODUCT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [APPLIED_TECH_PRODUCT] WHERE [code] =@code
END
-----------------end APPLIED_TECH_PRODUCT_delete--------------------
GO

-----------------begin TECH_AWARD_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TECH_AWARD_insert')
    DROP PROCEDURE [gen_TECH_AWARD_insert]
GO 
CREATE PROCEDURE [gen_TECH_AWARD_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @Time date,   @Organization Nvarchar(200),   @form Nvarchar(200))
AS 
BEGIN
	INSERT INTO [TECH_AWARD]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [Time], [Organization], [form]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @Time, @Organization, @form)
END
-----------------end TECH_AWARD_insert--------------------
GO

-----------------begin TECH_AWARD_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TECH_AWARD_update')
    DROP PROCEDURE [gen_TECH_AWARD_update]
GO 
CREATE PROCEDURE [gen_TECH_AWARD_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @Time date, @Organization Nvarchar(200), @form Nvarchar(200), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [TECH_AWARD] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [Time] =@Time, [Organization] =@Organization, [form] =@form WHERE [code] =@Key_code
END
-----------------end TECH_AWARD_update--------------------
GO

-----------------begin TECH_AWARD_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TECH_AWARD_delete')
    DROP PROCEDURE [gen_TECH_AWARD_delete]
GO 
CREATE PROCEDURE [gen_TECH_AWARD_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [TECH_AWARD] WHERE [code] =@code
END
-----------------end TECH_AWARD_delete--------------------
GO

-----------------begin COUNCIL_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_HISTORY_insert')
    DROP PROCEDURE [gen_COUNCIL_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_COUNCIL_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @counciltypename Nvarchar(200),   @councilname Nvarchar(200),   @ocurrence int,   @amountoftime date,   @dtcode Varchar(10))
AS 
BEGIN
	INSERT INTO [COUNCIL_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [counciltypename], [councilname], [ocurrence], [amountoftime], [dtcode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @counciltypename, @councilname, @ocurrence, @amountoftime, @dtcode)
END
-----------------end COUNCIL_HISTORY_insert--------------------
GO

-----------------begin COUNCIL_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_HISTORY_update')
    DROP PROCEDURE [gen_COUNCIL_HISTORY_update]
GO 
CREATE PROCEDURE [gen_COUNCIL_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @counciltypename Nvarchar(200), @councilname Nvarchar(200), @ocurrence int, @amountoftime date, @dtcode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [COUNCIL_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [counciltypename] =@counciltypename, [councilname] =@councilname, [ocurrence] =@ocurrence, [amountoftime] =@amountoftime, [dtcode] =@dtcode WHERE [code] =@Key_code
END
-----------------end COUNCIL_HISTORY_update--------------------
GO

-----------------begin COUNCIL_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_COUNCIL_HISTORY_delete')
    DROP PROCEDURE [gen_COUNCIL_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_COUNCIL_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [COUNCIL_HISTORY] WHERE [code] =@code
END
-----------------end COUNCIL_HISTORY_delete--------------------
GO

-----------------begin BOOK_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_HISTORY_insert')
    DROP PROCEDURE [gen_BOOK_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_BOOK_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @booktypename Nvarchar(200),   @bookname Nvarchar(200),   @amountofauthor int,   @dtcode Varchar(10),   @amountoftime date)
AS 
BEGIN
	INSERT INTO [BOOK_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [booktypename], [bookname], [amountofauthor], [dtcode], [amountoftime]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @booktypename, @bookname, @amountofauthor, @dtcode, @amountoftime)
END
-----------------end BOOK_HISTORY_insert--------------------
GO

-----------------begin BOOK_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_HISTORY_update')
    DROP PROCEDURE [gen_BOOK_HISTORY_update]
GO 
CREATE PROCEDURE [gen_BOOK_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @booktypename Nvarchar(200), @bookname Nvarchar(200), @amountofauthor int, @dtcode Varchar(10), @amountoftime date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [BOOK_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [booktypename] =@booktypename, [bookname] =@bookname, [amountofauthor] =@amountofauthor, [dtcode] =@dtcode, [amountoftime] =@amountoftime WHERE [code] =@Key_code
END
-----------------end BOOK_HISTORY_update--------------------
GO

-----------------begin BOOK_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_BOOK_HISTORY_delete')
    DROP PROCEDURE [gen_BOOK_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_BOOK_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [BOOK_HISTORY] WHERE [code] =@code
END
-----------------end BOOK_HISTORY_delete--------------------
GO

-----------------begin RESEARCH_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_insert')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @researchtypename Nvarchar(200),   @researchrolename Nvarchar(200),   @amountofauthor int,   @amountoftime date,   @dtcode Varchar(10),   @workloadname Nvarchar(200),   @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @postname Nvarchar(200),   @place Nvarchar(200),   @tenure int,   @start date,   @dtcode Varchar(10),   @end date)
AS 
BEGIN
	INSERT INTO [RESEARCH_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [researchtypename], [researchrolename], [amountofauthor], [amountoftime], [dtcode], [workloadname], [code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [postname], [place], [tenure], [start], [dtcode], [end]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @researchtypename, @researchrolename, @amountofauthor, @amountoftime, @dtcode, @workloadname, @code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @postname, @place, @tenure, @start, @dtcode, @end)
END
-----------------end RESEARCH_HISTORY_insert--------------------
GO

-----------------begin RESEARCH_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_update')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @researchtypename Nvarchar(200), @researchrolename Nvarchar(200), @amountofauthor int, @amountoftime date, @dtcode Varchar(10), @workloadname Nvarchar(200), @code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @postname Nvarchar(200), @place Nvarchar(200), @tenure int, @start date, @dtcode Varchar(10), @end date, @Key_code Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [researchtypename] =@researchtypename, [researchrolename] =@researchrolename, [amountofauthor] =@amountofauthor, [amountoftime] =@amountoftime, [dtcode] =@dtcode, [workloadname] =@workloadname, [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [postname] =@postname, [place] =@place, [tenure] =@tenure, [start] =@start, [dtcode] =@dtcode, [end] =@end WHERE [code] =@Key_code AND [code] =@Key_code
END
-----------------end RESEARCH_HISTORY_update--------------------
GO

-----------------begin RESEARCH_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_delete')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_delete](  @code Varchar(10),   @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH_HISTORY] WHERE [code] =@code AND [code] =@code
END
-----------------end RESEARCH_HISTORY_delete--------------------
GO

-----------------begin RESEARCH_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_insert')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @researchtypename Nvarchar(200),   @researchrolename Nvarchar(200),   @amountofauthor int,   @amountoftime date,   @dtcode Varchar(10),   @workloadname Nvarchar(200),   @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @postname Nvarchar(200),   @place Nvarchar(200),   @tenure int,   @start date,   @dtcode Varchar(10),   @end date)
AS 
BEGIN
	INSERT INTO [RESEARCH_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [researchtypename], [researchrolename], [amountofauthor], [amountoftime], [dtcode], [workloadname], [code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [postname], [place], [tenure], [start], [dtcode], [end]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @researchtypename, @researchrolename, @amountofauthor, @amountoftime, @dtcode, @workloadname, @code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @postname, @place, @tenure, @start, @dtcode, @end)
END
-----------------end RESEARCH_HISTORY_insert--------------------
GO

-----------------begin RESEARCH_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_update')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_update]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @researchtypename Nvarchar(200), @researchrolename Nvarchar(200), @amountofauthor int, @amountoftime date, @dtcode Varchar(10), @workloadname Nvarchar(200), @code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @postname Nvarchar(200), @place Nvarchar(200), @tenure int, @start date, @dtcode Varchar(10), @end date, @Key_code Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RESEARCH_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [researchtypename] =@researchtypename, [researchrolename] =@researchrolename, [amountofauthor] =@amountofauthor, [amountoftime] =@amountoftime, [dtcode] =@dtcode, [workloadname] =@workloadname, [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [postname] =@postname, [place] =@place, [tenure] =@tenure, [start] =@start, [dtcode] =@dtcode, [end] =@end WHERE [code] =@Key_code AND [code] =@Key_code
END
-----------------end RESEARCH_HISTORY_update--------------------
GO

-----------------begin RESEARCH_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RESEARCH_HISTORY_delete')
    DROP PROCEDURE [gen_RESEARCH_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_RESEARCH_HISTORY_delete](  @code Varchar(10),   @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RESEARCH_HISTORY] WHERE [code] =@code AND [code] =@code
END
-----------------end RESEARCH_HISTORY_delete--------------------
GO

-----------------begin FACULTY_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_HISTORY_insert')
    DROP PROCEDURE [gen_FACULTY_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_FACULTY_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @facultycode varchar(10),   @facultyname Nvarchar(200),   @totalnumber int,   @profnumber int,   @asprofnumber int,   @doctorscinumber int,   @doctornumber int,   @masternumber int,   @bachelornumber int,   @otherpeoplenumber int,   @totaltitle int,   @seniorlecturenumber int,   @lecturenumber int,   @atstartnumber int)
AS 
BEGIN
	INSERT INTO [FACULTY_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [facultycode], [facultyname], [totalnumber], [profnumber], [asprofnumber], [doctorscinumber], [doctornumber], [masternumber], [bachelornumber], [otherpeoplenumber], [totaltitle], [seniorlecturenumber], [lecturenumber], [atstartnumber]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @facultycode, @facultyname, @totalnumber, @profnumber, @asprofnumber, @doctorscinumber, @doctornumber, @masternumber, @bachelornumber, @otherpeoplenumber, @totaltitle, @seniorlecturenumber, @lecturenumber, @atstartnumber)
END
-----------------end FACULTY_HISTORY_insert--------------------
GO

-----------------begin FACULTY_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_HISTORY_update')
    DROP PROCEDURE [gen_FACULTY_HISTORY_update]
GO 
CREATE PROCEDURE [gen_FACULTY_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @facultycode varchar(10), @facultyname Nvarchar(200), @totalnumber int, @profnumber int, @asprofnumber int, @doctorscinumber int, @doctornumber int, @masternumber int, @bachelornumber int, @otherpeoplenumber int, @totaltitle int, @seniorlecturenumber int, @lecturenumber int, @atstartnumber int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [FACULTY_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [facultycode] =@facultycode, [facultyname] =@facultyname, [totalnumber] =@totalnumber, [profnumber] =@profnumber, [asprofnumber] =@asprofnumber, [doctorscinumber] =@doctorscinumber, [doctornumber] =@doctornumber, [masternumber] =@masternumber, [bachelornumber] =@bachelornumber, [otherpeoplenumber] =@otherpeoplenumber, [totaltitle] =@totaltitle, [seniorlecturenumber] =@seniorlecturenumber, [lecturenumber] =@lecturenumber, [atstartnumber] =@atstartnumber WHERE [code] =@Key_code
END
-----------------end FACULTY_HISTORY_update--------------------
GO

-----------------begin FACULTY_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_FACULTY_HISTORY_delete')
    DROP PROCEDURE [gen_FACULTY_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_FACULTY_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [FACULTY_HISTORY] WHERE [code] =@code
END
-----------------end FACULTY_HISTORY_delete--------------------
GO

-----------------begin MENTORING_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_HISTORY_insert')
    DROP PROCEDURE [gen_MENTORING_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_MENTORING_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @mentoringtypename Nvarchar(200),   @studentname Nvarchar(200),   @classname Nvarchar(200),   @amountoftime Nvarchar(200),   @standardquantity int,   @edubranchname Nvarchar(200),   @dtcode Varchar(10),   @thesisname Nvarchar(200))
AS 
BEGIN
	INSERT INTO [MENTORING_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [mentoringtypename], [studentname], [classname], [amountoftime], [standardquantity], [edubranchname], [dtcode], [thesisname]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @mentoringtypename, @studentname, @classname, @amountoftime, @standardquantity, @edubranchname, @dtcode, @thesisname)
END
-----------------end MENTORING_HISTORY_insert--------------------
GO

-----------------begin MENTORING_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_HISTORY_update')
    DROP PROCEDURE [gen_MENTORING_HISTORY_update]
GO 
CREATE PROCEDURE [gen_MENTORING_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @mentoringtypename Nvarchar(200), @studentname Nvarchar(200), @classname Nvarchar(200), @amountoftime Nvarchar(200), @standardquantity int, @edubranchname Nvarchar(200), @dtcode Varchar(10), @thesisname Nvarchar(200), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [MENTORING_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [mentoringtypename] =@mentoringtypename, [studentname] =@studentname, [classname] =@classname, [amountoftime] =@amountoftime, [standardquantity] =@standardquantity, [edubranchname] =@edubranchname, [dtcode] =@dtcode, [thesisname] =@thesisname WHERE [code] =@Key_code
END
-----------------end MENTORING_HISTORY_update--------------------
GO

-----------------begin MENTORING_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_MENTORING_HISTORY_delete')
    DROP PROCEDURE [gen_MENTORING_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_MENTORING_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [MENTORING_HISTORY] WHERE [code] =@code
END
-----------------end MENTORING_HISTORY_delete--------------------
GO

-----------------begin EXAMIN_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_HISTORY_insert')
    DROP PROCEDURE [gen_EXAMIN_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_EXAMIN_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @examintypename Nvarchar(200),   @subjectname Nvarchar(200),   @classname Nvarchar(200),   @amountoftime date,   @subjectclassname Nvarchar(200),   @numberofstudent int,   @start date,   @dtcode Varchar(10),   @end date)
AS 
BEGIN
	INSERT INTO [EXAMIN_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [examintypename], [subjectname], [classname], [amountoftime], [subjectclassname], [numberofstudent], [start], [dtcode], [end]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @examintypename, @subjectname, @classname, @amountoftime, @subjectclassname, @numberofstudent, @start, @dtcode, @end)
END
-----------------end EXAMIN_HISTORY_insert--------------------
GO

-----------------begin EXAMIN_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_HISTORY_update')
    DROP PROCEDURE [gen_EXAMIN_HISTORY_update]
GO 
CREATE PROCEDURE [gen_EXAMIN_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @examintypename Nvarchar(200), @subjectname Nvarchar(200), @classname Nvarchar(200), @amountoftime date, @subjectclassname Nvarchar(200), @numberofstudent int, @start date, @dtcode Varchar(10), @end date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [EXAMIN_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [examintypename] =@examintypename, [subjectname] =@subjectname, [classname] =@classname, [amountoftime] =@amountoftime, [subjectclassname] =@subjectclassname, [numberofstudent] =@numberofstudent, [start] =@start, [dtcode] =@dtcode, [end] =@end WHERE [code] =@Key_code
END
-----------------end EXAMIN_HISTORY_update--------------------
GO

-----------------begin EXAMIN_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_EXAMIN_HISTORY_delete')
    DROP PROCEDURE [gen_EXAMIN_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_EXAMIN_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [EXAMIN_HISTORY] WHERE [code] =@code
END
-----------------end EXAMIN_HISTORY_delete--------------------
GO

-----------------begin TEACHING_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_HISTORY_insert')
    DROP PROCEDURE [gen_TEACHING_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_TEACHING_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @edulevelname Nvarchar(200),   @subjectname Nvarchar(200),   @classname Nvarchar(200),   @amountoftime date,   @subjectclassname int,   @numberofstudent int,   @start date,   @end date,   @teachingtypename Nvarchar(200),   @creditnum int,   @dtcode Varchar(10),   @lessionnum int)
AS 
BEGIN
	INSERT INTO [TEACHING_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [edulevelname], [subjectname], [classname], [amountoftime], [subjectclassname], [numberofstudent], [start], [end], [teachingtypename], [creditnum], [dtcode], [lessionnum]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @edulevelname, @subjectname, @classname, @amountoftime, @subjectclassname, @numberofstudent, @start, @end, @teachingtypename, @creditnum, @dtcode, @lessionnum)
END
-----------------end TEACHING_HISTORY_insert--------------------
GO

-----------------begin TEACHING_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_HISTORY_update')
    DROP PROCEDURE [gen_TEACHING_HISTORY_update]
GO 
CREATE PROCEDURE [gen_TEACHING_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @edulevelname Nvarchar(200), @subjectname Nvarchar(200), @classname Nvarchar(200), @amountoftime date, @subjectclassname int, @numberofstudent int, @start date, @end date, @teachingtypename Nvarchar(200), @creditnum int, @dtcode Varchar(10), @lessionnum int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [TEACHING_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [edulevelname] =@edulevelname, [subjectname] =@subjectname, [classname] =@classname, [amountoftime] =@amountoftime, [subjectclassname] =@subjectclassname, [numberofstudent] =@numberofstudent, [start] =@start, [end] =@end, [teachingtypename] =@teachingtypename, [creditnum] =@creditnum, [dtcode] =@dtcode, [lessionnum] =@lessionnum WHERE [code] =@Key_code
END
-----------------end TEACHING_HISTORY_update--------------------
GO

-----------------begin TEACHING_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHING_HISTORY_delete')
    DROP PROCEDURE [gen_TEACHING_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_TEACHING_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [TEACHING_HISTORY] WHERE [code] =@code
END
-----------------end TEACHING_HISTORY_delete--------------------
GO

-----------------begin TEACHER_HISTORY_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_HISTORY_insert')
    DROP PROCEDURE [gen_TEACHER_HISTORY_insert]
GO 
CREATE PROCEDURE [gen_TEACHER_HISTORY_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @departmentname Nvarchar(200),   @facultyname Nvarchar(200),   @start date,   @dtcode Varchar(10),   @end date)
AS 
BEGIN
	INSERT INTO [TEACHER_HISTORY]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [departmentname], [facultyname], [start], [dtcode], [end]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @departmentname, @facultyname, @start, @dtcode, @end)
END
-----------------end TEACHER_HISTORY_insert--------------------
GO

-----------------begin TEACHER_HISTORY_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_HISTORY_update')
    DROP PROCEDURE [gen_TEACHER_HISTORY_update]
GO 
CREATE PROCEDURE [gen_TEACHER_HISTORY_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @departmentname Nvarchar(200), @facultyname Nvarchar(200), @start date, @dtcode Varchar(10), @end date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [TEACHER_HISTORY] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [departmentname] =@departmentname, [facultyname] =@facultyname, [start] =@start, [dtcode] =@dtcode, [end] =@end WHERE [code] =@Key_code
END
-----------------end TEACHER_HISTORY_update--------------------
GO

-----------------begin TEACHER_HISTORY_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_TEACHER_HISTORY_delete')
    DROP PROCEDURE [gen_TEACHER_HISTORY_delete]
GO 
CREATE PROCEDURE [gen_TEACHER_HISTORY_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [TEACHER_HISTORY] WHERE [code] =@code
END
-----------------end TEACHER_HISTORY_delete--------------------
GO

-----------------begin LOAD_STATISTIC_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_STATISTIC_insert')
    DROP PROCEDURE [gen_LOAD_STATISTIC_insert]
GO 
CREATE PROCEDURE [gen_LOAD_STATISTIC_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @departmentname Nvarchar(200),   @facultyname Nvarchar(200),   @start date,   @end date,   @realteachingload int,   @requiredteachingload int,   @teachingratio Int,   @realresearchload Int,   @requiredresearchload Int,   @researchratio Int,   @totalrealload Int,   @totalrequiredload int)
AS 
BEGIN
	INSERT INTO [LOAD_STATISTIC]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [departmentname], [facultyname], [start], [end], [realteachingload], [requiredteachingload], [teachingratio], [realresearchload], [requiredresearchload], [researchratio], [totalrealload], [totalrequiredload]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @departmentname, @facultyname, @start, @end, @realteachingload, @requiredteachingload, @teachingratio, @realresearchload, @requiredresearchload, @researchratio, @totalrealload, @totalrequiredload)
END
-----------------end LOAD_STATISTIC_insert--------------------
GO

-----------------begin LOAD_STATISTIC_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_STATISTIC_update')
    DROP PROCEDURE [gen_LOAD_STATISTIC_update]
GO 
CREATE PROCEDURE [gen_LOAD_STATISTIC_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @departmentname Nvarchar(200), @facultyname Nvarchar(200), @start date, @end date, @realteachingload int, @requiredteachingload int, @teachingratio Int, @realresearchload Int, @requiredresearchload Int, @researchratio Int, @totalrealload Int, @totalrequiredload int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [LOAD_STATISTIC] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [departmentname] =@departmentname, [facultyname] =@facultyname, [start] =@start, [end] =@end, [realteachingload] =@realteachingload, [requiredteachingload] =@requiredteachingload, [teachingratio] =@teachingratio, [realresearchload] =@realresearchload, [requiredresearchload] =@requiredresearchload, [researchratio] =@researchratio, [totalrealload] =@totalrealload, [totalrequiredload] =@totalrequiredload WHERE [code] =@Key_code
END
-----------------end LOAD_STATISTIC_update--------------------
GO

-----------------begin LOAD_STATISTIC_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_STATISTIC_delete')
    DROP PROCEDURE [gen_LOAD_STATISTIC_delete]
GO 
CREATE PROCEDURE [gen_LOAD_STATISTIC_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [LOAD_STATISTIC] WHERE [code] =@code
END
-----------------end LOAD_STATISTIC_delete--------------------
GO

-----------------begin LOAD_BY_SEMESTER_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_BY_SEMESTER_insert')
    DROP PROCEDURE [gen_LOAD_BY_SEMESTER_insert]
GO 
CREATE PROCEDURE [gen_LOAD_BY_SEMESTER_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @teachercode varchar(10),   @teachername Nvarchar(200),   @researchquota int,   @teachingquota int,   @semester Int,   @start date,   @end date)
AS 
BEGIN
	INSERT INTO [LOAD_BY_SEMESTER]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [teachercode], [teachername], [researchquota], [teachingquota], [semester], [start], [end]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @teachercode, @teachername, @researchquota, @teachingquota, @semester, @start, @end)
END
-----------------end LOAD_BY_SEMESTER_insert--------------------
GO

-----------------begin LOAD_BY_SEMESTER_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_BY_SEMESTER_update')
    DROP PROCEDURE [gen_LOAD_BY_SEMESTER_update]
GO 
CREATE PROCEDURE [gen_LOAD_BY_SEMESTER_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @teachercode varchar(10), @teachername Nvarchar(200), @researchquota int, @teachingquota int, @semester Int, @start date, @end date, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [LOAD_BY_SEMESTER] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [teachercode] =@teachercode, [teachername] =@teachername, [researchquota] =@researchquota, [teachingquota] =@teachingquota, [semester] =@semester, [start] =@start, [end] =@end WHERE [code] =@Key_code
END
-----------------end LOAD_BY_SEMESTER_update--------------------
GO

-----------------begin LOAD_BY_SEMESTER_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_LOAD_BY_SEMESTER_delete')
    DROP PROCEDURE [gen_LOAD_BY_SEMESTER_delete]
GO 
CREATE PROCEDURE [gen_LOAD_BY_SEMESTER_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [LOAD_BY_SEMESTER] WHERE [code] =@code
END
-----------------end LOAD_BY_SEMESTER_delete--------------------
GO

-----------------begin ACCOUNT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACCOUNT_insert')
    DROP PROCEDURE [gen_ACCOUNT_insert]
GO 
CREATE PROCEDURE [gen_ACCOUNT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @rightgroupcode varchar(10),   @username Varchar(20),   @password NVarchar(200))
AS 
BEGIN
	INSERT INTO [ACCOUNT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightgroupcode], [username], [password]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @rightgroupcode, @username, @password)
END
-----------------end ACCOUNT_insert--------------------
GO

-----------------begin ACCOUNT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACCOUNT_update')
    DROP PROCEDURE [gen_ACCOUNT_update]
GO 
CREATE PROCEDURE [gen_ACCOUNT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @rightgroupcode varchar(10), @username Varchar(20), @password NVarchar(200), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [ACCOUNT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [rightgroupcode] =@rightgroupcode, [username] =@username, [password] =@password WHERE [code] =@Key_code
END
-----------------end ACCOUNT_update--------------------
GO

-----------------begin ACCOUNT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_ACCOUNT_delete')
    DROP PROCEDURE [gen_ACCOUNT_delete]
GO 
CREATE PROCEDURE [gen_ACCOUNT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [ACCOUNT] WHERE [code] =@code
END
-----------------end ACCOUNT_delete--------------------
GO

-----------------begin RIGHT_GROUP_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_GROUP_insert')
    DROP PROCEDURE [gen_RIGHT_GROUP_insert]
GO 
CREATE PROCEDURE [gen_RIGHT_GROUP_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int)
AS 
BEGIN
	INSERT INTO [RIGHT_GROUP]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder)
END
-----------------end RIGHT_GROUP_insert--------------------
GO

-----------------begin RIGHT_GROUP_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_GROUP_update')
    DROP PROCEDURE [gen_RIGHT_GROUP_update]
GO 
CREATE PROCEDURE [gen_RIGHT_GROUP_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RIGHT_GROUP] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder WHERE [code] =@Key_code
END
-----------------end RIGHT_GROUP_update--------------------
GO

-----------------begin RIGHT_GROUP_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_GROUP_delete')
    DROP PROCEDURE [gen_RIGHT_GROUP_delete]
GO 
CREATE PROCEDURE [gen_RIGHT_GROUP_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RIGHT_GROUP] WHERE [code] =@code
END
-----------------end RIGHT_GROUP_delete--------------------
GO

-----------------begin RIGHT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_insert')
    DROP PROCEDURE [gen_RIGHT_insert]
GO 
CREATE PROCEDURE [gen_RIGHT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @linkpath Varchar(20),   @isCreate smallint,   @isUpdate smallint,   @isDelete smallint,   @description Nvarchar(300))
AS 
BEGIN
	INSERT INTO [RIGHT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [linkpath], [isCreate], [isUpdate], [isDelete], [description]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @linkpath, @isCreate, @isUpdate, @isDelete, @description)
END
-----------------end RIGHT_insert--------------------
GO

-----------------begin RIGHT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_update')
    DROP PROCEDURE [gen_RIGHT_update]
GO 
CREATE PROCEDURE [gen_RIGHT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @linkpath Varchar(20), @isCreate smallint, @isUpdate smallint, @isDelete smallint, @description Nvarchar(300), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [RIGHT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [linkpath] =@linkpath, [isCreate] =@isCreate, [isUpdate] =@isUpdate, [isDelete] =@isDelete, [description] =@description WHERE [code] =@Key_code
END
-----------------end RIGHT_update--------------------
GO

-----------------begin RIGHT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_RIGHT_delete')
    DROP PROCEDURE [gen_RIGHT_delete]
GO 
CREATE PROCEDURE [gen_RIGHT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [RIGHT] WHERE [code] =@code
END
-----------------end RIGHT_delete--------------------
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

-----------------begin DT_RIGHT_insert--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RIGHT_insert')
    DROP PROCEDURE [gen_DT_RIGHT_insert]
GO 
CREATE PROCEDURE [gen_DT_RIGHT_insert](  @code Varchar(10),   @codeview Varchar(20),   @name Nvarchar(200),   @note Nvarchar(200),   @lastedituser Varchar(20),   @lastedittime Datetime,   @lock smallint,   @lockdate datetime,   @theorder int,   @rightcode Varchar(10),   @rightgroupcode Varchar(10))
AS 
BEGIN
	INSERT INTO [DT_RIGHT]([code], [codeview], [name], [note], [lastedituser], [lastedittime], [lock], [lockdate], [theorder], [rightcode], [rightgroupcode]) VALUES(@code, @codeview, @name, @note, @lastedituser, @lastedittime, @lock, @lockdate, @theorder, @rightcode, @rightgroupcode)
END
-----------------end DT_RIGHT_insert--------------------
GO

-----------------begin DT_RIGHT_update--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RIGHT_update')
    DROP PROCEDURE [gen_DT_RIGHT_update]
GO 
CREATE PROCEDURE [gen_DT_RIGHT_update](@code Varchar(10), @codeview Varchar(20), @name Nvarchar(200), @note Nvarchar(200), @lastedituser Varchar(20), @lastedittime Datetime, @lock smallint, @lockdate datetime, @theorder int, @rightcode Varchar(10), @rightgroupcode Varchar(10), @Key_code Varchar(10))
AS 
BEGIN
	UPDATE [DT_RIGHT] SET [code] =@code, [codeview] =@codeview, [name] =@name, [note] =@note, [lastedituser] =@lastedituser, [lastedittime] =@lastedittime, [lock] =@lock, [lockdate] =@lockdate, [theorder] =@theorder, [rightcode] =@rightcode, [rightgroupcode] =@rightgroupcode WHERE [code] =@Key_code
END
-----------------end DT_RIGHT_update--------------------
GO

-----------------begin DT_RIGHT_delete--------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'gen_DT_RIGHT_delete')
    DROP PROCEDURE [gen_DT_RIGHT_delete]
GO 
CREATE PROCEDURE [gen_DT_RIGHT_delete](  @code Varchar(10))
AS 
BEGIN
	DELETE FROM [DT_RIGHT] WHERE [code] =@code
END
-----------------end DT_RIGHT_delete--------------------
GO

