--Показать список ID работников (BusinessEntityID), в котором указано имеет 
--работник резюме или нет, из таблиц HumanResources.Employee, 
--HumanResources.JobCandidate, используя LEFT OUTER JOIN
SELECT e.BusinessEntityID
	, j.[Resume]
FROM HumanResources.Employee AS e
LEFT OUTER JOIN HumanResources.JobCandidate AS j
ON e.BusinessEntityID = j.BusinessEntityID
WHERE j.[Resume] IS NOT NULL;