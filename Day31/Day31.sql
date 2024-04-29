
-------------------------------------------------------------------------------------------------------------

--DAY 31

-------------------------------------------------------------------------------------------------------------

-- Create a sample table
CREATE TABLE Employees (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50)
);

CREATE TABLE tbl_Salary
(
	EmpId INT,
	Salary INT
);

INSERT INTO tbl_Salary VALUES (1,55000),(2,75000),(3,65000)

DELETE FROM tbl_Salary WHERE EmpId = 3

-- Insert data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES (1, 'John', 'Doe', 'IT'),
(2, 'Jane', 'Smith', 'HR'),
(3, 'Alice', 'Johnson', 'Finance'),
(4, 'Bob', 'Wern', 'HR'),
(5, 'Emily', 'Steward', 'Finance');

DELETE FROM Employees WHERE EmployeeID = 3

SELECT * FROM Employees

CREATE TRIGGER Tgr_DeleteEmployee
ON Employees
AFTER DELETE
AS
BEGIN
	PRINT 'Employee Delete successfully!'
END;


CREATE TABLE AuditLoging
(
	Eventvaluen VARCHAR(255),
	Timedeleted DATE
);


CREATE TRIGGER trg_DeleteLog
ON Employees
AFTER DELETE
AS
BEGIN
	INSERT INTO AuditLoging (Eventvaluen, Timedeleted)
	SELECT 'Employee delete: '+ CAST(deleted.EmployeeID AS VARCHAR(255)),GETDATE() FROM deleted
END;

SELECT * FROM AuditLoging


CREATE TRIGGER trg_ValidateDelete
ON Employees
AFTER DELETE
AS
BEGIN
	IF EXISTS(SELECT 1 FROM tbl_Salary WHERE EmpId IN (SELECT deleted.EmployeeID FROM deleted))
	BEGIN
		RAISERROR( 'Cannot delete this Employee, It is associated with Salary Table',16,1);
		ROLLBACK TRANSACTION
	END;
END;
