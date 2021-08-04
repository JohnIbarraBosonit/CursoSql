SELECT ProductID
FROM Sales.SalesOrderDetail
ORDER BY ProductID

SELECT Name, ProductID
FROM Production.Product
WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail)
ORDER BY ProductID

SELECT Name, ProductID
FROM Production.Product
WHERE ProductID NOT IN (SELECT ProductID FROM Sales.SalesOrderDetail)
ORDER BY ProductID


