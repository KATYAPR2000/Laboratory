--4. Найти пол из таблицы HumanResources.Employee, где количество людей, 
--принятых до 2008 года, имеют суммарное количество часов отдыха равное 82, 
--не учитывать пустые значения:
SELECT Gender
FROM HumanResources.Employee
WHERE Gender IS NOT NULL AND HireDate < '2008-01-01' AND HireDate IS NOT NULL
GROUP BY Gender
HAVING SUM(VacationHours) = 82;