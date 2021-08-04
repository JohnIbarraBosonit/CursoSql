SELECT BusinessEntityID, NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle = 'Research and Development Engineer';

Select FirstName, MiddleName, LastName, BusinessEntityID
FROM Person.Person
WHERE MiddleName = 'J';

SELECT *
FROM Production.ProductCostHistory
WHERE ModifiedDate = '20070617 00:00:00.000';

SELECT BusinessEntityID, NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle != 'Research and Development Engineer'
ORDER BY JobTitle DESC;

SELECT *
FROM Person.Person
WHERE ModifiedDate > '20001229 00:00:00.000'
ORDER BY ModifiedDate ASC;

SELECT *
FROM Person.Person
WHERE ModifiedDate != '20001229 00:00:00.000'
ORDER BY ModifiedDate ASC;

SELECT *
FROM Person.Person
WHERE ModifiedDate = '20001229 00:00:00.000'
ORDER BY ModifiedDate ASC;
