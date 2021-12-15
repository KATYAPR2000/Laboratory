--3. Показывать занятость данного учителя.
SELECT Classes.Title
	,Timetable.DateOfWeek
	,Timetable.LessonNumber
	,Subjects.Title
	,Persons.FullName
FROM Timetable 
INNER JOIN Subjects
ON Timetable.SubjectID = Subjects.SubjectID
INNER JOIN Classes
ON Classes.ClassID = Timetable.ClassID
INNER JOIN Teachers
ON Teachers.SubjectID = Subjects.SubjectID
LEFT OUTER JOIN Persons
ON Persons.PersonID = Teachers.PersonID
WHERE Teachers.TeacherID = 4;