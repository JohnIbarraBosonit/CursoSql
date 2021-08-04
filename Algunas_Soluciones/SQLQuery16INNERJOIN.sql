

SELECT *
FROM Sales.SalesPerson;

SELECT *
FROM Sales.SalesOrderHeader;

SELECT *
FROM HumanResources.Employee;

SELECT *
FROM Sales.Customer;

SELECT FirstName, LastName, BirthDate, JobTitle
FROM HumanResources.Employee emp
INNER JOIN Person.Person per
ON emp.BusinessEntityID = per.BusinessEntityID
ORDER BY FirstName;

SELECT cu.CustomerId, StoreID, cu.TerritoryID, CONCAT(FirstName, MiddleName, LastName) AS Nombre
FROM Sales.Customer cu
INNER JOIN Person.Person per
ON cu.PersonID = per.BusinessEntityID
INNER JOIN Sales.SalesOrderHeader sh
ON cu.CustomerID = sh.CustomerID
ORDER BY FirstName;

SELECT SalesOrderID, SalesQuota, Bonus, FirstName, MiddleName, LastName
FROM Sales.SalesOrderHeader so
INNER JOIN Sales.SalesPerson sp
ON sp.BusinessEntityID = so.SalesPersonID
INNER JOIN Person.Person p
ON sp.BusinessEntityID = p.BusinessEntityID

SELECT Color, Size, CatalogDescription
FROM Production.Product pp
INNER JOIN Production.ProductModel pm
ON pp.ProductModelID = pm.ProductModelID

SELECT *
FROM Person.Person;

SELECT producto.Name, person.FirstName
FROM Person.Person person
INNER JOIN Sales.Customer customer
ON person.BusinessEntityID = customer.PersonID
INNER JOIN Sales.SalesOrderHeader header
ON customer.CustomerID = header.CustomerID
INNER JOIN Sales.SalesOrderDetail detail
ON detail.SalesOrderID = header.SalesOrderID
INNER JOIN Production.Product producto
ON producto.ProductID = detail.ProductID

