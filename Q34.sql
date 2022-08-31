/*
Show the nursing_unit_id and count of admissions for each nursing_unit_id. Exclude the following nursing_unit_ids: 'CCU', 'OR', 'ICU', 'ER'.
*/

SELECT
nursing_unit_id
, count(*)
FROM admissions
WHERE nursing_unit_id NOT IN ('CCU','OR','ICU','ER')
GROUP BY nursing_unit_id
;
