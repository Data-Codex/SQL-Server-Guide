
----------------------------------------------------------------------------------------------------------------------------

--DAY 11 [TCL and DCL]

-----------------------------------------------------------------------------------------------------------------------------


--Create a Table

CREATE TABLE employee
(
	employeeid INT
,	employeename VARCHAR(255)
,	salary Decimal(10,2)
);

--Insert into Tables

INSERT INTO employee VALUES (1,'Ananth',55000),(2,'Hari',47000),(3,'Eliyas',65000)

--SELECT * FROM employee

--Create Transaction

BEGIN TRANSACTION
UPDATE employee SET salary = 57000.00 ;

--Rollback the transaction

ROLLBACK;

--Commit the Transaction

BEGIN TRANSACTION
UPDATE employee SET salary = 57000.00 WHERE employeeid = 2;

COMMIT;

--Set Insolation level for uncommitted data

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

--DCL 

--Grant access to users

GRANT SELECT ON employee TO UserName

--Revoke the access

REVOKE UPDATE ON employee TO UserName