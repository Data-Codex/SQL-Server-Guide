
-------------------------------------------------------------------------------------------------------------

--DAY25

-------------------------------------------------------------------------------------------------------------

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES 
    (1, 'John Doe', 1),
    (2, 'Jane Smith', 2),
    (3, 'Michael Johnson', 1),
    (4, 'Emily Brown', 2),
    (5, 'David Lee', 3),
    (6, 'Sarah White', 3),
    (7, 'Christopher Brown', 4),
    (8, 'Amanda Johnson', 4),
    (9, 'Matthew Wilson', 5),
    (10, 'Jessica Martinez', 5),
    (11, 'Andrew Taylor', 1),
    (12, 'Olivia Garcia', 2),
    (13, 'Daniel Martinez', 1),
    (14, 'Sophia Anderson', 2);

-- Insert sample data into Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
    (1, 'Engineering'),
    (2, 'Marketing'),
    (3, 'Finance'),
    (4, 'Human Resources'),
    (5, 'Sales');


SELECT * FROM Employees

SELECT * FROM Departments

WITH EmpDeptDetails AS (
SELECT D.DepartmentID, D.DepartmentName, STRING_AGG(E.EmployeeName,',') AS EmpName FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentID,D.DepartmentName
)
SELECT * FROM EmpDeptDetails;

-- Create an Employee table.
CREATE TABLE dbo.MyEmployees
(
EmployeeID SMALLINT NOT NULL,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(40) NOT NULL,
Title NVARCHAR(50) NOT NULL,
DeptID SMALLINT NOT NULL,
ManagerID SMALLINT NULL,
CONSTRAINT PK_EmployeeID PRIMARY KEY CLUSTERED (EmployeeID ASC),
CONSTRAINT FK_MyEmployees_ManagerID_EmployeeID FOREIGN KEY (ManagerID) REFERENCES dbo.MyEmployees (EmployeeID)
);
-- Populate the table with values.
INSERT INTO dbo.MyEmployees VALUES
(1, N'Ken', N'Sánchez', N'Chief Executive Officer',16, NULL)
,(273, N'Brian', N'Welcker', N'Vice President of Sales', 3, 1)
,(274, N'Stephen', N'Jiang', N'North American Sales Manager', 3, 273)
,(275, N'Michael', N'Blythe', N'Sales Representative', 3, 274)
,(276, N'Linda', N'Mitchell', N'Sales Representative', 3, 274)
,(285, N'Syed', N'Abbas', N'Pacific Sales Manager', 3, 273)
,(286, N'Lynn', N'Tsoflias', N'Sales Representative', 3, 285)
,(16, N'David', N'Bradley', N'Marketing Manager', 4, 273)
,(23, N'Mary', N'Gibson', N'Marketing Specialist', 4, 16);



SELECT * FROM MyEmployees;

WITH DirectReports (ManagerID, EmployeeID,Title,EmployeeLevel) AS(
SELECT ManagerID, EmployeeID,Title, 1 AS [Employee Level] FROM MyEmployees
WHERE ManagerID IS NULL
UNION ALL
SELECT E.ManagerID, E.EmployeeID,E.Title,EmployeeLevel + 1 FROM MyEmployees E
INNER JOIN DirectReports D
ON E.ManagerID = D.EmployeeID
)
SELECT ManagerID, EmployeeID,Title,EmployeeLevel FROM DirectReports
ORDER BY EmployeeLevel


