 /*
	CREATE BY :  DevStory(materokatti@gmail.com)
	CREATTE DATE : 09/03/2024
	Description : Subqueries and DISTINCT
*/
 
 SELECT
	TrackId,
	Composer,
	Name
 FROM
	Track
WHERE
	TrackId
NOT IN
(SELECT
	DISTINCT
	TrackId
FROM
	InvoiceLine
ORDER BY
	TrackId)
