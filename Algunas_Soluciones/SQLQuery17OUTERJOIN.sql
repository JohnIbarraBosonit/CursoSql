SELECT p.ProductID, p.Name, o.SalesOrderID
FROM Production.Product p
LEFT OUTER JOIN Sales.SalesOrderDetail o
ON p.ProductID = o.ProductID

SELECT p.ProductID, p.Name, o.SalesOrderID
FROM Production.Product p
LEFT OUTER JOIN Sales.SalesOrderDetail o
ON p.ProductID = o.ProductID
WHERE o.SalesOrderID IS NULL
ORDER BY p.Name

SELECT sHeader.SalesOrderID,sHeader.SalesPersonID, sPerson.SalesYTD
FROM Sales.SalesPerson sPerson
LEFT OUTER JOIN Sales.SalesOrderHeader sHeader
ON sPerson.BusinessEntityID = sHeader.SalesOrderID

SELECT COUNT(*)
FROM Sales.SalesOrderHeader

SELECT cRate.CurrencyRateID, cRate.AverageRate, sHeader.SalesOrderID, sMethod.ShipBase
FROM Sales.SalesOrderHeader sHeader
LEFT OUTER JOIN Purchasing.ShipMethod sMethod
ON sHeader.ShipMethodID = sMethod.ShipMethodID
LEFT OUTER JOIN Sales.CurrencyRate cRate
ON sHeader.CurrencyRateID = cRate.CurrencyRateID

