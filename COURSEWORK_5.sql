USE [Consumer Complaints] 
GO
--SELECT THE DATA--
SELECT TOP(100) *
FROM [dbo].[RAW ConsumerComplaints]

--GETDATE--
SELECT GETDATE();

--COUNT--
 SELECT COUNT(*) AS RowNumber
 FROM [dbo].[RAW ConsumerComplaints] ;

 USE [PetsOwners]
 GO

 --SELECT MAXIMUM--
 SELECT MAX([Price])
 FROM [dbo].[RAW P9-ProceduresDetails];
 
 --MINIMUM FUNCTION--
 SELECT MIN([Price])
 FROM [dbo].[RAW P9-ProceduresDetails];

 -- AVG FUNCTION--
 SELECT AVG(CONVERT(INT, [Price])) AS AVG_PRICE_VALUE
 FROM [dbo].[RAW P9-ProceduresDetails];

 --COALESCED--
 --SELECT COALESCE(CONVERT(INT, [Price]))
 --FROM [dbo].[RAW P9-ProceduresDetails]


--SUM FUNCTION--
 SELECT SUM(CONVERT(INT, [Price])) AS SUM_PRICE_VALUE
 FROM [dbo].[RAW P9-ProceduresDetails];

 SELECT TOP(200)*
 FROM [dbo].[RAW P9-ProceduresDetails];

 --CONCANATE-
 SELECT CONCAT([ProcedureType], [Description]) AS CONCANATE
 FROM [dbo].[RAW P9-ProceduresDetails];
 
 --LENGHT-
 SELECT [ProcedureType],  LEN([ProcedureType]) AS LENGHT
 FROM [dbo].[RAW P9-ProceduresDetails];

 --LOWER AND UPPER
 SELECT LOWER([ProcedureType])AS LOWER ,  LEN([ProcedureType]) 
 FROM [dbo].[RAW P9-ProceduresDetails]

 SELECT UPPER([Description])AS UPPER ,  LEN([ProcedureType]) 
 FROM [dbo].[RAW P9-ProceduresDetails];

 ---RTRIM--
 SELECT RTRIM ('FILL MY CUP    ')

 ---RTRIM--
 SELECT LTRIM ('    FILL MY CUP    ')

 --LEFT--
 SELECT LEFT(45664654, 4)


--
--RIGHT--
 SELECT RIGHT(45664654, 4)











