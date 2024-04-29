
-----------------------------------------------------------------------------------------------------

--DAY 33

-----------------------------------------------------------------------------------------------------

CREATE TABLE Sales (
    Product varchar(50),
    Month varchar(10),
    Revenue decimal(10,2)
);

INSERT INTO Sales (Product, Month, Revenue)
VALUES ('Product_A', 'January', 1000),
       ('Product_A', 'February', 1500),
       ('Product_A', 'March', 2000),
       ('Product_B', 'January', 1200),
       ('Product_B', 'February', 1800),
       ('Product_B', 'March', 2200),
	   ('Product_C', 'January', 1700),
       ('Product_C', 'February', 2500),
       ('Product_C', 'March', 2300), 
       ('Product_A', 'April', 1800),
       ('Product_A', 'May', 2100),
       ('Product_A', 'June', 1900),
       ('Product_B', 'April', 1500),
       ('Product_B', 'May', 1700),
       ('Product_B', 'June', 2000),
       ('Product_C', 'April', 1200),
       ('Product_C', 'May', 1400),
       ('Product_C', 'June', 1600),
       ('Product_A', 'July', 2200),
       ('Product_A', 'August', 2500),
       ('Product_A', 'September', 2300),
       ('Product_B', 'July', 1900),
       ('Product_B', 'August', 2200),
       ('Product_B', 'September', 2400),
       ('Product_C', 'July', 1600),
       ('Product_C', 'August', 1800),
       ('Product_C', 'September', 2000),
	   ('Product_A', 'October', 2000),
       ('Product_A', 'November', 2300),
       ('Product_A', 'December', 2700),
       ('Product_B', 'October', 2100),
       ('Product_B', 'November', 2400),
       ('Product_B', 'December', 2600),
       ('Product_C', 'October', 2200),
       ('Product_C', 'November', 2500),
       ('Product_C', 'December', 2800);

SELECT * FROM Sales

SELECT * FROM
(
SELECT Product, Month, Revenue FROM Sales
) AS SourceTable
PIVOT
(
	SUM(Revenue)
	FOR Month IN (January,February, March, April, June, July, August, September, October, November, December)
) AS PivotedTable


CREATE TABLE SalesPivot (
    Product varchar(50),
    January decimal(10,2),
    February decimal(10,2),
    March decimal(10,2)
);


INSERT INTO SalesPivot (Product, January, February, March)
VALUES 
    ('Product_A', 1000, 1500, 2000),
    ('Product_B', 1200, 1800, 2200),
    ('Product_C', 900, 1100, 1300),
    ('Product_D', 950, 1050, 1250),
    ('Product_E', 1300, 1700, 1500),
    ('Product_F', 800, 900, 1000),
    ('Product_G', 1600, 1800, 2000),
    ('Product_H', 2000, 2200, 2400),
    ('Product_I', 1100, 1300, 1500),
    ('Product_J', 1350, 1450, 1550),
    ('Product_K', 1750, 1850, 1950),
    ('Product_L', 2100, 2300, 2500),
    ('Product_M', 800, 1000, 1200),
    ('Product_N', 950, 1150, 1350),
    ('Product_O', 1200, 1400, 1600),
    ('Product_P', 1700, 1900, 2100),
    ('Product_Q', 1850, 2050, 2250),
    ('Product_R', 2200, 2400, 2600),
    ('Product_S', 1000, 1200, 1400),
    ('Product_T', 1100, 1300, 1500),
    ('Product_U', 1400, 1600, 1800),
    ('Product_V', 1650, 1850, 2050),
    ('Product_W', 1900, 2100, 2300),
    ('Product_X', 2100, 2300, 2500),
    ('Product_Y', 1050, 1250, 1450),
    ('Product_Z', 950, 1150, 1350);

SELECT * FROM SalesPivot


SELECT * FROM
(
SELECT Product,January,February,March FROM SalesPivot
) AS SourceTable
UNPIVOT
(
	Revenue FOR Month IN (January,February,March)
)AS UnpivotedTable

