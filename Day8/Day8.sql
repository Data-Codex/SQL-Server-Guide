
----------------------------------------------------------------------------------------------------------------

--DAY 7

----------------------------------------------------------------------------------------------------------------

-- Creating Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- Inserting sample data
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate)
VALUES 
    (1, 'John', 'Doe', 'HR', 50000.00, '2020-01-15'),
    (2, 'Jane', 'Smith', 'IT', 60000.00, '2019-05-20'),
    (3, 'Alice', 'Johnson', 'Finance', 55000.00, '2021-02-10'),
    (4, 'Bob', 'Williams', 'IT', 65000.00, '2020-11-30'),
    (5, 'Emily', 'Brown', 'HR', 52000.00, '2022-03-25'),
    (6, 'Michael', 'Johnson', 'Finance', 62000.00, '2023-07-12'),
    (7, 'Jessica', 'Lee', NULL, 48000.00, '2022-09-05'),
    (8, 'Daniel', 'Anderson', 'IT', 55000.00, '2020-04-28'),
    (9, 'Sophia', 'Garcia', 'Sales', 58000.00, '2021-11-15'),
    (10, 'William', 'Martinez', 'Sales', 54000.00, '2022-08-20'),
    (11, 'Olivia', 'Lopez', 'HR', 51000.00, '2021-06-30'),
    (12, 'Ethan', 'Harris', 'IT', 63000.00, '2023-01-10'),
    (13, 'Ava', 'Clark', 'Finance', 58000.00, '2020-03-18'),
    (14, 'James', 'King', 'IT', 59000.00, '2021-04-05'),
    (15, 'Amelia', 'Young', 'HR', 60000.00, '2022-10-25'),
    (16, 'Logan', 'Taylor', 'Sales', 57000.00, '2023-05-15'),
    (17, 'Mia', 'White', 'IT', 56000.00, '2021-09-08'),
    (18, 'Benjamin', 'Scott', 'Finance', 64000.00, '2022-02-18'),
    (19, 'Charlotte', 'Green', 'IT', 52000.00, '2020-07-22'),
    (20, 'Lucas', 'Adams', 'Sales', 60000.00, '2023-02-28');

--AND

SELECT * FROM Employees
WHERE Department = 'HR' AND Salary >= 50000;

--OR

SELECT * FROM Employees
WHERE Department = 'HR' OR Department = 'IT';

--NOT

SELECT * FROM Employees
WHERE NOT Department = 'HR';

--ANY

SELECT * FROM Employees
WHERE Salary > ANY (SELECT Salary FROM Employees WHERE Department = 'IT');

--ALL

SELECT * FROM Employees
WHERE Salary > ALL (SELECT Salary FROM Employees WHERE Department = 'HR');

--IS NULL

SELECT * FROM Employees
WHERE Department IS NULL;

--LIKE

SELECT * FROM Employees
WHERE FirstName LIKE 'J%';

--IN

SELECT * FROM Employees
WHERE Department IN ('HR', 'IT');

--BETWEEN

SELECT * FROM Employees
WHERE Salary BETWEEN 50000 AND 60000;

--UNION

SELECT FirstName FROM Employees
UNION
SELECT LastName FROM Employees;

--INTERSECT

SELECT FirstName FROM Employees
INTERSECT
SELECT LastName FROM Employees;

--EXCEPT

SELECT FirstName FROM Employees
EXCEPT
SELECT LastName FROM Employees;

--CASE

SELECT FirstName, 
    CASE 
        WHEN Salary > 60000 THEN 'High Salary'
        WHEN Salary > 50000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM Employees;

--IIF

SELECT FirstName, IIF(Salary > 60000, 'High Salary', IIF(Salary > 50000, 'Medium Salary', 'Low Salary')) AS SalaryCategory
FROM Employees;

--COALESCE

SELECT FirstName, COALESCE(Department, 'No Department') AS Department FROM Employees;
