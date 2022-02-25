SELECT * FROM `movie-buff`.movies;

SELECT title FROM movies;

SELECT title, year_released FROM movies
ORDER BY year_released DESC;

SELECT * FROM directors
ORDER BY country ASC;

SELECT * FROM directors
ORDER BY country, last_name;

INSERT INTO directors (first_name, last_name, country) VALUES ("Rob", "Reiner", "USA");

SELECT last_name, director_id FROM directors
WHERE last_name = "Reiner";

INSERT INTO movies (title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 11);

SELECT movies.title AS TITLE, movies.year_released AS YEAR, directors.last_name AS DIRECTOR FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id;

SELECT movies.title AS TITLE, movies.year_released AS YEAR, directors.first_name AS FIRST, directors.last_name AS LAST FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
ORDER BY directors.last_name;

SELECT directors.first_name AS FIRST, directors.last_name AS LAST FROM directors
WHERE director_id IN (SELECT director_id FROM movies WHERE title = "The Incredibles");

SELECT directors.last_name, country FROM directors
INNER JOIN movies ON directors.director_id = movies.director_id
WHERE movies.title = "Roma";

DELETE FROM movies
WHERE movie_id = 6;

DELETE FROM directors
WHERE director_id = 3;

SELECT directors.last_name AS Name FROM directors;

SELECT * FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
WHERE directors.last_name = "Jackson";

ALTER TABLE movies
ADD COLUMN earnings INTEGER;

UPDATE movies
SET earnings = 12
WHERE title = "Toy Story";

UPDATE movies
SET earnings = 122
WHERE title = "The Incredibles";

UPDATE movies
SET earnings = 11
WHERE title = "Money Monster";

UPDATE movies
SET earnings = 1212
WHERE title = "A Bug's Life";

UPDATE movies
SET earnings = 121
WHERE title = "Crouching Tiger, Hidden Dragon";

UPDATE movies
SET earnings = 17
WHERE title = "Little Man Tate";

UPDATE movies
SET earnings = 171
WHERE title = "Roma";

UPDATE movies
SET earnings = 17112
WHERE title = "The Perfect Candidate";

UPDATE movies
SET earnings = 22
WHERE title = "The Shape of Water";

UPDATE movies
SET earnings = 222
WHERE title = "The Lord of the Rings: The Return of the King";

UPDATE movies
SET earnings = 222
WHERE title = "A Wrinke in Time";

UPDATE movies
SET earnings = 2221
WHERE title = "Wonder Woman";

UPDATE movies
SET earnings = 2
WHERE title = "Ratatouille";

UPDATE movies
SET earnings = 2
WHERE title = "Mary Shelley";

UPDATE movies
SET earnings = 222
WHERE title = "Selma";

UPDATE movies
SET earnings = 221
WHERE title = "The Princess Bride";

SELECT * FROM movies
ORDER BY earnings;

SELECT * FROM movies
ORDER BY earnings
WHERE earnings > 100;
