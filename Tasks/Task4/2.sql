--Показать количество сотрудников и должность (JobTitle), на которой работает 
--максимальное количество сотрудников 
--(Представление [HumanResources].[vEmployeeDepartment]).
--должности
SELECT JobTitle
	,COUNT(LoginID) AS CountEmployee
FROM HumanResources.Employee AS e
GROUP BY JobTitle
HAVING COUNT(LoginID) = 
	(
		SELECT MAX(s.AllEmployee) AS MaxEmployee
		FROM 
			(
				SELECT COUNT(e.LoginID) AS AllEmployee
					,e.JobTitle
				FROM HumanResources.Employee AS e
				GROUP BY e.JobTitle
			) AS s
	);