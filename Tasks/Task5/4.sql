--4. Показывать успеваемость данного ученика.
SELECT Persons.FullName
	,Subjects.Title
	,Grades.AnnualEstimate
FROM Grades
INNER JOIN Pupils
ON Pupils.PupilID = Grades.PupilID
INNER JOIN Subjects
ON Subjects.SubjectID = Grades.SubjectID
INNER JOIN Persons
ON Persons.PersonID = Pupils.PersonID
WHERE Persons.PersonID = 2;