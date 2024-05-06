
----------------------------------------------------------------------------------------------

--DAY 37

----------------------------------------------------------------------------------------------

DECLARE @number INT = 1;

WHILE @number <=10
BEGIN
	PRINT @number
	IF @number = 5
		BREAK
	SET @number = @number + 1
END


--SELECT * FROM [dbo].[Employees]


DECLARE @employeename NVARCHAR(100);
DECLARE employeecursor CURSOR FOR
	SELECT EmployeeName FROM Employees;

OPEN employeecursor;

FETCH NEXT FROM employeecursor INTO @employeename;

WHILE @@FETCH_STATUS = 0
BEGIN
	SELECT @employeename EmployeeName;

	FETCH NEXT FROM employeecursor INTO @employeename
END

CLOSE employeecursor;

DEALLOCATE employeecursor;