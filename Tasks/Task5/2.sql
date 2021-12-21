--2. Показывать классного руководителя данного класса.
SELECT Classes.Title,Persons.FullName
FROM Classes
INNER JOIN Teachers
ON Classes.TeacherID = Teachers.TeacherID
INNER JOIN Persons
ON Persons.PersonID = Teachers.PersonID
WHERE Classes.Title = '9А';