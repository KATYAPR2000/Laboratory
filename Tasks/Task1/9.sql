--9. Из таблицы Purchasing.PurchaseOrderDetail показать идентификационный номер
--товара (ProductID), цену за 1 единицу товара (UnitPrice) 
--и количество заказов данного товара (OrderQty).
--Отсортировать строки в алфавитном порядке в соответствии с полем UnitPrice:
SELECT ProductID, UnitPrice, OrderQty
FROM Purchasing.PurchaseOrderDetail
ORDER BY UnitPrice ASC;