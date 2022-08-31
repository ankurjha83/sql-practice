/*
Show patient_id, primary_diagnosis from admissions. Find patients admitted multiple times for the same primary_diagnosis.
*/

select
patient_id
, primary_diagnosis
, count (*)
from
admissions
group by
patient_id
, primary_diagnosis
HAVING Count(*) > 1
;
