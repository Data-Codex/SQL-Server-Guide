
---------------------------------------------------------------------------------------------------------

--DAY 36

---------------------------------------------------------------------------------------------------------

SELECT * FROM [dbo].[Employees]


SELECT * FROM [dbo].[Departments]


ALTER VIEW Vw_EmployeeDeptNames
AS
(
SELECT TOP 5 E.EmployeeID, E.EmployeeName,D.DepartmentName FROM [dbo].[Employees] E 
JOIN
[dbo].[Departments] D
ON E.DepartmentID = D.DepartmentID
);

SELECT * FROM Vw_EmployeeDeptNames

CREATE VIEW Vw_EmpCountinDept
AS
(
	SELECT D.DepartmentID, D.DepartmentName, COUNT(E.EmployeeID) AS Employee_count FROM [dbo].[Employees] E 
	JOIN
	[dbo].[Departments] D
	ON E.DepartmentID = D.DepartmentID
	GROUP BY D.DepartmentID, D.DepartmentName
);

SELECT * FROM Vw_EmpCountinDept

CREATE VIEW Vw_Employees
WITH SCHEMABINDING
AS
(
	SELECT E.EmployeeID, E.EmployeeName,D.DepartmentName FROM [dbo].[Employees] E 
	JOIN
	[dbo].[Departments] D
	ON E.DepartmentID = D.DepartmentID
);

SELECT * FROM Vw_Employees

ALTER TABLE [Employees] DROP COLUMN EmployeeName


CREATE OR ALTER VIEW Vw_EmpwithIndex
WITH SCHEMABINDING
AS
(
	SELECT D.DepartmentID, D.DepartmentName, COUNT_BIG(*) AS Employee_count FROM [dbo].[Employees] E 
	JOIN
	[dbo].[Departments] D
	ON E.DepartmentID = D.DepartmentID
	GROUP BY D.DepartmentID, D.DepartmentName
);


CREATE UNIQUE CLUSTERED INDEX IX_Vw_EmpwithIndex_DepartmentID
ON Vw_EmpwithIndex(DepartmentID);


SELECT * FROM Vw_EmpwithIndex