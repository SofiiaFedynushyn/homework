USE [education]

;WITH CTE (supplierid, detailid1, detailid2)
AS
(SELECT DISTINCT s1.supplierid, s1.detailid, s2.detailid FROM supplies AS s1
INNER JOIN supplies AS s2
ON s1.supplierid = s2.supplierid AND s2.detailid > s1.detailid)
SELECT CTE1.supplierid AS First_Supplier
      ,CTE2.supplierid AS Second_Supplier
	  ,CTE1.detailid1 AS First_Detail
	  ,CTE1.detailid2 AS Second_Detail
FROM CTE AS CTE1
INNER JOIN CTE AS CTE2
ON CTE1.detailid1 = CTE2.detailid1 AND CTE1.detailid2 =CTE2.detailid2 AND CTE1.supplierid < CTE2.supplierid
ORDER BY First_Supplier, Second_Supplier, First_Detail, Second_Detail
