SELECT
    FIRSTNAME || ' ' || LASTNAME AS "CUSTOMERFULLNAME",
    POSTALCODE AS "STANDARDIZEDPOSTALCODE"
    
FROM Customer

WHERE
    COUNTRY IN ('USA');
