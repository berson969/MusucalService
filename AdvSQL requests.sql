--количество исполнителей в каждом жанре
SELECT g.name genre,  COUNT(ag.actor_id) Actors FROM actorgenre ag
JOIN genres g ON ag.genre_id = g.genre_id
GROUP  BY genre
ORDER BY Actors DESC;

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT a.name album, a.released_year, COUNT(t.track_id) FROM albums a
JOIN tracks t ON a.album_id = t.album
WHERE a.released_year >= 2019 AND a.released_year <= 2020
GROUP BY a.name, a.released_year;

--средняя продолжительность треков по каждому альбому
SELECT a.name album, AVG(t.duration) FROM albums a
JOIN tracks t ON a.album_id = t.album
GROUP BY a.name;

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT a.name FROM actors a
LEFT JOIN (
	SELECT DISTINCT(aa.actor_id) actor   FROM albumactor aa 
	JOIN albums al ON aa.album_id = al.album_id
	WHERE al.released_year  = 2020
	GROUP BY actor) AS NT ON a.actor_id  = NT.actor
WHERE NT.actor IS NULL;


--названия сборников, в которых присутствует конкретный исполнитель (выберите сами)
SELECT DISTINCT(c.name) collection, a2.name actor FROM collections c
JOIN collectiontrack ct ON c.collection_id = ct.collection_id 
JOIN tracks t ON ct.track_id = t.track_id 
JOIN albums a ON t.album = a.album_id 
JOIN albumactor aa ON a.album_id = aa.album_id 
JOIN actors a2 ON aa.actor_id = a2.actor_id 
WHERE a2.name LIKE  '%nd';

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT a.name album, ac.name actor, COUNT(ag.genre_id) genre FROM albums a 
JOIN albumactor aa ON aa.album_id = a.album_id
JOIN actors ac ON aa.actor_id  = ac.actor_id 
JOIN actorgenre ag ON ac.actor_id  = ag.actor_id
LEFT JOIN genres g ON g.genre_id = ag.genre_id 
GROUP BY a.name, ac.name
HAVING COUNT(ag.genre_id) > 1
ORDER BY a.name;

--наименование треков, которые не входят в сборники
SELECT t.name track FROM tracks t
LEFT JOIN collectiontrack ct ON t.track_id = ct.track_id 
WHERE ct.ct_id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT  a.name, t.duration FROM tracks t
JOIN albumactor aa ON aa.album_id = t.album 
JOIN actors a ON a.actor_id = aa.actor_id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);


--название альбомов, содержащих наименьшее количество треков
SELECT a.name, COUNT(t.track_id)  FROM albums a
JOIN tracks t  ON t.album = a.album_id 
GROUP BY a.name
HAVING COUNT(t.track_id) = (
	SELECT MIN(cnt) FROM (
		SELECT COUNT(t.track_id) cnt  FROM albums a
		JOIN tracks t  ON t.album = a.album_id 
		GROUP BY a.name) AS NT
		)
		
--название альбомов, содержащих наименьшее количество треков
SELECT a.name, COUNT(t.track_id)  FROM albums a
JOIN tracks t  ON t.album = a.album_id 
GROUP BY a.name
HAVING COUNT(t.track_id) = (
		SELECT COUNT(t.track_id) FROM albums a
		JOIN tracks t  ON t.album = a.album_id
		GROUP BY a.name 
		ORDER BY COUNT(t.track_id) LIMIT 1);
		
	