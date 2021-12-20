--Показать товары с максимальной ценой в каждой линейке продуктов (линейка продуктов
--определена) (Таблица Production.Product).
--Показать поля [Name],ListPrice и ProductLine.
SELECT [Name]
	,ListPrice
	,ProductLine
FROM Production.Product AS p1
JOIN 
	(
		SELECT MAX(ListPrice) AS MaxPrice
		FROM Production.Product
		WHERE ProductLine IS NOT NULL
		AND ListPrice > 0
		GROUP BY ProductLine
	) AS p2
ON p1.ListPrice = p2.MaxPrice; 