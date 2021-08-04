SELECT SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate Between '20050701' AND '20050730'
AND TotalDue > 1000
ORDER BY TotalDue ASC;

SELECT SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE OrderDate Between '20050701' AND '20050703'
AND TotalDue > 1000
ORDER BY OrderDate ASC;

SELECT SalesPersonID, TerritoryID, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue > 1000
AND (SalesPersonID = 279
OR TerritoryID = 6)
ORDER BY TotalDue ASC;

SELECT SalesPersonID, TerritoryID, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue > 1000
AND (SalesPersonID = 279
OR TerritoryID IN (4, 6))
ORDER BY TotalDue ASC;
