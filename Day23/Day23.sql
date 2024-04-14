
------------------------------------------------------------------------------------------------------

--DAY 23

------------------------------------------------------------------------------------------------------

CREATE TABLE CarData
(
	ID INT
,	Car VARCHAR(255)
,	Timerun DATETIME
,	Petrol DECIMAL(10,2)
);

INSERT INTO CarData VALUES 
(1,'BMW','2024-03-18 08:00:00', 50.00),
(2,'BMW','2024-03-18 08:30:00', 51.20),
(3,'BMW','2024-03-18 09:00:00', 52.80),
(4,'BMW','2024-03-18 09:30:00', 52.50),
(5,'BMW','2024-03-18 10:00:00', 53.75),
(6,'BMW','2024-03-18 10:30:00', 53.20);

SELECT * FROM CarData

SELECT ID, Car, Timerun, Petrol
FROM 
(
	SELECT ID, Car, Timerun, Petrol,
	LAG(Petrol,1,0) OVER(ORDER BY Timerun) AS Filling
	FROM CarData
) AS PetrolData
WHERE Filling < Petrol 


CREATE TABLE Sales
(
	Salesdate DATE,
	Revenue DECIMAL(10,2)
);


INSERT INTO Sales VALUES ('2024-03-01',1000.00),
('2024-03-02',1200.00),
('2024-03-03',1500.00),
('2024-03-04',1300.00),
('2024-03-05',1400.00)


SELECT * FROM Sales

SELECT SaleSDate,Revenue,
LEAD(Revenue,1,0) OVER (ORDER BY SalesDate) AS NextRevenue,
LEAD(Revenue,1,0) OVER (ORDER BY SalesDate) - Revenue AS Diff
FROM Sales


