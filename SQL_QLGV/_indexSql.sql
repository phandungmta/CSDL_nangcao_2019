--------- Index cho TEACHER
--------- Xóa index cho TEACHER
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='TEACHER' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho TEACHER
GO
--------- Bắt đầu tạo index cho TEACHER
CREATE NONCLUSTERED INDEX [IX_TEACHER_0] ON [dbo].[TEACHER]
(
	[departmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho TEACHER
---------------Kết thúc index cho TEACHER
GO 
--------- Index cho TEACHING_TYPE
--------- Xóa index cho TEACHING_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='TEACHING_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho TEACHING_TYPE
GO
--------- Bắt đầu tạo index cho TEACHING_TYPE
CREATE NONCLUSTERED INDEX [IX_TEACHING_TYPE_0] ON [dbo].[TEACHING_TYPE]
(
	[edulevelcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho TEACHING_TYPE
---------------Kết thúc index cho TEACHING_TYPE
GO 
--------- Index cho DT_TEACHING
--------- Xóa index cho DT_TEACHING
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_TEACHING' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_TEACHING
GO
--------- Bắt đầu tạo index cho DT_TEACHING
CREATE NONCLUSTERED INDEX [IX_DT_TEACHING_0] ON [dbo].[DT_TEACHING]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_TEACHING_1] ON [dbo].[DT_TEACHING]
(
	[subjectcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_TEACHING_2] ON [dbo].[DT_TEACHING]
(
	[teachingtypecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_TEACHING
---------------Kết thúc index cho DT_TEACHING
GO 
--------- Index cho DEPARTMENT
--------- Xóa index cho DEPARTMENT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DEPARTMENT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DEPARTMENT
GO
--------- Bắt đầu tạo index cho DEPARTMENT

--------- Kết thúc tạo index cho DEPARTMENT
---------------Kết thúc index cho DEPARTMENT
GO 
--------- Index cho DT_DEPARTMENT
--------- Xóa index cho DT_DEPARTMENT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_DEPARTMENT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_DEPARTMENT
GO
--------- Bắt đầu tạo index cho DT_DEPARTMENT
CREATE NONCLUSTERED INDEX [IX_DT_DEPARTMENT_0] ON [dbo].[DT_DEPARTMENT]
(
	[departmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_DEPARTMENT_1] ON [dbo].[DT_DEPARTMENT]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_DEPARTMENT
---------------Kết thúc index cho DT_DEPARTMENT
GO 
--------- Index cho FACULTY
--------- Xóa index cho FACULTY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='FACULTY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho FACULTY
GO
--------- Bắt đầu tạo index cho FACULTY

--------- Kết thúc tạo index cho FACULTY
---------------Kết thúc index cho FACULTY
GO 
--------- Index cho SUBJECT
--------- Xóa index cho SUBJECT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='SUBJECT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho SUBJECT
GO
--------- Bắt đầu tạo index cho SUBJECT

--------- Kết thúc tạo index cho SUBJECT
---------------Kết thúc index cho SUBJECT
GO 
--------- Index cho SUBJECT_CLASS
--------- Xóa index cho SUBJECT_CLASS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='SUBJECT_CLASS' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho SUBJECT_CLASS
GO
--------- Bắt đầu tạo index cho SUBJECT_CLASS
CREATE NONCLUSTERED INDEX [IX_SUBJECT_CLASS_0] ON [dbo].[SUBJECT_CLASS]
(
	[subjectcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_SUBJECT_CLASS_1] ON [dbo].[SUBJECT_CLASS]
(
	[edubranchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho SUBJECT_CLASS
---------------Kết thúc index cho SUBJECT_CLASS
GO 
--------- Index cho DT_SUBJECT_CLASS
--------- Xóa index cho DT_SUBJECT_CLASS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_SUBJECT_CLASS' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_SUBJECT_CLASS
GO
--------- Bắt đầu tạo index cho DT_SUBJECT_CLASS
CREATE NONCLUSTERED INDEX [IX_DT_SUBJECT_CLASS_0] ON [dbo].[DT_SUBJECT_CLASS]
(
	[studentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_SUBJECT_CLASS_1] ON [dbo].[DT_SUBJECT_CLASS]
(
	[subjectclasscode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_SUBJECT_CLASS
---------------Kết thúc index cho DT_SUBJECT_CLASS
GO 
--------- Index cho STUDENT
--------- Xóa index cho STUDENT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='STUDENT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho STUDENT
GO
--------- Bắt đầu tạo index cho STUDENT
CREATE NONCLUSTERED INDEX [IX_STUDENT_0] ON [dbo].[STUDENT]
(
	[classcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho STUDENT
---------------Kết thúc index cho STUDENT
GO 
--------- Index cho CLASS
--------- Xóa index cho CLASS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='CLASS' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho CLASS
GO
--------- Bắt đầu tạo index cho CLASS
CREATE NONCLUSTERED INDEX [IX_CLASS_0] ON [dbo].[CLASS]
(
	[edulevelcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho CLASS
---------------Kết thúc index cho CLASS
GO 
--------- Index cho MENTORING_TYPE
--------- Xóa index cho MENTORING_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='MENTORING_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho MENTORING_TYPE
GO
--------- Bắt đầu tạo index cho MENTORING_TYPE
CREATE NONCLUSTERED INDEX [IX_MENTORING_TYPE_0] ON [dbo].[MENTORING_TYPE]
(
	[edulevelcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho MENTORING_TYPE
---------------Kết thúc index cho MENTORING_TYPE
GO 
--------- Index cho THESIS
--------- Xóa index cho THESIS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='THESIS' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho THESIS
GO
--------- Bắt đầu tạo index cho THESIS
CREATE NONCLUSTERED INDEX [IX_THESIS_0] ON [dbo].[THESIS]
(
	[mentoritypengcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho THESIS
---------------Kết thúc index cho THESIS
GO 
--------- Index cho DT_MENTORING
--------- Xóa index cho DT_MENTORING
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_MENTORING' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_MENTORING
GO
--------- Bắt đầu tạo index cho DT_MENTORING
CREATE NONCLUSTERED INDEX [IX_DT_MENTORING_0] ON [dbo].[DT_MENTORING]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_MENTORING_1] ON [dbo].[DT_MENTORING]
(
	[studentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_MENTORING_2] ON [dbo].[DT_MENTORING]
(
	[thesiscode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_MENTORING
---------------Kết thúc index cho DT_MENTORING
GO 
--------- Index cho MENTORING_TYPE
--------- Xóa index cho MENTORING_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='MENTORING_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho MENTORING_TYPE
GO
--------- Bắt đầu tạo index cho MENTORING_TYPE
CREATE NONCLUSTERED INDEX [IX_MENTORING_TYPE_0] ON [dbo].[MENTORING_TYPE]
(
	[edulevelcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho MENTORING_TYPE
---------------Kết thúc index cho MENTORING_TYPE
GO 
--------- Index cho DT_EXAMIN
--------- Xóa index cho DT_EXAMIN
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_EXAMIN' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_EXAMIN
GO
--------- Bắt đầu tạo index cho DT_EXAMIN
CREATE NONCLUSTERED INDEX [IX_DT_EXAMIN_0] ON [dbo].[DT_EXAMIN]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_EXAMIN_1] ON [dbo].[DT_EXAMIN]
(
	[subjectclasscode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_EXAMIN_2] ON [dbo].[DT_EXAMIN]
(
	[examintypecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_EXAMIN
---------------Kết thúc index cho DT_EXAMIN
GO 
--------- Index cho COUNCIL
--------- Xóa index cho COUNCIL
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='COUNCIL' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho COUNCIL
GO
--------- Bắt đầu tạo index cho COUNCIL
CREATE NONCLUSTERED INDEX [IX_COUNCIL_0] ON [dbo].[COUNCIL]
(
	[counciltypecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho COUNCIL
---------------Kết thúc index cho COUNCIL
GO 
--------- Index cho COUNCIL_TYPE
--------- Xóa index cho COUNCIL_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='COUNCIL_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho COUNCIL_TYPE
GO
--------- Bắt đầu tạo index cho COUNCIL_TYPE

--------- Kết thúc tạo index cho COUNCIL_TYPE
---------------Kết thúc index cho COUNCIL_TYPE
GO 
--------- Index cho DT_Council
--------- Xóa index cho DT_Council
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_Council' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_Council
GO
--------- Bắt đầu tạo index cho DT_Council
CREATE NONCLUSTERED INDEX [IX_DT_Council_0] ON [dbo].[DT_Council]
(
	[councilcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_Council_1] ON [dbo].[DT_Council]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_Council_2] ON [dbo].[DT_Council]
(
	[councilrolecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_Council
---------------Kết thúc index cho DT_Council
GO 
--------- Index cho COUNCIL_ROLE
--------- Xóa index cho COUNCIL_ROLE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='COUNCIL_ROLE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho COUNCIL_ROLE
GO
--------- Bắt đầu tạo index cho COUNCIL_ROLE

--------- Kết thúc tạo index cho COUNCIL_ROLE
---------------Kết thúc index cho COUNCIL_ROLE
GO 
--------- Index cho BOOK_TYPE
--------- Xóa index cho BOOK_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='BOOK_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho BOOK_TYPE
GO
--------- Bắt đầu tạo index cho BOOK_TYPE

--------- Kết thúc tạo index cho BOOK_TYPE
---------------Kết thúc index cho BOOK_TYPE
GO 
--------- Index cho BOOK
--------- Xóa index cho BOOK
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='BOOK' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho BOOK
GO
--------- Bắt đầu tạo index cho BOOK

--------- Kết thúc tạo index cho BOOK
---------------Kết thúc index cho BOOK
GO 
--------- Index cho DT_BOOK
--------- Xóa index cho DT_BOOK
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_BOOK' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_BOOK
GO
--------- Bắt đầu tạo index cho DT_BOOK
CREATE NONCLUSTERED INDEX [IX_DT_BOOK_0] ON [dbo].[DT_BOOK]
(
	[bookcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_BOOK_1] ON [dbo].[DT_BOOK]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_BOOK_2] ON [dbo].[DT_BOOK]
(
	[writingrolecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_BOOK
---------------Kết thúc index cho DT_BOOK
GO 
--------- Index cho WRITING_ROLE
--------- Xóa index cho WRITING_ROLE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='WRITING_ROLE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho WRITING_ROLE
GO
--------- Bắt đầu tạo index cho WRITING_ROLE

--------- Kết thúc tạo index cho WRITING_ROLE
---------------Kết thúc index cho WRITING_ROLE
GO 
--------- Index cho RESEARCH_ROLE
--------- Xóa index cho RESEARCH_ROLE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH_ROLE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH_ROLE
GO
--------- Bắt đầu tạo index cho RESEARCH_ROLE
CREATE NONCLUSTERED INDEX [IX_RESEARCH_ROLE_0] ON [dbo].[RESEARCH_ROLE]
(
	[workloadtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho RESEARCH_ROLE
---------------Kết thúc index cho RESEARCH_ROLE
GO 
--------- Index cho WORKLOAD_TYPE
--------- Xóa index cho WORKLOAD_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='WORKLOAD_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho WORKLOAD_TYPE
GO
--------- Bắt đầu tạo index cho WORKLOAD_TYPE

--------- Kết thúc tạo index cho WORKLOAD_TYPE
---------------Kết thúc index cho WORKLOAD_TYPE
GO 
--------- Index cho RESEARCH_TYPE
--------- Xóa index cho RESEARCH_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH_TYPE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH_TYPE
GO
--------- Bắt đầu tạo index cho RESEARCH_TYPE
CREATE NONCLUSTERED INDEX [IX_RESEARCH_TYPE_0] ON [dbo].[RESEARCH_TYPE]
(
	[workloadtypecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho RESEARCH_TYPE
---------------Kết thúc index cho RESEARCH_TYPE
GO 
--------- Index cho RESEARCH
--------- Xóa index cho RESEARCH
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH
GO
--------- Bắt đầu tạo index cho RESEARCH
CREATE NONCLUSTERED INDEX [IX_RESEARCH_0] ON [dbo].[RESEARCH]
(
	[researchtypecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho RESEARCH
---------------Kết thúc index cho RESEARCH
GO 
--------- Index cho DT_RESEARCH
--------- Xóa index cho DT_RESEARCH
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_RESEARCH' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_RESEARCH
GO
--------- Bắt đầu tạo index cho DT_RESEARCH
CREATE NONCLUSTERED INDEX [IX_DT_RESEARCH_0] ON [dbo].[DT_RESEARCH]
(
	[researchcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_RESEARCH_1] ON [dbo].[DT_RESEARCH]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_RESEARCH_2] ON [dbo].[DT_RESEARCH]
(
	[researchrolecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_RESEARCH
---------------Kết thúc index cho DT_RESEARCH
GO 
--------- Index cho EDULEVEL
--------- Xóa index cho EDULEVEL
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='EDULEVEL' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho EDULEVEL
GO
--------- Bắt đầu tạo index cho EDULEVEL

--------- Kết thúc tạo index cho EDULEVEL
---------------Kết thúc index cho EDULEVEL
GO 
--------- Index cho EDU_BRANCH
--------- Xóa index cho EDU_BRANCH
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='EDU_BRANCH' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho EDU_BRANCH
GO
--------- Bắt đầu tạo index cho EDU_BRANCH
CREATE NONCLUSTERED INDEX [IX_EDU_BRANCH_0] ON [dbo].[EDU_BRANCH]
(
	[edulevelcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho EDU_BRANCH
---------------Kết thúc index cho EDU_BRANCH
GO 
--------- Index cho ACADEMIC_RANK
--------- Xóa index cho ACADEMIC_RANK
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='ACADEMIC_RANK' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho ACADEMIC_RANK
GO
--------- Bắt đầu tạo index cho ACADEMIC_RANK
CREATE NONCLUSTERED INDEX [IX_ACADEMIC_RANK_0] ON [dbo].[ACADEMIC_RANK]
(
	[researchtitlecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_ACADEMIC_RANK_1] ON [dbo].[ACADEMIC_RANK]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho ACADEMIC_RANK
---------------Kết thúc index cho ACADEMIC_RANK
GO 
--------- Index cho DT_ACADEMIC_RANK
--------- Xóa index cho DT_ACADEMIC_RANK
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_ACADEMIC_RANK' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_ACADEMIC_RANK
GO
--------- Bắt đầu tạo index cho DT_ACADEMIC_RANK
CREATE NONCLUSTERED INDEX [IX_DT_ACADEMIC_RANK_0] ON [dbo].[DT_ACADEMIC_RANK]
(
	[academicrankcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_ACADEMIC_RANK_1] ON [dbo].[DT_ACADEMIC_RANK]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_ACADEMIC_RANK
---------------Kết thúc index cho DT_ACADEMIC_RANK
GO 
--------- Index cho DEGREE
--------- Xóa index cho DEGREE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DEGREE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DEGREE
GO
--------- Bắt đầu tạo index cho DEGREE

--------- Kết thúc tạo index cho DEGREE
---------------Kết thúc index cho DEGREE
GO 
--------- Index cho DT_DEGREE
--------- Xóa index cho DT_DEGREE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_DEGREE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_DEGREE
GO
--------- Bắt đầu tạo index cho DT_DEGREE
CREATE NONCLUSTERED INDEX [IX_DT_DEGREE_0] ON [dbo].[DT_DEGREE]
(
	[degreecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_DEGREE_1] ON [dbo].[DT_DEGREE]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_DEGREE
---------------Kết thúc index cho DT_DEGREE
GO 
--------- Index cho PARTY_POST
--------- Xóa index cho PARTY_POST
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='PARTY_POST' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho PARTY_POST
GO
--------- Bắt đầu tạo index cho PARTY_POST

--------- Kết thúc tạo index cho PARTY_POST
---------------Kết thúc index cho PARTY_POST
GO 
--------- Index cho DT_PARTY_POST
--------- Xóa index cho DT_PARTY_POST
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_PARTY_POST' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_PARTY_POST
GO
--------- Bắt đầu tạo index cho DT_PARTY_POST
CREATE NONCLUSTERED INDEX [IX_DT_PARTY_POST_0] ON [dbo].[DT_PARTY_POST]
(
	[partypostcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_PARTY_POST_1] ON [dbo].[DT_PARTY_POST]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_PARTY_POST_2] ON [dbo].[DT_PARTY_POST]
(
	[facultycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_PARTY_POST_3] ON [dbo].[DT_PARTY_POST]
(
	[departmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_PARTY_POST
---------------Kết thúc index cho DT_PARTY_POST
GO 
--------- Index cho ADMINISTRATIVE_POST
--------- Xóa index cho ADMINISTRATIVE_POST
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='ADMINISTRATIVE_POST' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho ADMINISTRATIVE_POST
GO
--------- Bắt đầu tạo index cho ADMINISTRATIVE_POST

--------- Kết thúc tạo index cho ADMINISTRATIVE_POST
---------------Kết thúc index cho ADMINISTRATIVE_POST
GO 
--------- Index cho DT_ADMINISTRATIVE_POST
--------- Xóa index cho DT_ADMINISTRATIVE_POST
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_ADMINISTRATIVE_POST' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_ADMINISTRATIVE_POST
GO
--------- Bắt đầu tạo index cho DT_ADMINISTRATIVE_POST
CREATE NONCLUSTERED INDEX [IX_DT_ADMINISTRATIVE_POST_0] ON [dbo].[DT_ADMINISTRATIVE_POST]
(
	[administrativepostcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_ADMINISTRATIVE_POST_1] ON [dbo].[DT_ADMINISTRATIVE_POST]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_ADMINISTRATIVE_POST_2] ON [dbo].[DT_ADMINISTRATIVE_POST]
(
	[facultycode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_ADMINISTRATIVE_POST_3] ON [dbo].[DT_ADMINISTRATIVE_POST]
(
	[departmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_ADMINISTRATIVE_POST
---------------Kết thúc index cho DT_ADMINISTRATIVE_POST
GO 
--------- Index cho RESEARCH_TITLE
--------- Xóa index cho RESEARCH_TITLE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH_TITLE' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH_TITLE
GO
--------- Bắt đầu tạo index cho RESEARCH_TITLE

--------- Kết thúc tạo index cho RESEARCH_TITLE
---------------Kết thúc index cho RESEARCH_TITLE
GO 
--------- Index cho ACADEMIC_RANK
--------- Xóa index cho ACADEMIC_RANK
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='ACADEMIC_RANK' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho ACADEMIC_RANK
GO
--------- Bắt đầu tạo index cho ACADEMIC_RANK
CREATE NONCLUSTERED INDEX [IX_ACADEMIC_RANK_0] ON [dbo].[ACADEMIC_RANK]
(
	[researchtitlecode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_ACADEMIC_RANK_1] ON [dbo].[ACADEMIC_RANK]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho ACADEMIC_RANK
---------------Kết thúc index cho ACADEMIC_RANK
GO 
--------- Index cho AWARD
--------- Xóa index cho AWARD
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='AWARD' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho AWARD
GO
--------- Bắt đầu tạo index cho AWARD

--------- Kết thúc tạo index cho AWARD
---------------Kết thúc index cho AWARD
GO 
--------- Index cho DT_AWARD
--------- Xóa index cho DT_AWARD
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_AWARD' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_AWARD
GO
--------- Bắt đầu tạo index cho DT_AWARD
CREATE NONCLUSTERED INDEX [IX_DT_AWARD_0] ON [dbo].[DT_AWARD]
(
	[awardcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_AWARD_1] ON [dbo].[DT_AWARD]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_AWARD
---------------Kết thúc index cho DT_AWARD
GO 
--------- Index cho PUNISHMENT
--------- Xóa index cho PUNISHMENT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='PUNISHMENT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho PUNISHMENT
GO
--------- Bắt đầu tạo index cho PUNISHMENT

--------- Kết thúc tạo index cho PUNISHMENT
---------------Kết thúc index cho PUNISHMENT
GO 
--------- Index cho DT_PUNISHMENT
--------- Xóa index cho DT_PUNISHMENT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='DT_PUNISHMENT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho DT_PUNISHMENT
GO
--------- Bắt đầu tạo index cho DT_PUNISHMENT
CREATE NONCLUSTERED INDEX [IX_DT_PUNISHMENT_0] ON [dbo].[DT_PUNISHMENT]
(
	[punishmentcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO
CREATE NONCLUSTERED INDEX [IX_DT_PUNISHMENT_1] ON [dbo].[DT_PUNISHMENT]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho DT_PUNISHMENT
---------------Kết thúc index cho DT_PUNISHMENT
GO 
--------- Index cho EDUCATION_PROCESS
--------- Xóa index cho EDUCATION_PROCESS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='EDUCATION_PROCESS' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho EDUCATION_PROCESS
GO
--------- Bắt đầu tạo index cho EDUCATION_PROCESS
CREATE NONCLUSTERED INDEX [IX_EDUCATION_PROCESS_0] ON [dbo].[EDUCATION_PROCESS]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho EDUCATION_PROCESS
---------------Kết thúc index cho EDUCATION_PROCESS
GO 
--------- Index cho APPLIED_TECH_PRODUCT
--------- Xóa index cho APPLIED_TECH_PRODUCT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='APPLIED_TECH_PRODUCT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho APPLIED_TECH_PRODUCT
GO
--------- Bắt đầu tạo index cho APPLIED_TECH_PRODUCT
CREATE NONCLUSTERED INDEX [IX_APPLIED_TECH_PRODUCT_0] ON [dbo].[APPLIED_TECH_PRODUCT]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho APPLIED_TECH_PRODUCT
---------------Kết thúc index cho APPLIED_TECH_PRODUCT
GO 
--------- Index cho TECH_AWARD
--------- Xóa index cho TECH_AWARD
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='TECH_AWARD' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho TECH_AWARD
GO
--------- Bắt đầu tạo index cho TECH_AWARD
CREATE NONCLUSTERED INDEX [IX_TECH_AWARD_0] ON [dbo].[TECH_AWARD]
(
	[teachercode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho TECH_AWARD
---------------Kết thúc index cho TECH_AWARD
GO 
--------- Index cho COUNCIL_HISTORY
--------- Xóa index cho COUNCIL_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='COUNCIL_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho COUNCIL_HISTORY
GO
--------- Bắt đầu tạo index cho COUNCIL_HISTORY

--------- Kết thúc tạo index cho COUNCIL_HISTORY
---------------Kết thúc index cho COUNCIL_HISTORY
GO 
--------- Index cho BOOK_HISTORY
--------- Xóa index cho BOOK_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='BOOK_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho BOOK_HISTORY
GO
--------- Bắt đầu tạo index cho BOOK_HISTORY

--------- Kết thúc tạo index cho BOOK_HISTORY
---------------Kết thúc index cho BOOK_HISTORY
GO 
--------- Index cho RESEARCH_HISTORY
--------- Xóa index cho RESEARCH_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH_HISTORY
GO
--------- Bắt đầu tạo index cho RESEARCH_HISTORY

--------- Kết thúc tạo index cho RESEARCH_HISTORY
---------------Kết thúc index cho RESEARCH_HISTORY
GO 
--------- Index cho RESEARCH_HISTORY
--------- Xóa index cho RESEARCH_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RESEARCH_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RESEARCH_HISTORY
GO
--------- Bắt đầu tạo index cho RESEARCH_HISTORY

--------- Kết thúc tạo index cho RESEARCH_HISTORY
---------------Kết thúc index cho RESEARCH_HISTORY
GO 
--------- Index cho FACULTY_HISTORY
--------- Xóa index cho FACULTY_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='FACULTY_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho FACULTY_HISTORY
GO
--------- Bắt đầu tạo index cho FACULTY_HISTORY

--------- Kết thúc tạo index cho FACULTY_HISTORY
---------------Kết thúc index cho FACULTY_HISTORY
GO 
--------- Index cho MENTORING_HISTORY
--------- Xóa index cho MENTORING_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='MENTORING_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho MENTORING_HISTORY
GO
--------- Bắt đầu tạo index cho MENTORING_HISTORY

--------- Kết thúc tạo index cho MENTORING_HISTORY
---------------Kết thúc index cho MENTORING_HISTORY
GO 
--------- Index cho EXAMIN_HISTORY
--------- Xóa index cho EXAMIN_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='EXAMIN_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho EXAMIN_HISTORY
GO
--------- Bắt đầu tạo index cho EXAMIN_HISTORY

--------- Kết thúc tạo index cho EXAMIN_HISTORY
---------------Kết thúc index cho EXAMIN_HISTORY
GO 
--------- Index cho TEACHING_HISTORY
--------- Xóa index cho TEACHING_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='TEACHING_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho TEACHING_HISTORY
GO
--------- Bắt đầu tạo index cho TEACHING_HISTORY

--------- Kết thúc tạo index cho TEACHING_HISTORY
---------------Kết thúc index cho TEACHING_HISTORY
GO 
--------- Index cho TEACHER_HISTORY
--------- Xóa index cho TEACHER_HISTORY
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='TEACHER_HISTORY' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho TEACHER_HISTORY
GO
--------- Bắt đầu tạo index cho TEACHER_HISTORY

--------- Kết thúc tạo index cho TEACHER_HISTORY
---------------Kết thúc index cho TEACHER_HISTORY
GO 
--------- Index cho LOAD_STATISTIC
--------- Xóa index cho LOAD_STATISTIC
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='LOAD_STATISTIC' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho LOAD_STATISTIC
GO
--------- Bắt đầu tạo index cho LOAD_STATISTIC

--------- Kết thúc tạo index cho LOAD_STATISTIC
---------------Kết thúc index cho LOAD_STATISTIC
GO 
--------- Index cho LOAD_BY_SEMESTER
--------- Xóa index cho LOAD_BY_SEMESTER
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='LOAD_BY_SEMESTER' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho LOAD_BY_SEMESTER
GO
--------- Bắt đầu tạo index cho LOAD_BY_SEMESTER

--------- Kết thúc tạo index cho LOAD_BY_SEMESTER
---------------Kết thúc index cho LOAD_BY_SEMESTER
GO 
--------- Index cho ACCOUNT
--------- Xóa index cho ACCOUNT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='ACCOUNT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho ACCOUNT
GO
--------- Bắt đầu tạo index cho ACCOUNT
CREATE NONCLUSTERED INDEX [IX_ACCOUNT_0] ON [dbo].[ACCOUNT]
(
	[rightgroupcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho ACCOUNT
---------------Kết thúc index cho ACCOUNT
GO 
--------- Index cho RIGHT_GROUP
--------- Xóa index cho RIGHT_GROUP
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RIGHT_GROUP' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RIGHT_GROUP
GO
--------- Bắt đầu tạo index cho RIGHT_GROUP

--------- Kết thúc tạo index cho RIGHT_GROUP
---------------Kết thúc index cho RIGHT_GROUP
GO 
--------- Index cho RIGHT
--------- Xóa index cho RIGHT
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='RIGHT' and i.type=2
declare @databaseowner varchar(100), @tablename varchar(100), @indexname varchar(100)
	declare @name varchar(100)
OPEN ind  
FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
WHILE @@FETCH_STATUS = 0  
BEGIN
--	set @name='ALTER TABLE '+@databaseowner+'.'+@tablename+' DROP CONSTRAINT ' + @indexname
	set @name='DROP INDEX '+@databaseowner+'.'+@tablename+'.' + @indexname
	exec @name
  FETCH NEXT FROM ind into @databaseowner, @tablename, @indexname
END
CLOSE ind
DEALLOCATE ind 
--------- Kết thúc xóa index cho RIGHT
GO
--------- Bắt đầu tạo index cho RIGHT
CREATE NONCLUSTERED INDEX [IX_RIGHT_0] ON [dbo].[RIGHT]
(
	[rightgroupcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO

--------- Kết thúc tạo index cho RIGHT
---------------Kết thúc index cho RIGHT
GO 

