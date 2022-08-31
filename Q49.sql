/*
For each province, display the total amount patients spent on medication. Order by the most to least spent.
*/

SELECT
provinces.province_name
, ROUND(SUM(medication_cost),0) AS total_spent
FROM
patients p
LEFT join unit_dose_orders udo ON udo.patient_id=p.patient_id
LEFT JOIN medications m ON m.medication_id=udo.medication_id
LEFT JOIN provinces ON provinces.province_id=p.province_id
GROUP BY p.province_id
ORDER BY total_spent DESC
;
