
-------------------------------------------------------------------------------------------------------------------------

--DAY 15 [TOP and FETCH NEXT]

-------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    UnitPrice DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Category, UnitPrice)
VALUES
    (1, 'Laptop', 'Electronics', 1000.00),
    (2, 'Smartphone', 'Electronics', 700.00),
    (3, 'T-shirt', 'Clothing', 25.00),
    (4, 'Jeans', 'Clothing', 50.00),
    (5, 'Book', 'Books', 20.00),
    (6, 'Headphones', 'Electronics', 50.00),
    (7, 'Socks', 'Clothing', 10.00),
    (8, 'Watch', 'Accessories', 150.00),
    (9, 'Sunglasses', 'Accessories', 80.00),
    (10, 'Backpack', 'Accessories', 40.00);


--TOP

--Retrieve the top 5 products by unit price
SELECT TOP 5 * FROM Products ORDER BY UnitPrice DESC;

--Retrieve the top 3 cheapest products by unit price
SELECT TOP 3 * FROM Products ORDER BY UnitPrice;

--Retrieve the top 2 products from the 'Electronics' category
SELECT TOP 2 * FROM Products WHERE Category = 'Electronics';

--FETCH NEXT

--Retrieve the next 3 products after skipping the top 2 products by unit price
SELECT * FROM Products ORDER BY UnitPrice DESC OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY;

--Retrieve the next 5 products after skipping the top 3 products alphabetically by product name
SELECT * FROM Products ORDER BY ProductName OFFSET 3 ROWS FETCH NEXT 5 ROWS ONLY;

