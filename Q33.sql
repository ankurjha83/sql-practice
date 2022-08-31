/*
Show the patient_id, nursing_unit_id, room, and bed for patient_id 542's most recent admission_date.
*/

SELECT
patient_id
, nursing_unit_id
, room
, bed
FROM admissions
WHERE patient_id = 542
GROUP BY patient_id
HAVING
admission_date = MAX(admission_date)
;
