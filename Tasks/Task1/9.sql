--9. �� ������� Purchasing.PurchaseOrderDetail �������� ����������������� �����
--������ (ProductID), ���� �� 1 ������� ������ (UnitPrice) 
--� ���������� ������� ������� ������ (OrderQty).
--������������� ������ � ���������� ������� � ������������ � ����� UnitPrice:
SELECT ProductID, UnitPrice, OrderQty
FROM Purchasing.PurchaseOrderDetail
ORDER BY UnitPrice ASC;