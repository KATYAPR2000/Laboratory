--7. �������� ���� PurchaseOrderID, RevisionNumber,[Status], ShipDate 
--�� ������� Purchasing.PurchaseOrderHeader. 
--���� ������� ��������� ������ ([Status]) "��������" (= 1) 
--� ��������������� ���� �������� �� ���������� (ShipDate) �� ��������,
--�� �������� �������� ���� ShipDate �� ������� ����.
--�������� ����� �������� ��� ���������:
SELECT PurchaseOrderID
	, RevisionNumber
	, [Status]
	, ISNULL(ShipDate,GETDATE())
FROM Purchasing.PurchaseOrderHeader
WHERE [Status] IN (1);
