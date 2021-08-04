SELECT SUBSTRING(AddressLine1, 1, 10)
FROM Person.Address;

SELECT SUBSTRING(AddressLine1, 10, 5)
FROM Person.Address;

SELECT UPPER(FirstName), UPPER(MiddleName), UPPER(LastName)
FROM Person.Person;

SELECT SUBSTRING(ProductNumber, CHARINDEX('-', ProductNumber)+1, LEN(ProductNumber))
FROM Production.Product ORDER BY ProductNumber DESC;