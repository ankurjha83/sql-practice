/*
Show all patient's first_name, last_name, and birth_date who were born in the 1970s decade. Sort the list starting from the earliest birth_date.
*/

select
first_name
, last_name
, birth_date
from
patients
WHERE
birth_date like '197%'
ORDER by birth_date ASC
;
