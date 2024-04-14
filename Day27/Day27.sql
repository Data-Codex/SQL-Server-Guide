----------------------------------------------------------------------------------------------------------

--DAY 27

----------------------------------------------------------------------------------------------------------

CREATE TABLE StudentTable
(
	ID INT IDENTITY(1,1) PRIMARY KEY
,	[Name] VARCHAR(255)
,	Score INT
);

INSERT INTO StudentTable ([Name], Score) VALUES
('Alice' , 90),('Bob' , 85),('Charlie' , 95),('David' , 85),('Eve' , 92),('Frank' , 88);

SELECT * FROM StudentTable

SELECT [Name], Score,
RANK() OVER(ORDER BY Score ASC) AS Score_Rank
FROM StudentTable


SELECT [Name], Score, ROW_NUMBER() OVER(ORDER BY Score asc) AS Row_Score FROM StudentTable
