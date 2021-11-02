--8. Показать поля ProductID, [Name] из таблицы Production.Product 
--с применением функции COALESCE(). Показать поле Measurement, так, чтобы,
--если значение в поле Style известно, то показать его, а иначе, 
--показать значение в поле Weight. Если и в поле Weight значение неизвестно, 
--то вывести значение 'UNKNOWN':
SELECT ProductID
	,[Name]
	,COALESCE(Style, CAST([Weight] AS VARCHAR(15)),'UNKNOWN') AS Measurement
FROM Production.Product;