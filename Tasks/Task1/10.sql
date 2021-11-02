--10. �������� ID �������, ����������� � ���������� (WorkOrderID), 
--ID ������� (ProductID), ���������� ������� (OrderQty), 
--���������� ��������� � ������� ������� (StockedQty) � ID ����������������� 
--������ (ScrapReasonID) �� ������� Production.WorkOrder. 
--�������� ������ ������������ ID ����������������� ������,
--� ��� �������� ������ 1 ������� ���� �������� �� NULL.
--���������� �������� ������� � �������� ���� � ��������� OtherScrapReasonID:
SELECT WorkOrderID
	,ProductID
	,OrderQty
	,StockedQty
	,ScrapReasonID
	,NULLIF(ScrapReasonID, 1) AS OtherScrapReasonID
FROM Production.WorkOrder