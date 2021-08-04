SELECT ProductID, Name
FROM Production.Product
WHERE LOWER(Name) LIKE 'chain%';

SELECT ProductID, Name
FROM Production.Product
WHERE LOWER(Name) LIKE '%helmet%';

SELECT ProductID, Name
FROM Production.Product
WHERE LOWER(Name) NOT LIKE '%helmet%';

SELECT BusinessEntityID, FirstName, MiddleName, LastName
FROM Person.Person
WHERE MiddleName = 'E' or MiddleName = 'B';

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'Ja%es';

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'Ja_es';



