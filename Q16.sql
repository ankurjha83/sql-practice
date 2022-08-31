/*
Write a query to find list of patients first_name, last_name, and allergies from Hamilton where allergies are not nka or null
*/

SELECT
first_name
, last_name
, allergies
FROM
patients
WHERE
city = 'Hamilton'
AND allergies != 'NKA'
AND allergies NOT NULL
;
