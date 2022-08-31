/*
Show patient_id, attending_physician_id, and primary_diagnosis for admissions that match one of the two criteria:
1. patient_id is an odd number and attending_physician_id is either 1, 5, or 19.
2. attending_physician_id contains a 2 and the length of patient_id is 3 characters.*/

SELECT
patient_id
, attending_physician_id
, primary_diagnosis
FROM admissions
WHERE
(
	(
      patient_id % 2 = 1
	  AND attending_physician_id IN (1,5,19)
    )
OR
	(
      attending_physician_id LIKE '%2%'
      AND len(patient_id) = 3
    )
)
;
