USE [education]

SELECT [productid], [name]  FROM [dbo].[Products]
	WHERE city = 'london'
		UNION
	SELECT P.[productid], SR.[name]
	FROM [dbo].[Products] P
	INNER JOIN [dbo].[Supplies] S ON P.[productid]= S.[productid]
	INNER JOIN [dbo].[Details] D ON  S.[detailid]=D.[detailid]
	INNER JOIN [dbo].[Suppliers] SR ON S.supplierid = SR.supplierid
	WHERE SR.city = 'london';
	go