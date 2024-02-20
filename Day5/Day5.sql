----------------------------------------------------------------------------------------------------------------

--DAY 5

----------------------------------------------------------------------------------------------------------------

--CREATE A TABLE

CREATE TABLE Course
(
	CourseId INT PRIMARY KEY
,	CourseName VARCHAR(255)
);

--CREATE AOTHER TABLE

CREATE TABLE Student
(
	Id INT PRIMARY KEY
,	Name VARCHAR(255)
,	Age INT
,	CourseId INT DEFAULT 1 FOREIGN KEY REFERENCES Course(CourseId)
);

--ADDING A CHECK CONSTRAINT 

ALTER TABLE Student
ADD CONSTRAINT CK_Student_Age CHECK (Age >=1 AND Age <=150) --or Age BETWEEN 1 AND 150

--DROP A CHECK CONSTRAINT 

ALTER TABLE Student
DROP CONSTRAINT CK_Student_Age
