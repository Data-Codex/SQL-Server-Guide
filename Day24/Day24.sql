
-----------------------------------------------------------------------------------------------------------------

--DAY 24

----------------------------------------------------------------------------------------------------------------

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


-- Inserting data into Customers table
INSERT INTO Customers (CustomerID, Name, Email)
VALUES
    (1, 'John Doe', 'john.doe@example.com'),
    (2, 'Jane Smith', 'jane.smith@example.com'),
    (3, 'Alice Johnson', 'alice.johnson@example.com'),
	(4, 'Michael Johnson', 'michael.johnson@example.com'),
    (5, 'Emily Brown', 'emily.brown@example.com'),
    (6, 'David Wilson', 'david.wilson@example.com'),
    (7, 'Sarah Miller', 'sarah.miller@example.com');


-- Inserting data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2024-03-15', 150.00),
    (102, 2, '2024-03-16', 200.00),
    (103, 1, '2024-03-17', 100.00),
    (104, 3, '2024-03-18', 300.00),
    (105, 2, '2024-03-19', 180.00),
    (106, 4, '2024-03-20', 250.00),
    (107, 5, '2024-03-21', 120.00),
    (108, 6, '2024-03-22', 180.00),
    (109, 3, '2024-03-23', 220.00),
    (110, 7, '2024-03-24', 300.00),
    (111, 1, '2024-03-25', 150.00),
    (112, 2, '2024-03-26', 200.00),
    (113, 3, '2024-03-27', 180.00),
    (114, 5, '2024-03-28', 210.00);

SELECT * FROM Customers

SELECT * FROM Orders

SELECT Name FROM Customers
WHERE CustomerID IN (
	SELECT CustomerID FROM Orders
	GROUP BY CustomerID
	HAVING SUM(TotalAmount) > 200
)


UPDATE Customers SET Email = 'Jane Smith@example.org'
WHERE CustomerID = (
	SELECT CustomerID FROM 
	Customers WHERE Name = 'Jane Smith'
)

SELECT * FROM Customers

DELETE FROM Orders
WHERE CustomerID IN (
	SELECT CustomerID FROM Customers
	WHERE Email LIKE '%@example.org'
)


