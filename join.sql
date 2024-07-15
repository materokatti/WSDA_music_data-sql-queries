/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 07/15/2024
	DESCRIPTION : JOINS on more than two tables | What employees are responsible fore the heighest individual sales?
*/

SELECT 
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM 
	Invoice AS i
INNER JOIN
	Customer AS c
On
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10
