

--***********************************************************************************

--DAY2  

--***********************************************************************************

--Create a Table using Schema

CREATE TABLE Test
(
	Id INT PRIMARY KEY IDENTITY(1,1)
,	[Name] VARCHAR(255) NULL
,	Age INT NULL
,	IsMarried BIT NULL
)

--Create New table from existing table using Select into

SELECT * INTO 'NewTable' FROM 'OldTable'

--Retrive Structue of table using sp_help comment

sp_help 'YourTableName';


--Creating a Temp Table

CREATE TABLE #Test
(
	Id INT PRIMARY KEY IDENTITY(1,1)
,	[Name] VARCHAR(255) NULL
,	Age INT NULL
,	IsMarried BIT NULL
)

--Creating a Temp Table from existing table using Select into

SELECT * INTO '#TempTable' FROM 'OldTable'

--Retrive Structue of temp table using sp_help comment

USE tempdb;
sp_help '#YourTempTableName';

--Create a Global temp table

CREATE TABLE ##Test
(
	Id INT PRIMARY KEY IDENTITY(1,1)
,	[Name] VARCHAR(255) NULL
,	Age INT NULL
,	IsMarried BIT NULL
)

--Creating a Global Temp Table from existing table using Select into

SELECT * INTO '#GlobalTempTable' FROM 'OldTable'

--Retrive Structue of Global temp table using sp_help comment

USE tempdb;
sp_help '##YourTempTableName';

--Rename a Table

EXEC sp_rename 'OldTableName', 'NewTableName';





