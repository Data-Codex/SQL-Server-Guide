
------------------------------------------------------------------------------------------------------------------

--DAY 10

-------------------------------------------------------------------------------------------------------------------

--DDL COMMANDS - CREATE, ALTER, DROP, TRUNCATE

--Create Database

CREATE DATABASE DatabaseName;

--Create Table

CREATE TABLE TableName
(
	Id INT,
	Name VARCHAR(255)
)

--Create View

CREATE VIEW ViewName
AS
SELECT FirstName, LastName, Salary FROM [dbo].[Employee]

--Create Stored Procedure

CREATE PROCEDURE SPName
(
@EmpId INT
)
AS
BEGIN
DELETE FROM [Employee] WHERE ID = @EmpId
END

--EXEC SPName 20

--ALTER Command Add column

ALTER TABLE Sampletbl
ADD Age INT 

--DROP Command to Drop table

DROP TABLE TableName

--DROP VIEW

DROP VIEW ViewName

--DROP Stored Procedure

DROP PROCEDURE Sampleprocedure

--DROP Database

DROP DATABASE DatabaseName

--TRUNCATE Command

TRUNCATE TABLE TableName

--DML

--SELECT

SELECT * FROM TableName

--INSERT

INSERT INTO TableName VALUES (1,'Ananth'),(2,'Hari'),(3,'Eliyas')

--UPDATE

UPDATE TableName SET Name = 'Jesin' WHERE ID = 2

--DELETE

DELETE FROM TableName WHERE ID = 2