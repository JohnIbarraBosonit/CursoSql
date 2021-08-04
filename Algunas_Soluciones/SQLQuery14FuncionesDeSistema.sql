SELECT BusinessEntityID,
	CASE
		WHEN BusinessEntityID%2 = 0 THEN 'PAR'
		WHEN BusinessEntityID%2 != 0 THEN 'IMPAR'
	END AS paridad
FROM HumanResources.Employee
ORDER BY paridad DESC;

SELECT OrderQty,
	CASE
		WHEN OrderQty < 10 THEN 'Under 10' 
		WHEN OrderQty >= 10  AND OrderQty <= 19 THEN '10-19'
		WHEN OrderQty >= 20 AND OrderQty <= 29 THEN '20-29'
		WHEN OrderQty >= 30  AND OrderQty <= 49 THEN '30-49'
		WHEN OrderQty >= 40 THEN '40 y mas' 
		END AS clases
FROM Sales.SalesOrderDetail
ORDER BY OrderQty DESC;

SELECT Title, COALESCE(FirstName, 'First name error') AS FirstName,  COALESCE(MiddleName, 'Middlename error') AS Middlename,  COALESCE(LastName,'Lastname error') AS Lastname, Suffix 
FROM Person.Person;

SELECT 
SERVERPROPERTY('MachineName') AS ComputerName,
SERVERPROPERTY('EditionID') AS Edition,
SERVERPROPERTY('InstanceName') AS InstanceName;
