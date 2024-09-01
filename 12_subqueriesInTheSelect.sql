 /*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 09/02/2024
	Description : Subqueries in the SELECT | How is each individual city performing against the global average sales?
*/

SELECT
	BillingCity,
	AVG(TOTAL),
	(select avg(total) from Invoice)
FROM
	Invoice
GROUP BY
	BillingCity
