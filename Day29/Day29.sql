
----------------------------------------------------------------------------------------------------

--Day 29

----------------------------------------------------------------------------------------------------

-- Create a sample table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50)
);


CREATE TRIGGER Trg_InsertEmployees
ON Employees
AFTER INSERT
AS
BEGIN
	PRINT 'New row got affected inside Employees Table'
END;

CREATE TABLE Audittable
(
	ValueInserted VARCHAR(255),
	TimeInserted DATETIME
)

CREATE TRIGGER trg_LogValue
ON Employees
AFTER INSERT
AS
BEGIN
	INSERT INTO Audittable VALUES ('New Employee added', GETDATE())
END;


-- Insert data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES (4, 'Alice', 'Johnson', 'Finance');

SELECT * FROM Audittable

CREATE TRIGGER trg_EnforceDemp
ON Employees
AFTER INSERT
AS
BEGIN
	IF EXISTS(SELECT 1 FROM inserted WHERE Department NOT IN ('IT','HR','Finance'))
	BEGIN
		RAISERROR ('Invalid department',16,1);
		ROLLBACK TRANSACTION;
	END;
END;

       
  SELECT * FROM    Employees


