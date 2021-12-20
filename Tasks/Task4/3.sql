--Показать количество городов и штат (StateProvinceID), в котором находится 
--минимальное количество городов (Таблица Person.[Address]).
SELECT COUNT(City) AS CountCity
	,StateProvinceID
FROM Person.[Address] AS a
GROUP BY StateProvinceID
HAVING COUNT(City) = 
	(
		SELECT MIN(c.AllCity) AS MinCity
		FROM 
		(
			SELECT COUNT(a.City) AS AllCity
				,a.StateProvinceID
			FROM Person.[Address] AS a
			GROUP BY a.StateProvinceID
		) AS c
	);