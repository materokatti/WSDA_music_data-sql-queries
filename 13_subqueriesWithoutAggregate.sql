 /*
	CREATE BY :  DevStory(materokatti@gmail.com)
	CREATTE DATE : 09/03/2024
	Description : Subqueries without Aggregate functions
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	Invoice
WHERE
	InvoiceDate >
(SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId = 251)
