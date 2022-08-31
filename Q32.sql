/*
Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
*/

select
DAY(admission_date) AS day_admission
, COUNT(*) AS Number_of_admissions
from
admissions
GROUP BY day_admission
ORDER BY Number_of_admissions DESC
;
