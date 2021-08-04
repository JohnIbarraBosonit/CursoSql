SELECT COUNT(CustomerID)
FROM Sales.Customer

SELECT SUM(OrderQty)
FROM Sales.SalesOrderDetail

SELECT MAX(UnitPrice)
FROM Sales.SalesOrderDetail

SELECT AVG(Freight)
FROM Sales.SalesOrderHeader

SELECT MAX(ListPrice), MIN(ListPrice), AVG(ListPrice)
FROM Production.Product