/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 07/11/2024
	DESCRIPTION : This query displays all customers FirstName, LastName, and Email
*/

SELECT 
	FirstName  AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS EMAIL
FROM 
	Customer
ORDER By
	FirstName ASC,  -- ASC is Default
	LastName DESC
LIMIT 10
