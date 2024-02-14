
----------------------------------------------------------------------------------------------------

--DAY4

----------------------------------------------------------------------------------------------------

--CREATE A TABLE

CREATE TABLE Student
(
	Id INT PRIMARY KEY
,	Name VARCHAR(255)
,	Age INT
);

--CREATE ANOTHER TABLE

CREATE TABLE Course
(
	CourseId INT PRIMARY KEY
,	CourseName VARCHAR(255)
);

--ADDING COLUMN CourseId TO Student

ALTER TABLE Student ADD
CourseId INT FOREIGN KEY REFERENCES Course(CourseId);

--DROP OR ADD PRIMARY KEY

ALTER TABLE Course 
DROP CONSTRAINT 'YourPrimaryKeyConstraintName';

--Use Simple Join to see Records

SELECT * FROM Student S JOIN Course C
ON S.CourseId = C.CourseId;

--Add a Primary Key

ALTER TABLE TableName
ADD CONSTRAINT ConstraintName PRIMARY KEY (ColumnName);

--Add a Foreign Key

ALTER TABLE TableName
ADD CONSTRAINT ConstraintName FOREIGN KEY (ColumnName)
REFERENCES ReferencedTableName(ReferencedColumnName);

--Add a Default Constraint to a column in a Table

ALTER TABLE TableName
ADD CONSTRAINT ConstraintName DEFAULT DefaultValue FOR ColumnName;

