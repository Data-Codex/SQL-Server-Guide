
----------------------------------------------------------------------------------------------------------

--DAY 35

----------------------------------------------------------------------------------------------------------

CREATE FUNCTION dbo.AddNumbers
(@num1 INT, @num2 INT)
RETURNS INT
AS
BEGIN
	DECLARE @sum INT;

	SET @sum = @num1 + @num2

	RETURN @sum

END;

SELECT dbo.AddNumbers(89,54) AS sum_of_values


SELECT * FROM Employees

CREATE FUNCTION dbo.ReturnEmpDetails
(@ID INT)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM Employees WHERE ID = @ID
);

SELECT Salary FROM dbo.ReturnEmpDetails(4)


CREATE OR ALTER FUNCTION dbo.FullName
(@firstname VARCHAR(255), @lastname VARCHAR(255))
RETURNS VARCHAR(255)
AS
BEGIN
	DECLARE @fullname VARCHAR(255);

	SET @fullname = @firstname + ' ' + @lastname

	RETURN @fullname
END;

SELECT *,dbo.FullName(FirstName,LastName) AS FullName FROM Employees