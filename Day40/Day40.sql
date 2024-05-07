
---------------------------------------------------------------------------------------------------

--Day 40

---------------------------------------------------------------------------------------------------


--1 NF

SELECT * FROM [dbo].[Tablewithmulticol]

SELECT * FROM [dbo].Tablewithnulti

SELECT * FROM ModifiedTable


--2 NF

-- Unnormalized table (not in 1NF)
CREATE TABLE StudentCourses (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100)
);

-- Insert some sample data
INSERT INTO StudentCourses (student_id, student_name, course_id, course_name, instructor)
VALUES (1, 'Alice', 101, 'Mathematics', 'Dr. Smith'),
       (2, 'Bob', 102, 'Physics', 'Dr. Johnson'),
       (3, 'Charlie', 101, 'Mathematics', 'Dr. Smith'),
	   (4, 'David', 103, 'Chemistry', 'Dr. Lee'),
	   (5, 'Eve', 101, 'Mathematics', 'Dr. Smith'),
	   (6, 'Frank', 104, 'Biology', 'Dr. Brown'),
	   (7, 'Grace', 102, 'Physics', 'Dr. Johnson'),
	   (8, 'Hannah', 103, 'Chemistry', 'Dr. Lee');

SELECT * FROM StudentCourses


CREATE TABLE Stuentdataonly
(
	student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course_id INT foreign key references Courseonly(course_id)
)

CREATE TABLE Courseonly
(
	course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor VARCHAR(100)
)

INSERT INTO Courseonly VALUES (101,'',''),(102,'',''),(103,'',''),(104,'','')



-- 3 NF

CREATE TABLE OrderTABLE (
    order_id INT PRIMARY KEY,
	customer_id INT,
    customer_name VARCHAR(100),
	product_id INT,
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_price DECIMAL(10, 2)
);

-- Insert some sample data
INSERT INTO OrderTABLE (order_id, customer_id, customer_name, product_id, product_name, quantity, unit_price, total_price)
VALUES
    (1, 1, 'Alice', 1, 'Laptop', 2, 1200.00, 2400.00),
    (2, 2, 'Bob', 2, 'Smartphone', 1, 800.00, 800.00),
    (3, 3, 'Alice', 3, 'Tablet', 1, 500.00, 500.00);

SELECT * FROM OrderTABLE

CREATE TABLE OrderDetailsonly
(
	orderid,
	customerid FK,
	productid FK,
	quantity
)

CREATE TABLE Customeronly
(
	customerid PK,
	customername
)

CREATE TABLE Productdetails
(
	productid PK,
	productname,
	unitprice
)

SELECT quantity*unitprice As totalprice FROM 