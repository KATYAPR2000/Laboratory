--8. �������� ���� ProductID, [Name] �� ������� Production.Product 
--� ����������� ������� COALESCE(). �������� ���� Measurement, ���, �����,
--���� �������� � ���� Style ��������, �� �������� ���, � �����, 
--�������� �������� � ���� Weight. ���� � � ���� Weight �������� ����������, 
--�� ������� �������� 'UNKNOWN':
SELECT ProductID
	,[Name]
	,COALESCE(Style, 'Weight','UNKNOWN') AS Measurement
FROM Production.Product;