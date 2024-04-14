
----------------------------------------------------------------------------------------------------

--DAY 26

----------------------------------------------------------------------------------------------------


-- Create Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10, 2)
);

-- Insert sample data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary)
VALUES 
    (1, 'John Doe', 1, 50000.00),
    (2, 'Jane Smith', 2, 60000.00),
    (3, 'Michael Johnson', 1, 55000.00),
    (4, 'Emily Brown', 2, 62000.00),
    (5, 'David Lee', 1, 58000.00),
    (6, 'Sarah White', 3, 63000.00),
    (7, 'Christopher Brown', 2, 59000.00),
    (8, 'Amanda Johnson', 1, 54000.00);


SELECT * FROM Employees

SELECT E.EmployeeID, E.EmployeeName, E.DepartmentID,
CASE DepartmentID
	WHEN 1 THEN 'Development'
	WHEN 2 THEN 'Marketing'
	WHEN 3 THEN 'Sales'
	ELSE 'Other'
END AS DepartmentName
FROM Employees E


DECLARE @SalaryValue VARCHAR(10)

SELECT @SalaryValue = 
	CASE
		WHEN AVG(Salary) < 55000 THEN 'Low'
		WHEN AVG(Salary) >= 55000 AND AVG(Salary) < 60000 THEN 'Medium'
		ELSE 'High'
	END
FROM Employees

IF @SalaryValue = 'Low'
BEGIN
	SELECT EmployeeName, Salary FROM Employees WHERE Salary < 55000;
END
ELSE IF @SalaryValue = 'Medium'
BEGIN
	SELECT EmployeeName, Salary FROM Employees WHERE Salary >= 55000 AND Salary < 60000;
END
ELSE
BEGIN
	SELECT EmployeeName, Salary FROM Employees WHERE Salary >= 60000;
END


SELECT *,IIF(Salary > 55000,'High','Low') as SalaryRange FROM Employees