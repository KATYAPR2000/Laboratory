-- 1. Найти количество разных типов кредитных карт из таблицы Sales.CreditCard:
SELECT COUNT(DISTINCT CardType) AS CountCardType
FROM Sales.CreditCard;