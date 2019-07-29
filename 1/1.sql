USE [education]

SELECT [supplierid], [name], [rating] FROM [dbo].[Suppliers]
WHERE [rating] < 
(SELECT [rating] FROM [dbo].[Suppliers]
    WHERE [supplierid] =4);
go