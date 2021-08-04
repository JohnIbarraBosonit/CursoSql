SELECT SalesOrderID, SubTotal, ROUND(SubTotal, 2) AS redondeoA2
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, SubTotal, ROUND(SubTotal, 0) AS redondeoA2
FROM Sales.SalesOrderHeader;

SELECT SalesOrderID, SQRT(SalesOrderID) AS cuadrado
FROM Sales.SalesOrderHeader;

SELECT FLOOR(RAND()*10)+1 AS random;