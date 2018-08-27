DROP TABLE IF EXISTS topmovies;

CREATE TABLE topmovies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  release_year VARCHAR(255),
  rating VARCHAR(255),
  images TEXT,
  background_img TEXT
);

INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Shawshank Redemption', '1994', '9.2', 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg','');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Godfather', '1972', '9.2', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg','');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Dark Knight', '2008', '9.0', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg','');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('12 Angry Men', '1957', '8.9', 'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,649,1000_AL_.jpg','');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('Schindler''s List', '1993', '8.9', 'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,666,1000_AL_.jpg', '');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('Lord of the Rings: The Return of the King', '2003', '8.9', 'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,675,1000_AL_.jpg', 'https://www.popoptiq.com/wp-content/uploads/2015/06/Rohancharge1.jpg');
