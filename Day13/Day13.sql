
-------------------------------------------------------------------------------------------------------------------------

--DAY 13 [DISTINCT and ORDER BY]

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Age INT,
    Grade CHAR(1)
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Grade)
VALUES
    (1, 'John', 'Doe', 20, 'A'),
    (2, 'Jane', 'Smith', 22, 'B'),
    (3, 'Alice', 'Johnson', 21, 'C'),
    (4, 'Bob', 'Brown', 19, 'A'),
    (5, 'Emily', 'Davis', 20, 'B'),
    (6, 'Michael', 'Wilson', 23, 'C'),
    (7, 'Sophia', 'Martinez', 22, 'A'),
    (8, 'William', 'Taylor', 21, 'B'),
    (9, 'Olivia', 'Anderson', 20, 'C'),
    (10, 'James', 'Garcia', 22, 'A');

--DISTINCT

--Retrieve unique grades from the Students table
SELECT DISTINCT Grade FROM Students;

--ORDER BY

--Retrieve all students sorted by age in ascending order
SELECT * FROM Students ORDER BY Age ASC;
	
--Retrieve all students sorted by last name in descending order
SELECT * FROM Students ORDER BY LastName DESC;

--Retrieve all students sorted by grade in ascending order, then by age in descending order
SELECT * FROM Students ORDER BY Grade ASC, Age DESC;

--Retrieve all students sorted by first name in ascending order, then by last name in ascending order
SELECT * FROM Students ORDER BY FirstName ASC, LastName ASC;

--Combined

--Retrieve unique combinations of first name and grade, ordered by first name

SELECT DISTINCT FirstName, Grade 
FROM Students 
ORDER BY FirstName;

-- Retrieve distinct grades for students aged 20 or younger, ordered by grade

SELECT DISTINCT Grade 
FROM Students 
WHERE Age <= 20 
ORDER BY Grade;

--Retrieve distinct combinations of last name and age for students with grade 'A', ordered by last name

SELECT DISTINCT LastName, Age 
FROM Students 
WHERE Grade = 'A' 
ORDER BY LastName;

--Retrieve distinct combinations of first name and grade for students aged 21 or older, ordered by grade, then by first name

SELECT DISTINCT FirstName, Grade 
FROM Students 
WHERE Age >= 21 
ORDER BY Grade, FirstName;

--Retrieve distinct combinations of first name and grade for students aged 22, ordered by grade in descending order, then by first name in ascending order

SELECT DISTINCT FirstName, Grade 
FROM Students 
WHERE Age = 22 
ORDER BY Grade DESC, FirstName ASC;
