--Показать количество товаров в корзине покупателя (Quantity) и поля Name, 
--ProductNumber, ShoppingCartID из таблиц Production.Product, Sales.ShoppingCartItem.
SELECT p.[Name]
	, p.ProductNumber
	, s.ShoppingCartID
FROM Production.Product AS p
INNER JOIN Sales.ShoppingCartItem AS s
ON p.ProductID = s.ProductID;