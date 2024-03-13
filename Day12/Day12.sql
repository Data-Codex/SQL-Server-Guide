
-------------------------------------------------------------------------------------------------------------------------

--DAY 12 [Savepoints and Try Catch]

-------------------------------------------------------------------------------------------------------------------------

-- Create a table schema
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (1, 'John', 'Doe', 'HR', 50000.00),
    (2, 'Jane', 'Smith', 'Engineering', 60000.00),
    (3, 'Mike', 'Johnson', 'Finance', 55000.00);

-- Grant SELECT permission on the Employees table to a specific user or role
GRANT SELECT ON Employees TO UserName;

-- Revoke SELECT permission from a user or role
REVOKE SELECT ON Employees FROM UserName;

-- Begin a transaction
BEGIN TRANSACTION;

-- Insert more data into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary)
VALUES
    (4, 'Emily', 'Brown', 'Marketing', 52000.00),
    (5, 'Chris', 'Wilson', 'Engineering', 62000.00);

-- Commit the transaction
COMMIT TRANSACTION;

-- Begin a transaction
BEGIN TRANSACTION;

-- Update salary for employees in the Engineering department
UPDATE Employees SET Salary = Salary * 1.1 WHERE Department = 'Engineering';

SAVE TRANSACTION SavePoint1


DELETE FROM Employees WHERE Department = 'Engineering';


-- Rollback the transaction (undo changes)
ROLLBACK TRANSACTION SavePoint1;

COMMIT;


--TRY CATCH in Transactions

BEGIN TRY
    BEGIN TRANSACTION;
    
    -- Perform some operations
    UPDATE TableName SET Column1 = Value1 WHERE Condition;

    -- Create a savepoint
    SAVE TRANSACTION SavepointName;

    -- More operations
    DELETE FROM TableName WHERE Condition;

    -- If everything goes well, commit the transaction
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    -- If an error occurs, roll back to the savepoint or the entire transaction
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    
    -- Handle the error
    PRINT 'An error occurred: ' + ERROR_MESSAGE();
END CATCH;

