/*
Show patient_id, first_name, last_name from patients whos primary_diagnosis is 'Dementia'.
Primary diagnosis is stored in the admissions table.
*/

SELECT
pa.patient_id
, pa.first_name
, pa.last_name
FROM patients as pa
LEFT JOIN admissions as ad ON pa.patient_id=ad.patient_id
WHERE ad.primary_diagnosis = 'Dementia'
;
