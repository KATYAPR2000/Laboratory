--6. �������� ���� ProductID, [Name], ProductSubcategoryID 
--�� ������� Production.Product, ��� ����������������� ����� ������������ 
--(ProductSubcategoryID) ����� ��� 1, ��� 2, ��� 3, ��� 4, ��� 5.
--������������ �������� IN:
SELECT ProductID, [Name], ProductSubcategoryID
FROM Production.Product
WHERE ProductSubcategoryID IN (1, 2, 3, 4, 5);