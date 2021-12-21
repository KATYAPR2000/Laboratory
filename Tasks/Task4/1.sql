--1. Показать товар с самой большой разницей в цене и стандартной цене 
--(Таблица Production.Product). Вывести поля StandardCost, ListPrice, [Name].
SELECT StandardCost
	,ListPrice
	,ListPrice - StandardCost AS MaxDif
	,[Name]
FROM Production.Product
WHERE ListPrice - StandardCost =
	(
		SELECT MAX(ListPrice - StandardCost)
		FROM Production.Product
	);