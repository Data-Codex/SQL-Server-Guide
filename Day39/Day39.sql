
---------------------------------------------------------------------------------------------------

--DAY 39

----------------------------------------------------------------------------------------------------
SELECT * FROM [dbo].[Employees]

DECLARE @employeeid INT;

SET @employeeid = 3


SELECT * FROM [dbo].[Employees] WHERE EmployeeID = 3

CREATE OR ALTER PROCEDURE GetEmployeeDetails
(@employeeid INT,
@employeename VARCHAR(255))
AS
BEGIN
	SELECT * FROM [dbo].[Employees] WHERE EmployeeID = @employeeid AND EmployeeName = @employeename
END

EXEC GetEmployeeDetails 3 ,'Michael Johnson'



CREATE TABLE SampleTable
(
	[Colu/mn1] VARCHAR(255),
	[Col(u)mn2] VARCHAR(255),
	[Col*umn3] VARCHAR(255),
	[Col-umn4] VARCHAR(255),
)

INSERT INTO SampleTable VALUES ('UGFEIU','YFAA','Aiu','gouffe')

SELECT * FROM SampleTable

DECLARE @tablename NVARCHAR(255);
SET @tablename = 'SampleTable'
DECLARE @s NVARCHAR(MAX);
SET @s = ''
DECLARE @result NVARCHAR(255);

SELECT @s = @s + '[' + c.name + '] AS [' + REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c.name,'/',''),'(',''),')',''),'*',''),'-','') + '],'
 FROM 
sys.all_columns c
JOIN
sys.tables t
ON c.object_id = t.object_id
WHERE t.name = @tablename;

IF LEN(@s) > 0
	SET @s = LEFT(@s, LEN(@s) - 1);

SET @result = N'SELECT ' + @s + N' FROM ' + QUOTENAME(@tablename);

EXEC sp_executesql @result;
