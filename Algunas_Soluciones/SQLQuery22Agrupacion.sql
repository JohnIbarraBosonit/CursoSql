SELECT ProductID, COUNT(*) AS TProductos
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY TProductos

SELECT SalesOrderID, COUNT(SalesOrderDetailID) AS LineasDetalle
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID

SELECT ProductLine, COUNT(ProductID)
FROM Production.Product
GROUP BY ProductLine

SELECT YEAR(OrderDate) AS Anio, COUNT(CustomerID) AS Cliente
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY Anio