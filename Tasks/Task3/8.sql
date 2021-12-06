--Показать список BusinessEntityID, которые содержатся в таблице Person.Person, 
--но не содержатся в таблице HumanResources.Employee
SELECT BusinessEntityID
FROM Person.Person
INTERSECT
SELECT BusinessEntityID
FROM HumanResources.Employee;