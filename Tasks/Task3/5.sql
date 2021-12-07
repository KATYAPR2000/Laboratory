--Показать список фамилий (LastName), которые имеют несколько имен (FirstName) 
--из таблицы Person.Person, используя SELF JOIN
SELECT DISTINCT p1.LastName
	, p1.FirstName
FROM Person.Person AS p1
INNER JOIN Person.Person AS p2
ON p1.LastName = p2.LastName
AND p1.FirstName <> p2.FirstName;