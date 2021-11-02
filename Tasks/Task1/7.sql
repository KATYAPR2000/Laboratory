--7. Показать поля PurchaseOrderID, RevisionNumber,[Status], ShipDate 
--из таблицы Purchasing.PurchaseOrderHeader. 
--Если текущее состояние заказа ([Status]) "Ожидание" (= 1) 
--и ориентировочная дата отгрузки от поставщика (ShipDate) не известна,
--то заменить значение поля ShipDate на текущую дату.
--Названия полей оставить без изменений:
SELECT PurchaseOrderID
	, RevisionNumber
	, [Status]
	, ISNULL(ShipDate,GETDATE())
FROM Purchasing.PurchaseOrderHeader
WHERE [Status] IN (1);
