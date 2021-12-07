--Показать список товаров (поле Name), в котором указан, есть ли у товара 
--отслеживаемая цена (поле ListPrice из Production.ProductListPriceHistory) или нет, 
--из таблицы Production.ProductListPriceHistory, Production.Product, 
--используя RIGHT OUTER JOIN.
SELECT p.[Name]
	, h.ListPrice
FROM Production.ProductListPriceHistory AS h
RIGHT OUTER JOIN Production.Product AS p
ON h.ProductID = p.ProductID
WHERE h.ListPrice IS NOT NULL;