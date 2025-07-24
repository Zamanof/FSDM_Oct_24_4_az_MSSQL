-- Indexes

--USE [master]

--GO

--CREATE DATABASE Test

--GO

--USE [Test]

GO

CREATE TABLE TableInHeap(
[Id] int NOT NULL,
[Field1] char(36) NOT NULL,
[Field2] char(216) NOT NULL
)


--CREATE PROC ShoeInfoTableInHeap
--AS
--BEGIN
--	SELECT OBJECT_NAME(object_id) AS TableName, [name] AS IndexName, [type], [type_desc]
--	FROM sys.indexes
--	WHERE object_id = OBJECT_ID('dbo.TableInHeap')

--	SELECT index_type_desc, page_count, record_count, avg_page_space_used_in_percent
--	FROM sys.dm_db_index_physical_stats(DB_ID('Test'), OBJECT_ID('dbo.TableInHeap'), NULL, NULL, 'DETAILED')

--	EXEC dbo.sp_spaceused 'TableInHeap'
--END

EXEC ShoeInfoTableInHeap

--INSERT INTO TableInHeap(Id, Field1, Field2)
--VALUES (1, 'a', 'b')

--DECLARE @id int = 2
--WHILE @id <= 30
--BEGIN
--	INSERT INTO TableInHeap(Id, Field1, Field2)
--	VALUES (@id, 'a', 'b')
--	SET @id+=1
--END

--INSERT INTO TableInHeap(Id, Field1, Field2)
--VALUES (31, 'a', 'b')

--DECLARE @id int = 2
--WHILE @id <= 30
--BEGIN
--	INSERT INTO TableInHeap(Id, Field1, Field2)
--	VALUES (@id, 'a', 'b')
--	SET @id+=1
--END

--DECLARE @id int = 32
--WHILE @id <= 3000000
--BEGIN
--	INSERT INTO TableInHeap(Id, Field1, Field2)
--	VALUES (@id, 'a', 'b')
--	SET @id+=1
--END

CREATE CLUSTERED INDEX Index1
ON TableInHeap(Id)

DECLARE @start_time AS datetime = SYSDATETIME(), @end_time AS datetime


SELECT *
FROM TableInHeap
WHERE Id = 30000001

SET @end_time = SYSDATETIME()

SELECT DATEDIFF(NANOSECOND, @start_time, @end_time) AS [Duration in nanosecond]

-- without index ~ 146666666

-- with index first time 3000000's data ~10000000, first time 1'st data ~3333333, after 0 nanosecond