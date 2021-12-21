--5. Показывать список учеников, учащихся без троек.
SELECT Persons.FullName
FROM Grades
INNER JOIN Pupils
ON Pupils.PupilID = Grades.PupilID
INNER JOIN Subjects
ON Subjects.SubjectID = Grades.SubjectID
INNER JOIN Persons
ON Persons.PersonID = Pupils.PersonID
WHERE Grades.AnnualEstimate <> 3
GROUP BY Persons.FullName
HAVING COUNT(*)=5;