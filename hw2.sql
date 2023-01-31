CREATE TABLE IF NOT EXISTS Artist (
    id serial PRIMARY KEY,
    name varchar(20) UNIQUE NOT NULL
);
   
CREATE TABLE IF NOT EXISTS Genre (
    id serial PRIMARY KEY,
    name varchar(80) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Genre_Artist (
    id serial PRIMARY KEY,
    artist_id integer REFERENCES Artist(id),
    genre_id integer REFERENCES Genre(id)
);
CREATE TABLE IF NOT EXISTS Album (
    id serial PRIMARY KEY,
    name varchar(30) UNIQUE NOT NULL,
    release_date date NOT NULL
);
CREATE TABLE IF NOT EXISTS Album_artist(
    id serial PRIMARY KEY,
    artist_id integer REFERENCES Artist(id),
    album_id integer REFERENCES Album(id)
);
CREATE TABLE IF NOT EXISTS Songs (
    id serial PRIMARY KEY,
    duration integer NOT NULL,
    song_name varchar(30) NOT NULL,
    album_id integer REFERENCES Album(id) NOT NULL
);
CREATE TABLE IF NOT EXISTS Compilation(
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL,
    release_date date NOT NULL
);
CREATE TABLE IF NOT EXISTS compilation_list (
    id serial PRIMARY KEY,
    comp_id integer REFERENCES Compilation(id)
);
CREATE TABLE comp_song (
	id serial PRIMARY KEY,
	song_id integer REFERENCES Songs(id),
	comp_id integer REFERENCES Compilation(id)
);
