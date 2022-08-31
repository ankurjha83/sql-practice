/*Show the total number of admissions for patient_id 573.*/

SELECT
patient_id
, count(*)
FROM
admissions
WHERE patient_id = 573
;
