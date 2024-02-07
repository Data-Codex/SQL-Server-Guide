

--*********************************************************************************

--DAY 01 DATABASES

--*********************************************************************************

--Create a Database

CREATE DATABASE 'Your_Database_Name';

--Selecting Paarticular Database

USE 'Your_Database_Name';

--Alter Database name

ALTER DATABASE 'Old_name' MODIFY NAME = 'New_name';

--or

USE master;
EXEC sp_rename 'Old_name', 'New_name', 'DATABASE';

--DELETE a Database

DROP DATABASE 'Your_Database_Name';

--To fetch the name of database in  a server 

SELECT name FROM sys.databases;

--Comment to find list of tables in current Database 

USE 'Your_Database_Name';
SELECT *
FROM sys.tables;

--Create a schema

CREATE SCHEMA 'Schema_name'

--Comment to find list of Schemas in current Database

USE 'Your_Database_Name';
SELECT *
FROM information_schema.schemata;

--Alter Schema Name

ALTER SCHEMA 'New_Schema_name' TRANSFER 'Old_Schema_name.TableName';

--DELETE a Schema 

DROP SCHEMA 'SchemaName';

-- Create a USER and Grant permissions

-- Create a login
CREATE LOGIN YourLoginName WITH PASSWORD = 'YourPassword';
 
-- Use the desired database
USE YourDatabaseName;
 
-- Create a user associated with the login
CREATE USER YourUserName FOR LOGIN YourLoginName;
 
-- Grant permissions to the user
GRANT SELECT, INSERT, UPDATE, DELETE ON YourTableName TO YourUserName;

--Remove permissions to user
REVOKE SELECT, INSERT, UPDATE, DELETE ON YourTableName TO YourUserName;

--Comment to find list of USERS in current Database

USE 'Your_Database_Name';
SELECT *
FROM sys.database_principals
WHERE type_desc = 'SQL_USER';


