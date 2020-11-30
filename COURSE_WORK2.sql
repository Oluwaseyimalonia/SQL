
-- CREATE A DATABASE CALL SCHOOL2
CREATE DATABASE Schoolv2

--drop database  School2


--CREATE TABLES STTUDENTS 2 AND COURSEVS

CREATE TABLE Studentsv2( Students_id INT PRIMARY KEY IDENTITY(1,1)
                        ,FirstName VARCHAR(50) NULL
						,Surname VARCHAR(50)   NULL
						,MatricNo INT UNIQUE NOT NULL
						,YearOfGraduation INT NULL


);


CREATE TABLE CoursesV2(
                   Courses_id INT PRIMARY KEY IDENTITY(1,1)
				   ,Students_id INT FOREIGN KEY REFERENCES Students(Students_id)
				   ,Courses VARCHAR(50) UNIQUE NOT NULL
				   ,CourseCode VARCHAR(50) UNIQUE NOT NULL


);


-- INSERT RECORDS INTO Studentsv2 TABLES

SET IDENTITY_INSERT CoursesV2 ON


INSERT INTO			CoursesV2( Courses_id
				   ,Students_id
				   ,Courses 
				   ,CourseCode 


)

VALUES( 1
         , 1
		 , 'MTH'
		 , 'E101'
		 
)
SET IDENTITY_INSERT CoursesV2 OFF

-- INSERT RECORDS INTO CoursesV2 TABLES
SET IDENTITY_INSERT CoursesV2 ON

INSERT INTO  CoursesV2( Students_id
						  ,FirstName
						  ,Surname
						  ,MatricNo
						  , YearOfGraduation


)

VALUES( 1
         , 'Oluwaseyi'
		 , 'Ajiboye'
		 , 092508
		 ,2025
);
SET IDENTITY_INSERT CoursesV2 OFF


-- SELECT FROM THE TWO TABLES 
USE School 

Go 
SELECT ^
FROM 
SELECT TOP 4 * FROM [dbo].[CoursesV2]


SELECT TOP 4 * FROM [dbo].[Studentsv2]


 
-- DROP DATABASE AND TABLES
DROP DATABASE Schoolv2

DROP TABLE [dbo].[CoursesV2]

DROP TABLE 
[dbo].[Studentsv2]



--WRIRING  SUBQUERY(ANY AND ALL)(NOTE- Subquery can be use to select a column from another table through thr foreigh key)

SELECT * 
FROM Students
WHERE Students_id = ANY(SELECT Students_id FROM Students WHERE Students_id=6)  

SELECT * 
FROM Students
WHERE Students_id = ALL(SELECT Students_id FROM Students WHERE Students_id=6)  


-- COPY A TABLE INTO ANOTHER TABLE(SELECT INTO A NEWTABLE FROM THE OLD TABLE)
SELECT * INTO Students2 
FROM Students


SELECT * FROM Students2