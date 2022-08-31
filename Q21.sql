/*
Display every patient's first_name.
Order the list by the length of each name and then by alphbetically
*/

SELECT
first_name
FROM patients
ORDER BY
	len(first_name) ASC
	, first_name ASC
;
