--5. Вывести ProductID, где максимальная цена (StandardCost) больше 100 из таблицы 
--Production.ProductCostHistory. Добавить столбец с номером строки, 
--определяя его порядок в зависимости от максимальной цены:
SELECT ROW_NUMBER() OVER (ORDER BY MAX(StandardCost)) AS ID
	, ProductID
	, MAX(StandardCost) AS MaxCost
FROM Production.ProductCostHistory
GROUP BY ProductID
HAVING MAX(StandardCost) > 100;