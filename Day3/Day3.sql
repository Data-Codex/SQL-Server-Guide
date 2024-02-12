
--******************************************************************************************************

--DAY3

--******************************************************************************************************

--Create Tables

CREATE TABLE Customer
(
	Id INT PRIMARY KEY IDENTITY(1,1)
,	[Name] VARCHAR(255) 
,	Age INT 
,	Gender VARCHAR(10) NULL
)

CREATE TABLE Employee
(
	Id INT 
,	[Name] VARCHAR(255) 
,	Age INT 
,	Gender VARCHAR(10) NULL
)

--INSERT VALES

INSERT INTO Employee VALUES (1,'Ananth',20,'Male'),(2,'Hari',22,'Male'),(3,'Eliyas',21,'Male')

INSERT INTO Customer (Name,Age,Gender) VALUES ('Ananth',20,'Male'),('Hari',22,'Male'),('Eliyas',21,'Male')

INSERT INTO Customer
SELECT 
[Name],
Age,
Gender
FROM 
Employee


--Data types
/*
Exact numerics

bigint
numeric
bit
smallint
decimal
smallmoney
int
tinyint
money
*/


/*
Approximate numerics

float
real
*/

/*
Date and time

date
datetimeoffset
datetime2
smalldatetime
datetime
time
*/

/*
Character strings

char
varchar
text
*/

/*
Unicode character strings

nchar
nvarchar
ntext
*/

/*
Binary strings

binary
varbinary
image
*/


