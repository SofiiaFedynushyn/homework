USE [education]

SELECT P.[productid]
	FROM [dbo].[Products] P
	INNER JOIN [dbo].[Supplies] S ON P.[productid]= S.[productid]
	INNER JOIN [dbo].[Details] D ON   D.[detailid] = S.[detailid]
	WHERE  D.[detailid] NOT IN 
			(SELECT [detailid] FROM [dbo].[Supplies]);
	go