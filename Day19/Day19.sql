USE [Sample1]
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

INSERT INTO Students (StudentID, StudentName) VALUES
(1, 'John'),
(2, 'Alice'),
(3, 'Bob'),
(4, 'Sarah'),
(5,'Elisa')

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Courses (CourseID, CourseName, StudentID) VALUES
(101, 'Mathematics', 1),
(102, 'Physics', 2),
(103, 'Chemistry', 3),
(104, 'Biology', 1),
(105, 'History', 4),
(106, 'Literature', 2)


SELECT * FROM Students

SELECT * FROM Courses

SELECT A.StudentName,B.CourseName FROM Students A JOIN Courses B ON A.StudentID = B.StudentID


SELECT * FROM [dbo].[User]

SELECT * FROM [dbo].[Orders]

SELECT * FROM [User] A FULL OUTER JOIN [Orders] B ON A.UserID = B.UserID

SELECT A.Username,A.Email,ISNULL(CAST(OrderID AS VARCHAR(10)),'No Order') OrderID FROM [User] A FULL OUTER JOIN [Orders] B ON A.UserID = B.UserID
