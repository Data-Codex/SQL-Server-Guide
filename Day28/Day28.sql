
------------------------------------------------------------------------------------

--DAY 28

------------------------------------------------------------------------------------

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Score INT
);

INSERT INTO Students (StudentID, Name, Score) VALUES (1, 'John', 85);
INSERT INTO Students (StudentID, Name, Score) VALUES (2, 'Alice', 92);
INSERT INTO Students (StudentID, Name, Score) VALUES (3, 'Bob', 85);
INSERT INTO Students (StudentID, Name, Score) VALUES (4, 'Emily', 78);
INSERT INTO Students (StudentID, Name, Score) VALUES (5, 'Michael', 92);
INSERT INTO Students (StudentID, Name, Score) VALUES (6, 'Sarah', 88);
INSERT INTO Students (StudentID, Name, Score) VALUES (7, 'David', 75);
INSERT INTO Students (StudentID, Name, Score) VALUES (8, 'Emma', 90);
INSERT INTO Students (StudentID, Name, Score) VALUES (9, 'James', 82);
INSERT INTO Students (StudentID, Name, Score) VALUES (10, 'Olivia', 95);
INSERT INTO Students (StudentID, Name, Score) VALUES (11, 'Daniel', 85);
INSERT INTO Students (StudentID, Name, Score) VALUES (12, 'Sophia', 79);
INSERT INTO Students (StudentID, Name, Score) VALUES (13, 'William', 88);
INSERT INTO Students (StudentID, Name, Score) VALUES (14, 'Ava', 91);
INSERT INTO Students (StudentID, Name, Score) VALUES (15, 'Benjamin', 84);


SELECT * FROM Students

SELECT Name,Score,
RANK() OVER(ORDER BY Score DESC) AS Scorevalue FROM Students

SELECT Name,Score,
DENSE_RANK() OVER(ORDER BY Score DESC) AS Scorevalue FROM Students


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (1, 101, '2024-03-01', 150.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (2, 102, '2024-03-02', 250.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (3, 103, '2024-03-03', 300.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (4, 104, '2024-03-04', 100.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (5, 105, '2024-03-05', 400.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (6, 106, '2024-03-06', 200.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (7, 107, '2024-03-07', 180.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (8, 108, '2024-03-08', 220.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (9, 109, '2024-03-09', 350.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (10, 110, '2024-03-10', 120.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (11, 111, '2024-03-11', 280.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (12, 112, '2024-03-12', 190.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (13, 113, '2024-03-13', 310.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (14, 114, '2024-03-14', 240.00);
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES (15, 115, '2024-03-15', 170.00);


SELECT * FROM Orders

SELECT OrderID,CustomerID,OrderDate,TotalAmount,
NTILE(5) OVER(ORDER BY TotalAmount DESC) FROM Orders
