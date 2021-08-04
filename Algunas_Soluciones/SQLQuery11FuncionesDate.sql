SELECT SalesOrderID, OrderDate, ShipDate
FROM Sales.SalesOrderHeader;

SELECT DATEDIFF(day, Orderdate, ShipDate) AS Diferencia
FROM Sales.SalesOrderHeader;

SELECT CAST(OrderDate AS DATE) AS FechaSinHora
FROM Sales.SalesOrderHeader;

SELECT OrderDate, DATEADD(month, 6, OrderDate) AS NuevaFecha
FROM Sales.SalesOrderHeader;

SELECT OrderDate, CONVERT(varchar, OrderDate, 113) AS NuevaFecha
FROM Sales.SalesOrderHeader;