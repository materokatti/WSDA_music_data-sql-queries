/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 07/12/2024
	DESCRIPTION : This query retrieves and sorts invoices categorized as 'Top Performer' based on their total amount.
								It classifies purchases into categories ('Baseline Purchase', 'Low Purchase', 'Target Purchase', 
								and 'Top Performer') using a CASE statement based on the total amount. The result includes only 
								'Top Performer' invoices, sorted by the total amount in descending order.
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType
FROM
	Invoice
WHERE
-- 	total IN(1.98, 3.96)
-- 	total BETWEEN 1.98 AND 3.96
-- 	BillingCity  IN ('Paris', 'Orlando', 'Brussels')
-- 	BillingCity LIKE '%A%'  -- % i don't care what comes next
-- 	DATE(InvoiceDate) > '2010-05-22' AND total < 3.00
-- 	total >= 1.98 AND (BillingCity LIKE 'C%' OR BillingCity LIKE 'D')
	PurchaseType = 'Top Performer'
ORDER BY
	total DESC
