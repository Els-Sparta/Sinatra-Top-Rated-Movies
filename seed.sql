DROP TABLE IF EXISTS topmovies;

CREATE TABLE topmovies (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  release_year VARCHAR(255),
  rating VARCHAR(255),
  images TEXT,
  background_img TEXT
);

INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Shawshank Redemption', '1994', '9.2', 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg','https://www.virginmedia.ie/watch-and-play/movies/the-shawshank-redemption/_jcr_content/background_fullwidth/templatesection_0/section_content/nested_columns/parsys-0/nested_columns/parsys-1/image.img.1240.698.l.t.jpg/1489510948197.jpg');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Godfather', '1972', '9.2', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,704,1000_AL_.jpg','https://a.ltrbxd.com/resized/sm/upload/zp/bn/1x/6r/the-godfather-1200-1200-675-675-crop-000000.jpg?k=0be073a8ae');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('The Dark Knight', '2008', '9.0', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_SY1000_CR0,0,675,1000_AL_.jpg','https://us.blu-raydisc.com/wp-content/uploads/2018/01/batman-begins-1200x600.jpg');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('12 Angry Men', '1957', '8.9', 'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SY1000_CR0,0,649,1000_AL_.jpg','https://cdn-images-1.medium.com/max/1600/0*HP1B3jmBQ2io8jWn.jpg');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('Schindlers List', '1993', '8.9', 'https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,666,1000_AL_.jpg', 'https://cdn-images-1.medium.com/max/1600/0*HP1B3jmBQ2io8jWn.jpg');
INSERT INTO topmovies (title, release_year, rating, images, background_img) VALUES ('Lord of the Rings: The Return of the King', '2003', '8.9', 'https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SY1000_CR0,0,675,1000_AL_.jpg', 'https://www.popoptiq.com/wp-content/uploads/2015/06/Rohancharge1.jpg');
