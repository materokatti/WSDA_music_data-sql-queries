 /*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 09/02/2024
	Description : Subqueries | Gather data about all invoices that are less than this average?
*/

-- SELECT
-- 	round(AVG(TOTAL), 2) AS [Average Total]
-- FROM
-- 	Invoice


SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total <
		(select avg(total) from Invoice)
ORDER BY
	total DESC
