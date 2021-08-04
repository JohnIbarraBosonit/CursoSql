SELECT Name, ProductID
FROM Production.Product
WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail)
ORDER BY ProductID

SELECT Name, ProductID
FROM Production.Product
WHERE ProductID NOT IN (SELECT ProductID FROM Sales.SalesOrderDetail)
ORDER BY ProductID

SELECT DISTINCT(Color) FROM Production.Product
WHERE Color NOT IN (SELECT Color FROM Production.ProductColor)

SELECT 'Person' AS BusinessEntityID, ModifiedDate
FROM Person.Person
UNION
SELECT 'HireDate' AS BusinessEntityID, HireDate
FROM HumanResources.Employee

