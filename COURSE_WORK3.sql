

--CREATE DATABASE 
CREATE DATABASE SCHOOLv2;

CREATE TABLE StudentsV2( Students_id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
                          First_Name VARCHAR(50) NOT NULL,
						  Surname VARCHAR(50) NOT NULL,
                         Matric_No   INT UNIQUE NOT NULL,
						 Email_Address VARCHAR(50) UNIQUE

);




CREATE TABLE CourseV2( Course_id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
                        Students_id INT REFERENCES StudentsV2(Students_id) NOT NULL,
						Course_Title VARCHAR(50)


);

DELETE StudentsV2
DROP TABLE CourseV2

DROP TABLE StudentsV2

SELECT  TOP (1000) * 
FROM StudentsV2

SELECT  TOP (1000) * 
FROM CourseV2

SET IDENTITY_INSERT StudentsV2 ON

INSERT INTO StudentsV2( Students_id,
                          First_Name,
						  Surname,
                          Matric_No,
						 Email_Address)


VALUES(1, 'Adeola', 'Olabimtan', 092508, 'oluwaseyi@yahoo.com')

SET IDENTITY_INSERT StudentsV2 OFF

SET IDENTITY_INSERT CourseV2 ON 

INSERT INTO CourseV2( Course_id,
                        Students_id,
						Course_Title )

VALUES(1, 3, 'MTH101')

SET IDENTITY_INSERT CourseV2 OFF