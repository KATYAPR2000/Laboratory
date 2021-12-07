--Показать комбинированный список таблиц Production.Product по полям Name, 
--WeightUnitMeasureCode, Production.UnitMeasure по полям Name, UnitMeasureCode, 
--используя UNION
SELECT [Name]	
	, WeightUnitMeasureCode
FROM Production.Product
UNION
SELECT [Name]
	, UnitMeasureCode
FROM Production.UnitMeasure;