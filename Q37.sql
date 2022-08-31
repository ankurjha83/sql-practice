/*
For each physicain, display their id, full name, and the first and last admission date they attended.
*/

SELECT
physician_id
, concat(first_name, " ",last_name) AS full_name
, MIN (admission_date) AS first_admission_date
, MAX (admission_date) AS last_admission_date
FROM physicians
LEFT JOIN admissions ON admissions.attending_physician_id = physicians.physician_id
GROUP BY physician_id
;
