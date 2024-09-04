 /*
	CREATE BY :  DevStory(materokatti@gmail.com)
	CREATTE DATE : 09/05/2024
	Description : View
*/
 
 CREATE VIEW V_AvgTotal AS
SELECT
	round(avg(total),2) AS [Average Total]
FROM 
	Invoice

-- DROP VIEW 
-- 	V_AvgTotal
