
-------------------------------------------------------------------------------------------------------

--DAY 32

-------------------------------------------------------------------------------------------------------

CREATE TABLE dbo.DDLAuditlog
(
	AuditlogID INT IDENTITY(1,1) PRIMARY KEY,
	ObjectName VARCHAR(255),
	EventDDL VARCHAR(255),
	EventXML XML,
	EventTime DATETIME DEFAULT GETDATE()
);

CREATE TRIGGER AuditTableChanges
ON DATABASE
FOR ALTER_TABLE
AS
BEGIN
	DECLARE @EventData XML;
	SET @EventData = EVENTDATA();

	INSERT INTO DDLAuditlog (ObjectName, EventDDL, EventXML)
	VALUES(@EventData.value('(/EVENT_INSTANCE/ObjectName)[1]', 'Varchar(255)'),
	@EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'Varchar(255)'),
	@EventData);
END;

SELECT * FROM [dbo].[Employees]


ALTER TABLE [Employees] DROP COLUMN FirstName

SELECT * FROM DDLAuditlog

CREATE TRIGGER PreventDropTable
ON DATABASE
FOR DROP_TABLE
AS
BEGIN
	PRINT 'Dropping Table is not allowed'
	ROLLBACK;
END;

DROP TABLE [dbo].[Employees]



CREATE TRIGGER EnforeNamingforTables
ON DATABASE
FOR CREATE_TABLE
AS
BEGIN
	DECLARE @TableName VARCHAR(255);
	SET @TableName = (SELECT EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(255)'));

	IF @TableName NOT LIKE 'tbl_%'
	BEGIN
		PRINT 'Table must start with tbl'
		ROLLBACK;
	END;
END;