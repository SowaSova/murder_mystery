SELECT *
FROM crime_scene_report
WHERE type = 'murder' AND date=20180115;

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC;

SELECT *
FROM person
WHERE name LIKE 'Annabel %' ;

SELECT *
FROM interview
WHERE person_id = 14887 OR person_id = 16371;

SELECT *
FROM get_fit_now_member
WHERE membership_status = 'gold' AND id LIKE '%%48Z%%';

SELECT *
FROM interview
WHERE person_id = 28819 OR person_id = 67318;

##Killer was found, now we'll find the brain of operation in two querys

SELECT *, COUNT(person_id) AS count
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert' AND date LIKE '201712%%'
GROUP BY person_id
ORDER BY count DESC;

SELECT name
FROM person INNER JOIN drivers_license
ON person.license_id = drivers_license.id
WHERE person.id = 24556	OR person.id= 99716	AND drivers_license.car_model='Model S';
