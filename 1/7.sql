USE [education]

SELECT DISTINCT S.[detailid], D.[name] FROM [dbo].[Supplies] AS S
INNER JOIN [dbo].[details] AS D ON S.[detailid]=D.[detailid]
INNER JOIN [dbo].[Suppliers] AS SR ON SR.[supplierid]=S.[supplierid]
INNER JOIN [dbo].[Products] AS P ON P.[productid]=S.[productid]
WHERE P.[city]='London' OR SR.[city] = 'London';
go