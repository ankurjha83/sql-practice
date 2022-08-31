/*
Show the patient_id and total_spent for patients who spent over 150 in medication_cost. Sort by most total_spent to least total_spent.
*/

SELECT
unit_dose_orders.patient_id
, SUM (medication_cost) AS total_spent
FROM
medications
LEFT JOIN unit_dose_orders ON medications.medication_id = unit_dose_orders.medication_id
GROUP BY patient_id
HAVING total_spent > 150
ORDER BY total_spent DESC
;
