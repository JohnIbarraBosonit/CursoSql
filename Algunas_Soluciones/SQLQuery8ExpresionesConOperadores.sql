SELECT CONCAT(AddressLine1, City, PostalCode)
FROM Person.Address;

SELECT ProductID, ISNULL(Color, 'Sin Color') Color, Name
FROM Production.Product;

SELECT ProductID, CONCAT(Name,' : ', ISNULL(Color, ' ')) Color, Name
FROM Production.Product;

SELECT CONCAT(ProductID, ' : ', Name) IdNombre
FROM Production.Product;

