--  FilmDoko — Nepali Movie Streaming App
-- movies(movie_id, title, genre, release_year, rating, language, duration_min)
-- Questions
-- Show all movies available on the platform.
-- Show title and rating for all movies. Alias rating as "imdb_score".
-- Find all movies released between 2015 and 2023 that have a rating of 7.5 or higher.
-- List all movies in the genres 'Comedy', 'Action', or 'Romance'. Show title and genre.
-- Find all movies that are NOT in Nepali language and are shorter than 120 minutes. Show title, language, and duration_min (alias it as "runtime").

CREATE TABLE movies
(
    movie_id     INT PRIMARY KEY,
    title        VARCHAR(100),
    genre        VARCHAR(30),
    release_year INT,
    rating       FLOAT,
    language     VARCHAR(30),
    duration_min INT
);

INSERT INTO movies (movie_id, title, genre, release_year, rating, language, duration_min)
VALUES
(1,  'Loot',          'Comedy',  2012, 8.1, 'Nepali',  115),
(2,  'Kabaddi',       'Action',  2014, 7.8, 'Nepali',  130),
(3,  'Prem Geet',     'Romance', 2016, 7.5, 'Nepali',  110),
(4,  'Pushpa',        'Action',  2021, 7.6, 'Hindi',   179),
(5,  'KGF',           'Action',  2018, 8.2, 'Hindi',   156),
(6,  'Inception',     'Thriller',2010, 8.8, 'English', 148),
(7,  'Muna Madan',    'Romance', 2019, 7.2, 'Nepali',  125),
(8,  'Interstellar',  'Sci-Fi',  2014, 8.6, 'English', 169),
(9,  'Chhakka Panja', 'Comedy',  2016, 7.9, 'Nepali',  118),
(10, 'Dangal',        'Drama',   2016, 8.3, 'Hindi',   161);

select * from movies;
select  title, rating as imdb_score from movies;
select * from movies where release_year between 2015 and 2023 and rating >= 7.5;
select title,genre from movies where genre='Comedy' or genre='Action' or genre =' Romance';
select title,language, duration_min as runtime from movies where language != 'Nepali' and duration_min <120;