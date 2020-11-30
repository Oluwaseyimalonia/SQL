--NAME OF THE DATABASE-- 
USE [PetsOwners] 
GO 


--USING THE SELECT AND SELECT  CLAUSE. SELECT EVERYTHIMG FROM THE TABLE 

SELECT *
FROM [dbo].[P9-Owners];

--ALSO WE CAN SELECT FEW ROWS FROM THE TABLE USING TOP(NUMBER) *
SELECT TOP(50) *
FROM [dbo].[P9-Owners];


-- USING A WHERE CLAUSE 

SELECT TOP(50) *
FROM [dbo].[P9-Owners]
WHERE Surname = 'Browning';


SELECT TOP(50) *
FROM [dbo].[P9-Owners]
WHERE Name = 'Marie';

--USING AS CLAUSE.

SELECT OW.OwnerID  AS ID_NO, OW.Name AS FIRST_NAME, Surname , Zipcode AS ZIP_CODE 
FROM [dbo].[P9-Owners] AS OW;

--AND ALSO

SELECT OwnerID , Name , Surname,  Zipcode
FROM [dbo].[P9-Owners] AS OW
WHERE OW.Name= 'Debbie';

--GROUP BY STATEMENT
USE [PetsOwners]
GO
SELECT TOP(500) *
FROM [dbo].[RAW P9-ProceduresHistory];

--# GROUP BY ALWAYS GOES WITH AGGREGATE FUNCTION
SELECT COUNT([ProcedureType]),[ProcedureType], COUNT([ProcedureSubCode])
FROM [dbo].[RAW P9-ProceduresHistory]
GROUP BY [ProcedureType], [ProcedureType];

SELECT [City], COUNT([OwnerID])  
FROM [dbo].[P9-Owners];
GROUP BY CITY

--ALTER TABLE 

SELECT TOP(50)*
 FROM [dbo].[P9-Owners];

 ALTER TABLE [dbo].[P9-Owners]
 ADD PET_FOOD VARCHAR(200)

 UPDATE  [dbo].[P9-Owners]
 SET PET_FOOD = OwnerID;


 UPDATE  [dbo].[P9-Owners]
 SET PET_FOOD = 'OwnerID';

 ---TRUNCATE 
 -- TRUNCATE TABLE [dbo].[P9-Owners];

---DISTINCT

USE [Consumer Complaints]
GO
SELECT DISTINCT([Product Name])
FROM [dbo].[RAW ConsumerComplaints];

SELECT  COUNT(DISTINCT[Product Name])
FROM [dbo].[RAW ConsumerComplaints];
 
-- DROP TABLE
--DROP TABLE [dbo].[RAW ConsumerComplaints];


--HAVING CLAUSE IS ANOTHER WHERE CLAUSE BUT THE DIFFERENCE IS THAT IT ONLY WORK AFTER GROUP BY CLAUSE

SELECT * 
FROM [dbo].[RAW ConsumerComplaints]


SELECT COUNT(*), [Product Name], COUNT([Product Name])
FROM [dbo].[RAW ConsumerComplaints]
GROUP BY[Product Name]
HAVING  COUNT([Product Name]) > 503;

OR 
 
SELECT COUNT(*), [Product Name]
FROM [dbo].[RAW ConsumerComplaints]
GROUP BY[Product Name]
HAVING  COUNT(*) > 5000;

--ORDER BY

SELECT COUNT(*), [Product Name]
FROM [dbo].[RAW ConsumerComplaints]
GROUP BY[Product Name]
HAVING  COUNT(*) > 5000
ORDER BY[Product Name] ASC;

OR 

SELECT COUNT(*), [Product Name]
FROM [dbo].[RAW ConsumerComplaints]
GROUP BY[Product Name]
HAVING  COUNT(*) > 5000
ORDER BY[Product Name] DESC;


-- LIKE CLAUSE

SELECT *
FROM [dbo].[RAW ConsumerComplaints]
WHERE [Sub Product] LIKE '%Credit%'

--ALSO
SELECT *
FROM [dbo].[RAW ConsumerComplaints]
WHERE [Sub Product] LIKE 'O%';


SELECT *
FROM [dbo].[RAW ConsumerComplaints]
WHERE [Sub Product] LIKE 'C%';


SELECT *
FROM [dbo].[RAW ConsumerComplaints]
WHERE [Sub Product] LIKE '%D';

--INNER JOIN

USE [SCHOOLv2]
GO

SELECT *
FROM [dbo].[CourseV2];

SELECT *
FROM [dbo].[StudentsV2];

SELECT *
FROM [dbo].[CourseV2]
INNER JOIN [dbo].[StudentsV2]
ON [dbo].[CourseV2].[Students_id] = [dbo].[StudentsV2].[Students_id];



--LEFT JOIN
USE  [PetsOwners]
GO
SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails];

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresHistory];

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
LEFT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode];

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
LEFT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE[dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode] IS NULL;

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
LEFT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE[dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]='02';

--RIGHT JOIN

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
RIGHT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode];

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
RIGHT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE[dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode] IS NULL;

SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
RIGHT JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE[dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]='03';


SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
CROSS JOIN [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]



--UNION
SELECT * FROM [dbo].[RAW P9-ProceduresDetails]
UNION
SELECT * FROM [dbo].[RAW P9-ProceduresHistory];


--UNION ALL
SELECT * FROM [dbo].[RAW P9-ProceduresDetails]
UNION ALL
SELECT * FROM [dbo].[P9-Owners];


--INTERCEPT
SELECT * FROM [dbo].[RAW P9-ProceduresDetails]
INTERSECT
SELECT * FROM [dbo].[RAW P9-ProceduresHistory];

--IS NULL 

SELECT TOP(200)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureType] IS NULL

--IS NOTCV NULL 
SELECT TOP(200)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureType] IS NOT NULL

--AND 
SELECT TOP(500)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureType] = 'VACCINATIONS'
AND [Price] = 15

--OR
SELECT TOP(500)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureType] = 'VACCINATIONS'
OR [ProcedureType] = 'GROOMING'

--BETWEEN
 SELECT TOP(500)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureSubCode] 
BETWEEN '02' AND '06'


--NOT BETWEEN
 SELECT TOP(500)* 
FROM [dbo].[RAW P9-ProceduresDetails]
WHERE [ProcedureSubCode] 
NOT BETWEEN '02' AND '06'

--FULL OUTER JOIN
SELECT TOP(500)*
FROM [dbo].[RAW P9-ProceduresDetails] 
FULL OUTER JOIN  [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode];

SELECT[dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode], [Price],[dbo].[RAW P9-ProceduresDetails].[ProcedureType]
FROM [dbo].[RAW P9-ProceduresDetails] 
FULL OUTER JOIN  [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE [Price] IS NULL 

 SELECT[dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode], [Price],[dbo].[RAW P9-ProceduresDetails].[ProcedureType]
FROM [dbo].[RAW P9-ProceduresDetails] 
FULL OUTER JOIN  [dbo].[RAW P9-ProceduresHistory]
ON [dbo].[RAW P9-ProceduresDetails].[ProcedureSubCode]= [dbo].[RAW P9-ProceduresHistory].[ProcedureSubCode]
WHERE [Price] IS NOT NULL