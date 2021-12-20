--Показать товары, цена которых меньше средней цены в любом цвете 
--(Таблица Production.Product).
--Показать поля [Name],ListPrice и Color.
SELECT [Name]
	,ListPrice
	,Color
FROM Production.Product
WHERE ListPrice < ANY
	(
		SELECT AVG(ListPrice)
		FROM Production.Product
		GROUP BY Color
	)
AND Color IS NOT NULL 
AND ListPrice > 0
ORDER BY Color;
--(< 1401,95)