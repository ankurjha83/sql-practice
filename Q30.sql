/*
Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.
*/

select
province_id
, SUM(height) AS total_height
from
patients
GROUP BY province_id
HAVING total_height > 7000
;
