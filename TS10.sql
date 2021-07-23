CREATE DATABASE CodeLean
go
USE CodeLean
GO
CREATE TABLE Classes(
ClassName CHAR(6),
Teacher varchar(30),
TimeSlot varchar(30),
Class INT,
Lab INT
)
GO

CREATE UNIQUE CLUSTERED INDEX MyClusteredIndex ON Classes(ClassName)
GO
CREATE NONCLUSTERED INDEX TeacherIndex ON Classes(Teacher)
GO
DROP INDEX TeacherIndex ON Classes
GO
CREATE UNIQUE CLUSTERED INDEX MyClusteredIndex ON Classes(ClassName)WITH(FILLFACTOR=40)
GO
CREATE INDEX ClassLabIndex ON Classes(Class,Lab)
GO
EXECUTE sp_helpindex Classes;
select * from sys.indexes CodeLean
