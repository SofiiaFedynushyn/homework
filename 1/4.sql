USE [education]

SELECT DISTINCT s1.[supplierid] AS First_Suplier, s2.[supplierid] AS Second_Suplier, s1.[detailid] AS First_detail, s2.[detailid] AS Second_detail 
FROM [dbo].[supplies] AS s1
INNER JOIN [dbo].[supplies] AS s2
ON s1.[supplierid] = s2.[supplierid] 
WHERE s1.[detailid] < s2.[detailid]	
ORDER BY (First_Suplier), (Second_Suplier), (First_Detail), (Second_Detail)