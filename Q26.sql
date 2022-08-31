/*
Show first name, last name and role of every person that is either patient or physician.
The roles are either "Patient" or "Physician"
*/

select
first_name
, last_name
, "Patient"
from
patients
UNION
SELECT
first_name
, last_name
, "Physician"
FROM physicians
;
