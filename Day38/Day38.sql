
------------------------------------------------------------------------------------------------

--DAY 38

------------------------------------------------------------------------------------------------

SELECT * FROM Employees

CREATE NONCLUSTERED INDEX IX_Employees_Salary
ON Employees(Salary)

CREATE CLUSTERED INDEX IX_Employees_Salary
ON Employees(Salary)

SELECT * FROM Employees
WHERE Salary > 55000 AND Salary < 60000

DROP INDEX IX_Employees_Salary ON Employees

--DROP INDEX PK_Employee_7AD04FF16C9FFBC4 ON Employees -- Cannot drop primary key idex with code

CREATE TABLE DemoTable
(
	ID INT PRIMARY KEY
,	[Name] VARCHAR(255)
)

SELECT * FROM DemoTable

CREATE UNIQUE INDEX IX_Employees_EmployeeName
ON Employees(EmployeeName)

ALTER TABLE Employee
ADD CONSTRAINT UQ_Name UNIQUE(Name)

