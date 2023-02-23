-- Create Item Table
CREATE TABLE item (
  id              integer GENERATED ALWAYS AS IDENTITY,
  genre           varchar(100),
  author          varchar(100),
  source          varchar(100),
  label           varchar(100),
  publish_date    date,
  archived        boolean
  PRIMARY KEY(id)
);

-- Create Games Table
CREATE TABLE games (
  id INT,
  multiplayer BOOLEAN,
  last_played_at DATE,
  FOREIGN KEY(id) REFERENCES item(id)
);

-- Create Authors Table
CREATE TABLE authors (
  id  INT GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  PRIMARY KEY(id)
);

-- Create MusicAlbum Table
CREATE TABLE music_album (
  id              integer GENERATED ALWAYS AS IDENTITY,
  publish_date    date,
  on_spotify      boolean,
  genre_id        int references genre(id),
  PRIMARY KEY(id)
);

-- Create Genre Table
CREATE TABLE genre(
  id              integer GENERATED ALWAYS AS IDENTITY,
  name            varchar(100),
  PRIMARY KEY(id)
);

-- Create Books Table
CREATE TABLE books (
  id INT,
	publisher  varchar(100),
	cover_state varchar(100),
	FOREIGN KEY(id) REFERENCES item(id)
);

-- Create Labels Table
CREATE TABLE labels (
  id INT GENERATED ALWAYS AS IDENTITY,
  title varchar(100),
  color varchar(100)
);
