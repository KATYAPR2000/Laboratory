--3. �������� ���� TransactionID, ProductID, ReferenceOrderID, TransactionType, 
--Quantity, ActualCost �� ������� Production.TransactionHistory, 
--��� �������� ���� Quantity ������ 4,
--� �������� ���� ActualCost ��������� � ��������� �� 100 �� 150:
SELECT TransactionID, ProductID, ReferenceOrderID, TransactionType, 
Quantity, ActualCost
FROM Production.TransactionHistory
WHERE Quantity > 4 AND ActualCost BETWEEN 100 AND 150;