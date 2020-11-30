USE SCHOOL2
GO
#/* CREATE A TABLE CALL STUDENTS */

CREATE TABLE Students( Students_id INTEGER   PRIMARY KEY NOT NULL,
                       Students_Address VARCHAR(200) UNIQUE NOT NULL,
					   Matric_No INT UNIQUE NOT NULL,
					   Exam_No SMALLINT  CHECK( Exam_No < 20) NOT NULL,

);

/* CREATE A TABLE CALL COURSES */

CREATE TABLE Courses( Course_id INT PRIMARY KEY NOT NULL,
                     Students_id INTEGER REFERENCES  Students( Students_id),
					Department Varchar(200) UNIQUE DEFAULT 'None'
                      
);



/* INSERT INTO STUDENTS TABLE */

INSERT INTO Students(Students_id ,
                       Students_Address, 
					   Matric_No ,
					   Exam_No )
VALUES(  1, '1 TRINITY ROAD', 092508, 12);


INSERT INTO Students(Students_id ,
                       Students_Address, 
					   Matric_No ,
					   Exam_No )
VALUES(  2, '34 TRINITY ROAD', 092505, 14);


INSERT INTO Students(Students_id ,
                       Students_Address, 
					   Matric_No ,
					   Exam_No )
VALUES(  6, '20 TRINITY ROAD', 092509, 10);



/* CREATE A TABLE CALL COURSES */
INSERT INTO Courses (Course_id,
                     Students_id,
					Department)

VALUES ( 1, 1, 'Mathematics');

INSERT INTO Courses (Course_id,
                     Students_id,
					Department)

VALUES (2, 2, 'English');


INSERT INTO Courses (Course_id,
                     Students_id,
					Department)

VALUES (6, 6, 'Sociology');


/* JOINING STUDENTS AND COURSES TABLE TOGETHER */
SELECT * FROM Students 
INNER JOIN Courses 
ON Students.Students_id = Courses.Students_id


/* DROP A TABLE*/
DROP TABLE [School].[dbo].[Courses]

/* TRUNCATE A TABLE*/
TRUNCATE TABLE [School].[dbo].[Courses]


/* ALTER AND DROP A TABLE*/
ALTER TABLE [School].[dbo].[Courses]
ADD Exam_Hall VARCHAR ( 200) null


/* UPDATE THE COLUMN */
UPDATE [School].[dbo].[Courses]
SET Exam_Hall = 'Lecture Therter2000'


/* SELECT  FROM THE TWO TABLES */

USE School 
Go

SELECT * FROM [dbo].[Students]

SELECT * FROM [dbo].[Courses]









