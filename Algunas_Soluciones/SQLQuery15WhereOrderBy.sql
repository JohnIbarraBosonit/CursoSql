SELECT SalesOrderID, OrderDate
FROM Sales.SalesOrderHeader
WHERE DATEPART(year, OrderDate) = 2005;

SELECT SalesOrderID, OrderDate
FROM Sales.SalesOrderHeader
ORDER BY DATEPART(month, OrderDate) ASC, DATEPART(year, OrderDate) ASC;

SELECT PersonType, NameStyle, FirstName, LastName
FROM Person.Person
ORDER BY
	CASE
		WHEN PersonType IN ('IN', 'SP', 'SC') THEN
		LastName
		WHEN PersonType NOT IN ('IN', 'SP', 'SC') THEN
		FirstName
	END;

