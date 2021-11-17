--3. Показать максимальный вес для товара в каждой линейке продуктов ProductLine 
--из таблицы Production.Product (из выборки исключить пустые поля):
SELECT MAX([Weight]) AS MaxWeight
	, ProductLine
FROM Production.Product
WHERE [Weight] IS NOT NULL AND ProductLine IS NOT NULL
GROUP BY ProductLine;