CREATE TABLE IF NOT EXISTS Genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Actors (
	actor_id SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL
);

DROP TABLE IF EXISTS Albums CASCADE;

CREATE TABLE Albums (
	album_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	released_year INTEGER CHECK (((released_year >= 1901) AND (released_year <= 2155)))
);

DROP TABLE IF EXISTS Collections CASCADE;

CREATE TABLE  Collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	released_year INTEGER CHECK (((released_year >= 1901) AND (released_year <= 2155)))
);

DROP TABLE IF EXISTS Tracks CASCADE;

CREATE TABLE  Tracks (
	track_id SERIAL PRIMARY KEY,
	name VARCHAR(80),
	duration INTERVAL MINUTE,
	album INTEGER NOT NULL REFERENCES Albums(album_id)
);

DROP TABLE IF EXISTS ActorGenre CASCADE;

CREATE TABLE  ActorGenre (
	ad_id SERIAL PRIMARY KEY,
	actor_id INTEGER REFERENCES Actors(actor_id),
	genre_id INTEGER REFERENCES Genres(genre_id)
);

DROP TABLE IF EXISTS AlbumActor CASCADE;

CREATE TABLE AlbumActor (
	aa_id SERIAL PRIMARY KEY,
	actor_id INTEGER REFERENCES Actors(actor_id),
	album_id INTEGER REFERENCES Albums(album_id)
);

DROP TABLE IF EXISTS CollectionTrack CASCADE;

CREATE TABLE CollectionTrack (
	ct_id SERIAL PRIMARY KEY,
	collection_id INTEGER REFERENCES Collections(collection_id),
	track_id INTEGER REFERENCES Tracks(track_id)
);