/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 07/23/2024
	DESCRIPTION : Create a Mailing List of US Customers
*/

SELECT 
	FirstName,
	LastName,
	Address,
	FirstName || ' ' || LastName || ' ' || Address || '. ' || City || ' ' || State || ' ' || PostalCode AS [Mailing Address],
	length(PostalCode),
	substr(PostalCode, 1, 5) AS [5 Digit Posttal Code]
FROM 
	Customer

WHERE
	Country = 'USA'
