USE AdventureWorks2008R2
GO

IF OBJECT_ID('Production.ProductColor') IS NOT NULL BEGIN DROP TABLE
Production.ProductColor;
END

CREATE table Production.ProductColor
(Color nVarchar(15) NOT NULL PRIMARY KEY)
GO

INSERT INTO Production.ProductColor
SELECT DISTINCT Color
FROM Production.Product
WHERE Color IS NOT NULL AND Color <> 'Silver'

INSERT INTO Production.ProductColor
VALUES('Green'),('Orange'),('Purple');