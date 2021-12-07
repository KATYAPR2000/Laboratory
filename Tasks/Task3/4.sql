--Показать список имен (FirstName), которые имеют несколько фамилий (LastName) 
--из таблицы Person.Person, используя SELF JOIN.
SELECT DISTINCT p1.FirstName
	, p1.LastName
FROM Person.Person AS p1
INNER JOIN Person.Person AS p2
ON p1.FirstName = p2.FirstName
AND p1.LastName <> p2.LastName;