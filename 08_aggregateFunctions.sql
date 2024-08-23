/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 08/23/2024
	DESCRIPTION : Aggregate Functions | What are our all time global sales?
*/

SELECT
		SUM(total) AS [Total Sales],
		Round(AVG(total),2) AS [Average Sales],
		MAX(total) AS [Max Sales],
		MIN(total) AS [Min Sales],
		COUNT(*) AS [Sales Count]
		
FROM
	Invoice
