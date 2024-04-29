
----------------------------------------------------------------------------------------------------

--DAY 34

----------------------------------------------------------------------------------------------------

CREATE TABLE tbl_ProductDetails
(
	ID INT,
	ProductName VARCHAR(255),
	ProductCategory VARCHAR(255)
);


CREATE PROCEDURE sp_InsertProductDetails
(@ID INT, @Name VARCHAR(255), @Category VARCHAR(255))
AS
BEGIN
	INSERT INTO tbl_ProductDetails VALUES(@ID, @Name, @Category)
END;

sp_InsertProductDetails 2,'Dell','Laptop'

SELECT * FROM tbl_ProductDetails

CREATE PROCEDURE sp_UpdateProductDetails
(@Name VARCHAR(255), @Category VARCHAR(255), @ID INT )
AS
BEGIN
	UPDATE tbl_ProductDetails SET ProductName = CASE WHEN @Name IS NOT NULL THEN @Name ELSE ProductName END,
	ProductCategory = CASE WHEN @Category IS NOT NULL THEN @Category ELSE ProductCategory END
	WHERE ID = @ID
END;

EXEC sp_UpdateProductDetails @Name = 'Lenova', @Category = NULL, @ID = 2

CREATE PROCEDURE sp_SelectProduct
(@ID INT)
AS
BEGIN
	SELECT * FROM tbl_ProductDetails WHERE ID = @ID
END;

EXEC sp_SelectProduct 1


CREATE PROCEDURE sp_DeleteProduct
(@ID INT)
AS
BEGIN
	DELETE FROM tbl_ProductDetails  WHERE ID = @ID
END;

sp_DeleteProduct 2