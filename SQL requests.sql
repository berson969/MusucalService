SELECT name, released_year FROM Albums
WHERE released_year = '2018';

SELECT name, duration FROM Tracks
ORDER BY  duration DESC
LIMIT 1;

--Вариант с функцией MAX
SELECT name, duration FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

SELECT name, duration FROM Tracks
WHERE  duration >= '3:30';

--Заменил на BETWEEN
SELECT name, released_year  FROM COllections
WHERE released_year BETWEEN 2018 AND 2020;


SELECT name FROM Actors
WHERE name NOT LIKE '% %';

SELECT name FROM Tracks
WHERE name LIKE '%My%';