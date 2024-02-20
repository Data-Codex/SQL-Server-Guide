
-------------------------------------------------------------------------------------------------------

--DAY 7

---------------------------------------------------------------------------------------------------------

--CREATE TABLE 

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2)
);

--INSERT RECORDS

INSERT INTO Sales (SaleID, ProductName, Quantity, UnitPrice, TotalAmount)
VALUES (1, 'Laptop', 3, 800.00, 2400.00),
       (2, 'Phone', 2, 500.00, 1000.00),
       (3, 'Tablet', 5, 300.00, 1500.00),
	   (4, 'Headphones', 4, 50.00, 200.00),
       (5, 'Smartwatch', 1, 150.00, 150.00),
       (6, 'Desktop', 2, 1000.00, 2000.00),
       (7, 'Printer', 3, 300.00, 900.00),
       (8, 'Keyboard', 2, 80.00, 160.00),
       (9, 'Monitor', 1, 400.00, 400.00),
       (10, 'Speaker', 2, 120.00, 240.00),
       (11, 'Mouse', 3, 20.00, 60.00),
       (12, 'External Hard Drive', 1, 200.00, 200.00),
       (13, 'Router', 2, 150.00, 300.00),
       (14, 'Software', 1, 100.00, 100.00),
       (15, 'Webcam', 1, 80.00, 80.00);


--Adding 100 with each product as GST

SELECT SaleID, ProductName, TotalAmount, TotalAmount + 100 AS TotalAmountWithGST
FROM Sales;


--Subtracting 100 with each product as Reward

SELECT SaleID, ProductName, TotalAmount, TotalAmount - 100 AS TotalAmountWithReward
FROM Sales;


--Multiplication [calculating total price quantity * unit price]

SELECT SaleID, ProductName, (Quantity * UnitPrice) AS TotalAmount  
FROM Sales;

--DIVISION (Discount for 20%)

SELECT SaleID, ProductName, ((TotalAmount / 100) * 20) AS Discounted20  
FROM Sales;

--Equal

SELECT SaleID, ProductName, Quantity, TotalAmount
FROM Sales
WHERE Quantity = 3;

--Not Equal

SELECT SaleID, ProductName, Quantity, UnitPrice, TotalAmount
FROM Sales
WHERE UnitPrice != 500.00;

--Less Than

SELECT SaleID, ProductName, Quantity, UnitPrice, TotalAmount
FROM Sales
WHERE UnitPrice < 400.00;

--Greater than

SELECT SaleID, ProductName, Quantity, TotalAmount
FROM Sales
WHERE TotalAmount > 1500.00;

--Greater than or equal

SELECT SaleID, ProductName, Quantity, TotalAmount
FROM Sales
WHERE Quantity >= 5;

--Less than or equal

SELECT SaleID, ProductName, Quantity, TotalAmount
FROM Sales
WHERE TotalAmount <= 1200.00;
