--8. �������� ���� ProductID, [Name] �� ������� Production.Product 
--� ����������� ������� COALESCE(). �������� ���� Measurement, ���, �����,
--���� �������� � ���� Style ��������, �� �������� ���, � �����, 
--�������� �������� � ���� Weight. ���� � � ���� Weight �������� ����������, 
--�� ������� �������� 'UNKNOWN':
SELECT ProductID
	,[Name]
	,COALESCE(Style, CAST([Weight] AS VARCHAR(15)),'UNKNOWN') AS Measurement
FROM Production.Product;