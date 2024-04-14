
-------------------------------------------------------------------------------------------------------

--DAY 20 

-------------------------------------------------------------------------------------------------------

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID) VALUES
(1, 'John', 1),
(2, 'Alice', 2),
(3, 'Bob', 1),
(4, 'Emma', NULL),
(5, 'David', 3);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'HR');

SELECT * FROM Employees E LEFT JOIN Departments D ON E.DepartmentID = D.DepartmentID


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    GradeID INT
);

INSERT INTO Students (StudentID, Name, Age, GradeID) VALUES
(1, 'John', 18, 1),
(2, 'Alice', 17, 2),
(3, 'Bob', 19, NULL),
(4, 'Emma', 18, 3);


CREATE TABLE Grades (
    GradeID INT PRIMARY KEY,
    Grade VARCHAR(2)
);

INSERT INTO Grades (GradeID, Grade) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4,'D');

SELECT * FROM Students S RIGHT OUTER JOIN Grades G ON S.GradeID = G.GradeID
