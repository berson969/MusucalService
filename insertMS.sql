INSERT INTO Actors (name)
VALUES
	('Jennifer Lopez'),
	('Dua Lipa'),
	('Ariana Grande'),
	('Taylor Swift'),
	('Olivia Rodrigo'),
	('Billie Eilish'),
	('Doja Cat'),
	('TheWeeknd');

INSERT INTO Genres (name)
VALUES
	('Latin'),
	('Hip Hop'),
	('Dance'),
	('Christian'),
	('R&b/soul'),
	('Pop'),
	('Disco'),
	('House'),
	('Country'),
	('Rock'),
	('Indie pop');

INSERT INTO Albums (name, released_year)
VALUES
	('Rebirth', '2011'),
	('Starboy', '2016'),
	('Up Next Session', '2017'),
	('Amala', '2018'),
	('Fearless', '2008'),
	('Lover', '2019'),
	('Future Nostalgia', '2020'),
	('Mix Album', '2022');

INSERT INTO Tracks (name, duration, album)
VALUES 
	('Get Right', '3:47', '1'),
	('Party Monster', '4:09', '2'),
	('Ocean Eyes', '3:30', '3'),
	('Go To TOwn', '3:38', '4'),
	('Tell ME Why', '3:20', '5'),
	('I Forgot That You Existed', '2:51', '6'),
	('Don t Start Now', '3:03', '7'),
	('Pretty Please', '3:30', '7'),
	('Morning Light', '4:00', '4'),
	('Take My Breath', '3:45', '2'),
	('Bellyache', '3:06', '3'),
	('If You Had My Love', '5:29', '6'),
	('False Alarm', '3:40', '2'),
	('Whatever You Wanna Do', '3:50', '1'),
	('Cherry Pie', '4:06', '1'),
	('The Archer', '3:31', '6'),
	('I Think He Knows', '2:53', '6');

INSERT INTO Collections (name, released_year)
VALUES 
	('New Collection', '2020'),
	('Pop Collection', '2018'),
	('My Heart', '2017'),
	('Good songs', '2019'),
	('Old songs', '2017'),
	('Me Collection', '2022'),
	('The Best', '2020'),
	('Love', '2020');

SELECT * FROM Collections;

INSERT INTO ActorGenre (actor_id, genre_id)
VALUES
	('1', '1'),
	('1', '2'),
	('1', '3'),
	('2', '5'),
	('2', '6'),
	('2', '7'),
	('3', '5'),
	('3', '6'),
	('4', '6'),
	('4', '9'),
	('4', '10'),
	('5', '6'),
	('5', '10'),
	('5', '11'),
	('6', '6'),
	('6', '11'),
	('7', '2'),
	('7', '6'),
	('7', '5'),
	('8', '4'),
	('8', '4');

SELECT * FROM ActorGenre;

INSERT INTO AlbumActor (album_id, actor_id)
VALUES
	('1', '1'),
	('2', '8'),
	('3', '6'),
	('4', '7'),
	('5', '4'),
	('6', '4'),
	('7', '2'),
	('8', '1'),
	('8', '2'),
	('8', '3'),
	('8', '4');
	
SELECT * FROM AlbumActor;

INSERT INTO AlbumActor (album_id, actor_id)
VALUES
	('1', '1'),
	('2', '8'),
	('3', '6'),
	('4', '7'),
	('5', '4'),
	('6', '4'),
	('7', '2'),
	('8', '1'),
	('8', '2'),
	('8', '3'),
	('8', '4');

INSERT INTO CollectionTrack (collection_id, track_id)
VALUES
	('1', '1'),
	('1', '2'),
	('2', '2'),
	('2', '3'),
	('3', '3'),
	('3', '4'),
	('4', '4'),
	('4', '5'),
	('5', '5'),
	('5', '6'),
	('6', '6'),
	('6', '7'),
	('7', '7'),
	('7', '8'),
	('8', '8'),
	('8', '9'),
	('1', '10'),
	('2', '11'),
	('3', '12'),
	('7', '13'),
	('8', '15'),
	('8', '16');
	
	
	