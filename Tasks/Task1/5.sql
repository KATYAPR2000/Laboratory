--5. �������� ����������������� ����� � ������� ����������������� ������
--(ScrapReasonID � [Name]) �� ������� Production.ScrapReason,
--��� ������� ����������������� ������ ������� �� ���������� ('drill'):
SELECT ScrapReasonID
	,[Name]
FROM Production.ScrapReason
WHERE [Name] IN ('drill');