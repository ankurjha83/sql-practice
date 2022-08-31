/*
Show all allergies ordered by popularity. Remove 'NKA' and NULL values from query.
*/

select
allergies
, count(*) AS popularity
from
patients
WHERE
allergies !='NKA'
AND allergies NOT NULL
GROUP BY allergies
ORDER BY popularity DESC
;
