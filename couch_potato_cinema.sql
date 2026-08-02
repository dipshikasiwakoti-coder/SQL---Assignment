-- Scenario 1 — Couch Potato Cinemas 🎬
-- Schema:
-- movies(id, title, genre, release_year, rating, ticket_price)
-- directors(id, name, country)
-- Q0. Create both tables with appropriate data types and constraints.
-- Q1. Find all movies whose title contains the word dark or ends with man. (LIKE)
-- Q2. Show movies released between 2010 and 2020 with a rating above 7.5, ordered from newest to oldest.
-------(BETWEEN, WHERE, ORDER BY)
-- Q3. Show each genre and its movie count. (GROUP BY, COUNT)
-- Q4. Show the 2nd through 6th most expensive tickets — imagine this is page 2 of a results list.
-------(ORDER BY, LIMIT, OFFSET)
-- Q5. Add a runtime_mins column to the movies table.
-------Then add a director_id column and make it a foreign key referencing directors.
-------(ADD COLUMN, ADD FOREIGN KEY)
CREATE TABLE directors
(
    id      INT PRIMARY KEY,
    name    VARCHAR(100),
    country VARCHAR(100)
);
INSERT INTO directors
    (id, name, country)
VALUES (1, 'Christopher Nolan', 'UK'),
       (2, 'Steven Spielberg', 'USA'),
       (3, 'Martin Scorsese', 'USA'),
       (4, 'Quentin Tarantino', 'USA'),
       (5, 'James Cameron', 'USA'),
       (6, 'Ridley Scott', 'UK'),
       (7, 'David Fincher', 'USA'),
       (8, 'Peter Jackson', 'New Zealand'),
       (9, 'Rajkumar Hirani', 'India'),
       (10, 'Deepak Rauniyar', 'Nepal');

CREATE TABLE movie
(
    id           INT PRIMARY KEY,
    title        VARCHAR(100),
    genre        VARCHAR(50),
    release_year INT,
    rating       FLOAT,
    ticket_price FLOAT
);

INSERT INTO movie
    (id, title, genre, release_year, rating, ticket_price)
VALUES (1, 'The Dark Knight', 'Action', 2008, 9.0, 500),
       (2, 'Interstellar', 'Sci-Fi', 2014, 8.6, 450),
       (3, 'Batman Begins', 'Action', 2005, 8.2, 400),
       (4, 'Spider-Man', 'Action', 2002, 7.3, 350),
       (5, 'Iron Man', 'Action', 2008, 7.9, 380),
       (6, 'The Dark Hours', 'Thriller', 2016, 7.5, 300),
       (7, 'Superman Returns', 'Action', 2006, 6.1, 250),
       (8, 'Inception', 'Sci-Fi', 2010, 8.8, 480),
       (9, 'The Wolf of Wall St', 'Drama', 2013, 8.2, 420),
       (10, 'Pulp Fiction', 'Drama', 1994, 8.9, 390),
       (11, 'Goodfellas', 'Drama', 1990, 8.7, 370),
       (12, 'Titanic', 'Romance', 2012, 7.8, 460),
       (13, 'Avatar', 'Sci-Fi', 2009, 7.9, 490),
       (14, 'Joker', 'Drama', 2019, 8.4, 410),
       (15, 'Pacman Adventures', 'Comedy', 2021, 6.5, 280);

SELECT *
FROM movie
WHERE title ILIKE '%dark%'
   OR title ILIKE '%man';

SELECT*
FROM movie
WHERE (release_year BETWEEN 2010 AND 2020) AND rating>=7.5
ORDER BY release_year DESC;

SELECT genre,COUNT(*)
FROM movie
GROUP BY genre;

SELECT *
FROM movie
ORDER BY ticket_price DESC
LIMIT 6
OFFSET 1;

ALTER TABLE movie ADD COLUMN runtime_mins INT;
ALTER TABLE movie ADD COLUMN director_id int;
ALTER TABLE movie ADD FOREIGN KEY (director_id) REFERENCES directors(id);

UPDATE movie
SET runtime_mins=120
WHERE id BETWEEN 1 AND 5;

UPDATE movie
SET runtime_mins=90
WHERE id BETWEEN 6 AND 10;

UPDATE movie
SET runtime_mins=135
WHERE id BETWEEN 11 AND 15;


UPDATE movie
SET director_id=1
WHERE id=10;

UPDATE movie
SET director_id=2
WHERE id=9;

UPDATE movie
SET director_id=3
WHERE id=8;

UPDATE movie
SET director_id=4
WHERE id=7;

UPDATE movie
SET director_id=5
WHERE id=6;

UPDATE movie
SET director_id=7
WHERE id=5;

UPDATE movie
SET director_id=8
WHERE id=4;

UPDATE movie
SET director_id=9
WHERE id=3;

UPDATE movie
SET director_id=6
WHERE id=2;

UPDATE movie
SET director_id=10
WHERE id=1;

UPDATE movie
SET director_id=1
WHERE id=11;

UPDATE movie
SET director_id=2
WHERE id=12;

UPDATE movie
SET director_id=3
WHERE id=13;

UPDATE movie
SET director_id=4
WHERE id=14;

UPDATE movie
SET director_id=5
WHERE id=15;

SELECT*
from movie;