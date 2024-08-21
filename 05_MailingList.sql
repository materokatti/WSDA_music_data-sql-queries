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
	substr(PostalCode, 1, 5) AS [5 Digit Posttal Code],
	upper(firstname) AS [First Name All caps],
	lower(lastname) AS [Last Name All Lower]
	
FROM 
	Customer

WHERE
	Country = 'USA'
