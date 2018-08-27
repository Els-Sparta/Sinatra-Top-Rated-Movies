DROP TABLE IF EXISTS topmovies;

CREATE TABLE topmovies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  release_year VARCHAR(255),
  rating VARCHAR(255)
);

INSERT INTO topmovies (title, release_year, rating) VALUES ('The Shawshank Redemption', '1994', '9.2');
INSERT INTO topmovies (title, release_year, rating) VALUES ('The Godfather', '1972', '9.2');
INSERT INTO topmovies (title, release_year, rating) VALUES ('The Dark Knight', '2008', '9.0');
INSERT INTO topmovies (title, release_year, rating) VALUES ('12 Angry Men', '1957', '8.9');
INSERT INTO topmovies (title, release_year, rating) VALUES ('Schindlers List', '1993', '8.9');
INSERT INTO topmovies (title, release_year, rating) VALUES ('Lord of the Rings: The Return of the King', '2003', '8.9');
