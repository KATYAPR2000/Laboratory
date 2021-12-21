--1. Показывать список учащихся данного класса.
SELECT Classes.Title, Persons.FullName 
FROM Classes 
INNER JOIN Pupils 
ON Pupils.ClassID = Classes.ClassID
INNER JOIN Persons
ON Persons.PersonID = Pupils.PersonID
WHERE Classes.Title = '10';