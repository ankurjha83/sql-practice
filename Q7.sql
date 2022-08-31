
/*Show first name, last name, and the full province name of each patient.

Example: 'Ontario' instead of 'ON' */

select
pa.first_name, pa.last_name, pr.province_name
from
patients as pa
LEFT JOIN provinces as pr where pa.province_id=pr.province_id
;
