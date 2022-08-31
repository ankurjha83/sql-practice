/*
For each day display the total amount of admissions on that day. Display the amount changed from the previous date.
*/

WITH admission_counts_table AS
(
  SELECT
  admission_date
  , COUNT (patient_id) AS admission_count
  FROM admissions
  GROUP BY admission_date
  ORDER BY admission_date ASC
)
SELECT
admission_date
, admission_count
, admission_count - LAG(admission_count) OVER (ORDER BY admission_date) AS admission_count_change
FROM admission_counts_table
;
