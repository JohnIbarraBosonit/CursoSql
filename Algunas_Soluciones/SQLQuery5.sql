SELECT SUM(LineTotal) AS SumaLineas
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING SUM(LineTotal) > 1000

SELECT ProductModelID, COUNT(ProductModelID) AS Recuento, Color
FROM Production.Product
GROUP BY ProductModelID, Color
HAVING Color = 'Red' or Color = 'Blue'
ORDER BY Color

SELECT COUNT(DISTINCT(ProductID))
FROM Sales.SalesOrderDetail

SELECT BusinessEntityID, NationalIDNumber,BirthDate, HireDate
FROM HumanResources.Employee
WHERE JobTitle = 'Marketing Specialist'
ORDER BY HireDate

SELECT TerritoryID, COUNT(SalesOrderID)
FROM Sales.SalesOrderHeader
WHERE SubTotal > 50000
GROUP BY TerritoryID

select emp.BusinessEntityID, per.FirstName, per.LastName, sum(soh.SubTotal) as suma
from Sales.SalesPerson sp
join HumanResources.Employee emp
on sp.BusinessEntityID = emp.BusinessEntityID
join Sales.SalesOrderHeader soh
on sp.BusinessEntityID =soh.SalesPersonID
join Person.Person per
on emp.BusinessEntityID = per.BusinessEntityID
join HumanResources.EmployeeDepartmentHistory dh
on emp.BusinessEntityID = dh.BusinessEntityID
join HumanResources.Department dep
on dh.DepartmentID = dep.DepartmentID
group by emp.BusinessEntityID, per.FirstName, per.LastName
order by suma


