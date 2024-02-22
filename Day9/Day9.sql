
------------------------------------------------------------------------------------------------------------------

--DAY 9

------------------------------------------------------------------------------------------------------------------

-- Table Creation Script
CREATE TABLE FunctionDemo (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Salary DECIMAL(10, 2),
    JoinDate DATETIME
);

-- Insert Statements
INSERT INTO FunctionDemo (ID, FirstName, LastName, BirthDate, Salary, JoinDate)
VALUES (1, 'John', 'Doe', '1990-05-15', 50000.00, '2015-03-10 08:00:00'),
       (2, 'Jane', 'Smith', '1985-08-20', 60000.00, '2016-01-20 09:30:00'),
       (3, 'Alice', 'Johnson', '1992-04-10', 55000.00, '2017-02-15 10:15:00'),
       (4, 'Bob', 'Williams', '1988-12-05', 65000.00, '2018-05-25 11:45:00'),
       (5, 'Emily', 'Brown', '1995-09-30', 52000.00, '2019-07-12 12:00:00'),
       (6, 'Michael', 'Clark', '1993-06-25', 70000.00, '2020-04-18 13:20:00'),
       (7, 'Jessica', 'Lee', '1991-03-12', 48000.00, '2021-03-05 14:30:00'),
       (8, 'Daniel', 'Anderson', '1989-11-08', 55000.00, '2022-02-20 15:45:00'),
       (9, 'Sophia', 'Garcia', '1994-07-18', 58000.00, '2023-01-15 16:00:00'),
       (10, 'William', 'Martinez', '1987-01-25', 54000.00, '2024-01-05 17:10:00'),
       (11, 'Olivia', 'Lopez', '1996-10-20', 51000.00, '2025-04-30 18:20:00'),
       (12, 'Ethan', 'Harris', '1990-08-15', 63000.00, '2026-03-10 19:30:00'),
       (13, 'Ava', 'King', '1986-05-28', 58000.00, '2027-07-22 20:40:00'),
       (14, 'James', 'Taylor', '1998-02-05', 59000.00, '2028-02-15 21:50:00'),
       (15, 'Amelia', 'Young', '1991-09-10', 60000.00, '2029-08-10 22:00:00'),
       (16, 'Logan', 'White', '1984-11-15', 57000.00, '2030-06-05 23:10:00'),
       (17, 'Mia', 'Scott', '1993-04-02', 56000.00, '2031-09-20 00:20:00'),
       (18, 'Benjamin', 'Brown', '1992-12-30', 64000.00, '2032-11-25 01:30:00'),
       (19, 'Charlotte', 'Green', '1989-07-08', 52000.00, '2033-05-15 02:40:00'),
       (20, 'Lucas', 'Adams', '1997-03-05', 60000.00, '2034-04-18 03:50:00'),
       (21, 'Lily', 'Hill', '1995-11-22', 58000.00, '2035-12-12 04:00:00'),
       (22, 'Noah', 'Baker', '1988-06-18', 55000.00, '2036-10-08 05:10:00'),
       (23, 'Grace', 'Ward', '1994-09-25', 61000.00, '2037-08-05 06:20:00'),
       (24, 'Jacob', 'Rivera', '1998-01-12', 59000.00, '2038-07-20 07:30:00'),
       (25, 'Chloe', 'Torres', '1990-04-28', 57000.00, '2039-06-15 08:40:00');

/*
1. String Functions:
   - LEN()
   - LEFT()
   - RIGHT()
   - SUBSTRING()
   - CHARINDEX()
   - REPLACE()
   - UPPER()
   - LOWER()
   - LTRIM()
   - RTRIM()
   - CONCAT()
   - FORMAT()

2. Mathematical Functions:
   - ABS()
   - ROUND()
   - CEILING()
   - FLOOR()
   - POWER()
   - SQRT()
   - RAND()
   - SIGN()

3. Date and Time Functions:
   - GETDATE()
   - DATEADD()
   - DATEDIFF()
   - DATEPART()
   - DATENAME()
   - CONVERT()
   - FORMAT()
   - SYSDATETIME()
   - DATEFROMPARTS()
   - DATEDIFF_BIG()

4. Aggregate Functions:
   - SUM()
   - AVG()
   - COUNT()
   - MAX()
   - MIN()
   
5. Conversion Functions:
   - CAST()
   - CONVERT()
*/

--LEN()

SELECT LEN(FirstName) AS FirstNameLength FROM FunctionDemo;

--LEFT()

SELECT LEFT(LastName, 3) AS LeftLastName FROM FunctionDemo;

--RIGHT()

SELECT RIGHT(FirstName, 4) AS RightFirstName FROM FunctionDemo;

--SUBSTRING()

SELECT SUBSTRING(FirstName, 2, 3) AS SubstringFirstName FROM FunctionDemo;

--CHARINDEX()

SELECT CHARINDEX('a', LastName) AS CharIndexInLastName FROM FunctionDemo;

--REPLACE()

SELECT REPLACE(FirstName, 'John', 'Jon') AS UpdatedFirstName FROM FunctionDemo;

--UPPER()

SELECT UPPER(FirstName) AS UpperFirstName FROM FunctionDemo;

--LOWER()

SELECT LOWER(LastName) AS LowerLastName FROM FunctionDemo;

--LTRIM()

SELECT LTRIM(FirstName) AS TrimmedFirstName FROM FunctionDemo;

--RTRIM()

SELECT RTRIM(LastName) AS TrimmedLastName FROM FunctionDemo;

--CONCAT()

SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM FunctionDemo;

--FORMAT()

SELECT FORMAT(JoinDate, 'yyyy-MM-dd') AS FormattedJoinDate FROM FunctionDemo;

--ABS()

SELECT ABS(Salary) AS AbsoluteSalary FROM FunctionDemo;

--ROUND()

SELECT ROUND(Salary, 0) AS RoundedSalary FROM FunctionDemo;

--CEILING()

SELECT CEILING(Salary) AS CeilingSalary FROM FunctionDemo;

--FLOOR()

SELECT FLOOR(Salary) AS FloorSalary FROM FunctionDemo;

--POWER()

SELECT POWER(Salary, 2) AS SalarySquared FROM FunctionDemo;

--SQRT()

SELECT SQRT(Salary) AS SalarySquareRoot FROM FunctionDemo;

--RAND()

SELECT RAND() AS RandomNumber FROM FunctionDemo;

--SIGN()

SELECT SIGN(Salary) AS SalarySign FROM FunctionDemo;

--GETDATE()

SELECT GETDATE() AS CurrentDateTime;

--DATEADD()

SELECT DATEADD(YEAR, 1, BirthDate) AS BirthDatePlus1Year FROM FunctionDemo;

--DATEDIFF()

SELECT DATEDIFF(DAY, JoinDate, BirthDate) AS DaysDifference FROM FunctionDemo;

--DATEPART()

SELECT DATEPART(YEAR, JoinDate) AS JoinYear FROM FunctionDemo;

--DATENAME()

SELECT DATENAME(MONTH, JoinDate) AS JoinMonth FROM FunctionDemo;

--CONVERT()

SELECT CONVERT(VARCHAR, JoinDate, 23) AS JoinDateAsString FROM FunctionDemo;

--FORMAT()

SELECT FORMAT(BirthDate, 'dd-MM-yyyy') AS FormattedBirthDate FROM FunctionDemo;

--SYSDATETIME()

SELECT SYSDATETIME() AS CurrentDateTimeWithPrecision;

--DATEFROMPARTS()

SELECT DATEFROMPARTS(1990, 5, 15) AS SpecificDate;

--DATEDIFF_BIG()

SELECT DATEDIFF_BIG(SECOND, JoinDate, BirthDate) AS SecondsDifference FROM FunctionDemo;

--SUM()

SELECT SUM(Salary) AS TotalSalary FROM FunctionDemo;

--AVG()

SELECT AVG(Salary) AS AverageSalary FROM FunctionDemo;

--COUNT()

SELECT COUNT(*) AS TotalRecords FROM FunctionDemo;

--MAX()

SELECT MAX(Salary) AS MaximumSalary FROM FunctionDemo;

--MIN()

SELECT MIN(Salary) AS MinimumSalary FROM FunctionDemo;

--CAST()

SELECT CAST(Salary AS INT) AS SalaryInteger FROM FunctionDemo;

--CONVERT()

SELECT CONVERT(VARCHAR, BirthDate, 23) AS BirthDateAsString FROM FunctionDemo;

