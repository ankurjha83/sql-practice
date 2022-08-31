/*
Show first_name, last_name, and the total amount of admissions attended for each physician.

Every admission has been attended by a physician.
*/

SELECT
first_name
, last_name
, count(*) AS total_count
FROM admissions
LEFT JOIN physicians ON admissions.attending_physician_id = physicians.physician_id
GROUP BY attending_physician_id
;
