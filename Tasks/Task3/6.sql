--Показать список продуктов из таблицы Production.ProductInventory, содержащихся 
--на нескольких складах (LocationID), ProductID которых начинается с 3, 
--используя SELF JOIN.
SELECT DISTINCT i1.ProductID
	, i2.LocationID
FROM Production.ProductInventory AS i1
INNER JOIN Production.ProductInventory AS i2
ON i1.ProductID = i2.ProductID
WHERE i1.ProductID >= 3 
AND i2.ProductID >= 3;