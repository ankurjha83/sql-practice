/*
Show the provinces that has more patients identified as 'M' than 'F'. Must only show full province_name
*/

SELECT province_name
FROM (
    SELECT
      province_name,
      SUM(gender = 'M') AS n_male,
      SUM(gender = 'F') AS n_female
    FROM patients pa
      JOIN provinces pr ON pa.province_id = pr.province_id
    GROUP BY province_name
  )
WHERE n_male > n_female
