--2. Найти количество работников мужского пола, которые младше 50 лет 
--из таблицы HumanResources.Employee (из выборки исключить пустые поля):
SELECT COUNT(BusinessEntityID)
FROM HumanResources.Employee
WHERE Gender = 'M' AND DATEDIFF(YEAR, BirthDate,GETDATE()) < 50;