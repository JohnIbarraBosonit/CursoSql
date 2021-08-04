SELECT * 
FROM Production.Product
WHERE Color IS NULL;

--OPCION 1
SELECT ProductID, Name, Color
FROM Production.Product
WHERE LOWER(Color) != 'blue';

--OPCION 2
SELECT ProductID, Name, Color
FROM Production.Product
WHERE LOWER(Color)NOT LIKE 'blue';

SELECT ProductID, Name, Style, Size, Color
FROM Production.Product
WHERE Style IS NOT NULL 
OR Size IS NOT NULL
OR Color IS NOT NULL;