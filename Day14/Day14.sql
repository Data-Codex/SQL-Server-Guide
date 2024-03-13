
-------------------------------------------------------------------------------------------------------------------------

--DAY 14 [GROUP BY and HAVING]

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 101, '2024-03-14', 100.00),
    (2, 102, '2024-03-15', 150.00),
    (3, 103, '2024-03-16', 200.00),
    (4, 104, '2024-03-17', 120.00),
    (5, 105, '2024-03-17', 180.00),
    (6, 101, '2024-03-18', 220.00),
    (7, 102, '2024-03-19', 130.00),
    (8, 103, '2024-03-20', 190.00),
    (9, 104, '2024-03-21', 210.00),
    (10, 105, '2024-03-22', 240.00);


--GROUP BY

--Retrieve the total amount of orders placed by each customer
SELECT CustomerID, SUM(TotalAmount) AS TotalOrderAmount
FROM Orders
GROUP BY CustomerID;

--HAVING

--Retrieve customers who have placed orders with a total amount greater than $200
SELECT CustomerID, SUM(TotalAmount) AS TotalOrderAmount
FROM Orders
GROUP BY CustomerID
HAVING SUM(TotalAmount) > 200;

--Retrieve customers who have placed more than 2 orders
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 2;

--Retrieve the average total amount of orders placed by each customer, only including customers who have placed more than 1 order
SELECT CustomerID, AVG(TotalAmount) AS AvgOrderAmount
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1;

--Retrieve the total number of orders placed on each date, only including dates where the total amount of orders is greater than $200
SELECT OrderDate, COUNT(OrderID) AS TotalOrders, SUM(TotalAmount) AS TotalOrderAmount
FROM Orders
GROUP BY OrderDate
HAVING SUM(TotalAmount) > 200;




