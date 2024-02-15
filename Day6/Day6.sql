

----------------------------------------------------------------------------------------------------------

--DAY6

-----------------------------------------------------------------------------------------------------------

--CREATING A TABLE WITH UNIQUE CONSTRAINT

CREATE TABLE tbl_Student
(
	ID INT UNIQUE
,	Name VARCHAR(255)
,	Age INT
);

--ADD A NEW COLUMN WITH UNIQUE CONSTRAINT

ALTER TABLE tbl_Student
ADD AadharId BIGINT UNIQUE;

--ADDING UNIQUE CONSTRAINT TO AN EXISTING COLUMN

ALTER TABLE tbl_Student
ADD CONSTRAINT UQ_tbl_Student_Age UNIQUE(Age);

--DELETE UNIQUE CONSTRAINT

ALTER TABLE tbl_Student
DROP CONSTRAINT UQ_tbl_Student_Age;

--CREATING TABLE WITH IDENTITY CONSTRAINT

CREATE TABLE tbl_Student
(
	ID INT IDENTITY(1,1)
,	Name VARCHAR(255)
,	Age INT
);

--SETTING IDENTITY INSERT ON FOR A TABLE

SET IDENTITY_INSERT tbl_Student ON;

--SETTING IDENTITY INSERT OFF FOR A TABLE

SET IDENTITY_INSERT tbl_Student OFF;

--RESETTING VALUE BACK

DBCC CHECKIDENT('tbl_Student',RESEED,0);

--CHECK THE CURRENT IDENTITY VALUE

SELECT SCOPE_IDENTITY()
SELECT @@IDENTITY
