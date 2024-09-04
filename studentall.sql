SELECT
StudentID AS studentID,
Reg_no AS regNo, 
FullName,
vw_Student_Master.DOB,
vw_Student_Master.Gender,
Prog_Desc AS programe,
sems_Name AS semester,
sess_Name AS [session],
PlaceOfBirth,
Nationality,
CNIC_BForm AS cnicBForm,
phone1 AS studentPhone,
email01 AS email,
FatherName,
IsZero
FROM
dbo.vw_Student_Master