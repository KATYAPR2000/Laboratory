--4. �������� ���� ProductID, BusinessEntityID, AverageLeadTime, StandardPrice,
--LastReceiptDate �� ������� Purchasing.ProductVendor, ��� �������, 
--������� ���� ���������� ��������� �������� ��������� (LastReceiptDate):
SELECT ProductID
	, BusinessEntityID
	, AverageLeadTime
	, StandardPrice
	, LastReceiptDate
FROM Purchasing.ProductVendor
WHERE LastReceiptDate IS NOT NULL;