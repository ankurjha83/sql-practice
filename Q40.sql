/*
Show patient_id, first_name, last_name, and attending physician's specialty.
Show only the patients who has a primary_diagnosis as 'Dementia' and the physician's first name is 'Lisa'

Check patients, admissions, and physicians tables for required information.
*/

SELECT
patients.patient_id
, patients.first_name
, patients.last_name
, physicians.specialty
FROM
patients
LEFT JOIN admissions ON patients.patient_id = admissions.patient_id
LEFT JOIN physicians ON admissions.attending_physician_id = physicians.physician_id
WHERE admissions.primary_diagnosis = 'Dementia'
AND physicians.first_name = 'Lisa'
;
