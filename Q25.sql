/*
Show the city and the total number of patients in the city in the order from most to least patients.
*/

select
city
, count(*) AS total_patients
from
patients
GROUP BY city
ORDER BY total_patients DESC
;
