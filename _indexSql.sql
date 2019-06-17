--------- Index cho EXAMIN_TYPE
--------- Xóa index cho EXAMIN_TYPE
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='EXAMIN_TYPE' and i.type=2
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
--------- Kết thúc xóa index cho EXAMIN_TYPE
GO
--------- Bắt đầu tạo index cho EXAMIN_TYPE

--------- Kết thúc tạo index cho EXAMIN_TYPE
---------------Kết thúc index cho EXAMIN_TYPE
GO 
--------- Index cho OTHER_BUSINESS
--------- Xóa index cho OTHER_BUSINESS
declare  ind cursor for
select distinct s.name databaseowner, t.name tablename, i.name indexname from sys.tables t
inner join sys.schemas s on t.schema_id = s.schema_id
inner join sys.indexes i on i.object_id = t.object_id
inner join sys.index_columns ic on ic.object_id = t.object_id
inner join sys.columns c on c.object_id = t.object_id and
        ic.column_id = c.column_id where t.name='OTHER_BUSINESS' and i.type=2
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
--------- Kết thúc xóa index cho OTHER_BUSINESS
GO
--------- Bắt đầu tạo index cho OTHER_BUSINESS

--------- Kết thúc tạo index cho OTHER_BUSINESS
---------------Kết thúc index cho OTHER_BUSINESS
GO 

