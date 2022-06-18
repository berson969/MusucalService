SELECT name, released_year FROM Albums
WHERE released_year = '2018';

SELECT name, duration FROM Tracks
ORDER BY  duration DESC
LIMIT 1;

SELECT name, duration FROM Tracks
WHERE  duration >= '3:30';

SELECT name, released_year  FROM COllections
WHERE released_year >= 2018 AND released_year <= 2020;


SELECT name FROM Actors
WHERE name NOT LIKE '% %';

SELECT name FROM Tracks
WHERE name LIKE '%My%';