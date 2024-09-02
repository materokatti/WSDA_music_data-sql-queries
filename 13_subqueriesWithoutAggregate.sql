 /*
	CREATE BY :  DevStory(materokatti@gmail.com)
	CREATTE DATE : 09/03/2024
	Description : Returning multiple value from a subquery
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
	InvoiceId IN (251, 252, 254))
