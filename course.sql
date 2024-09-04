select
s.StudentID,
a.FKSemsID as SemesterNo,
a.FKSems_Name as SemesterName,
c.CourseID,
c.CourseCode,
c.course_name AS course_name,
cast((c.CreditLAB + c.CreditTheory) as varchar(25)) as CreditTotal ,
cast(a.[Award_1] as varchar(25)) AS [QUIZ],
cast(a.[Award_2] as varchar(25)) AS [ATTENDANCE],
cast(a.[Award_3] as varchar(25)) AS [ASSIGNMENT],
cast((a.[Award_1] + a.[Award_2] + a.[Award_3]) as varchar(25)) AS [SESSIONAL],
cast(a.[Award_4] as varchar(25)) AS [MIDTERM],
cast(a.[Award_5] as varchar(25)) AS [TERMINAL],
cast((a.[Award_1] + a.[Award_2] + a.[Award_3] + a.[Award_4] + a.[Award_5]) as varchar(25)) AS [SEMESTER]
from dbo.tblMST_Student s
LEFT OUTER JOIN dbo.tblProg_Sems_Allocation  a ON a.FKStudentID = s.StudentID
LEFT OUTER JOIN tblMST_Courses c ON c.CourseID = a.FKcourseID
where s.StudentID = ?