USE [education]

SELECT S.[supplierid], S.[detailid], S.[productid], S.[quantity] 
	FROM [dbo].[supplies] as S
	INNER JOIN [dbo].[details] AS D ON S.[detailid]=D.[detailid]
	INNER JOIN [dbo].[suppliers] AS SR ON S.[supplierid]=SR.[supplierid]
	INNER JOIN [dbo].[products] as P ON S.[productid]=P.[productid]
	WHERE D.[color]='Red';
	go