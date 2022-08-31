/*Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)*/

SELECT
first_name, last_name
FROM patients
/*where weight <= 120 AND weight >= 100*/
WHERE weight between 100 AND 120
;
