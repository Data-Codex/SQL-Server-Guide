
----------------------------------------------------------------------------------------------------------

--Day 22 [UNION vs MERGE]

----------------------------------------------------------------------------------------------------------

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Department NVARCHAR(100)
);

-- Create NewEmployees table
CREATE TABLE NewEmployees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Department NVARCHAR(100)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, Name, Age, Department)
VALUES
    (1, 'John Doe', 35, 'IT'),
    (2, 'Jane Smith', 28, 'HR'),
    (3, 'Alice Johnson', 40, 'Finance');

-- Insert sample data into NewEmployees table
INSERT INTO NewEmployees (EmployeeID, Name, Age, Department)
VALUES
    (2, 'Jane Smith', 29, 'HR'),   -- Jane's age has changed
    (4, 'Bob Brown', 45, 'Sales'); -- New employee


SELECT * FROM Employees  


MERGE INTO Employees AS E
USING NewEmployees AS N
ON E.EmployeeID = N.EmployeeID
WHEN MATCHED THEN
	UPDATE SET E.Name = N.Name, E.Age = N.Age, E.Department = N.Department
WHEN NOT MATCHED BY TARGET THEN
	INSERT (EmployeeID, Name, Age, Department)
	VALUES (N.EmployeeID,N.Name, N.Age, N.Department)
WHEN NOT MATCHED BY SOURCE THEN
	DELETE;



-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Department NVARCHAR(100)
);

-- Create Consultants table
CREATE TABLE Consultants (
    ConsultantID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT,
    Specialization NVARCHAR(100)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, Name, Age, Department)
VALUES
    (1, 'John Doe', 35, 'IT'),
    (2, 'Jane Smith', 28, 'HR'),
    (3, 'Alice Johnson', 40, 'Finance');

-- Insert sample data into Consultants table
INSERT INTO Consultants (ConsultantID, Name, Age, Specialization)
VALUES
    (1, 'Mark Anderson', 42, 'IT Security'),
    (2, 'Emily Brown', 35, 'HR Consulting');

SELECT Name,Age,Department AS Specialization FROM Employees
UNION 
SELECT Name,Age,Specialization FROM Consultants



