
--------------------------------------------------------------------------------------------------

--DAY 30

--------------------------------------------------------------------------------------------------

-- Create a sample table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50)
);

-- Insert data into the Employees table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Department)
VALUES (1, 'John', 'Doe', 'IT'),
       (2, 'Jane', 'Smith', 'HR'),
       (3, 'Alice', 'Johnson', 'Finance'),
	   (4, 'Alice', 'Johnson', 'Finance');

SELECT * FROM Employee

CREATE TRIGGER trg_UpdateEmployee
ON Employee
AFTER UPDATE
AS
BEGIN
	Print('The Employee updated successfully!')
END;

UPDATE Employee SET Department = 'HR' WHERE EmployeeID = 4


CREATE TABLE AuditUpdatelog
(
	Updatedstatus VARCHAR(255),
	Updatedtime DATETIME
);

CREATE TRIGGER tgr_Updatelogaudit
ON Employee
AFTER UPDATE
AS
BEGIN
	INSERT INTO AuditUpdatelog VALUES ('Eemployee Update was successful !', GETDATE())
END;


SELECT * FROM AuditUpdatelog


CREATE TRIGGER tgr_dataintegrityupdate
ON Employee
AFTER UPDATE
AS
BEGIN
	IF EXISTS(SELECT 1 FROM inserted WHERE Department NOT IN ('IT','HR','Finance'))
	BEGIN
		RAISERROR ('Invalid Update',16,1);
		ROLLBACK TRANSACTION;
	END;
END;