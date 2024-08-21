/*
	CREATE BY :  DevStory(materokatti@gmail.com`)
	CREATTE DATE : 08/22/2024
	DESCRIPTION : Calculate the ages of all employees
*/

SELECT
	LastName,
	FirstName,
	BirthDate,
	strftime('%Y-%m-%d', Birthdate) AS [Birthdate No Timecode],
	strftime('%Y-%m-%d', 'now') - 	strftime('%Y-%m-%d', Birthdate) AS [Age]

FROM
	Employee
