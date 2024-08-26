/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 08/26/2024
*/

SELECT
	BillingCity,
	avg(total)
FROM
	Invoice
WHERE
	BillingCity LIKE 'B%'
GROUP BY
	BillingCity
HAVING -- filtering with aggregate
	avg(total) > 5
ORDER BY
	BillingCity
