-- CORE EXERCISE --

CREATE TABLE films (
id SERIAL PRIMARY KEY,
title TEXT,
genre TEXT,
release_year INTEGER,
score INTEGER,
UNIQUE(title)
);

INSERT INTO films
(title, genre, release_year, score)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water','Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)
);

-- All films --
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM films
ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7;

-- films released in 1990
SELECT * FROM films
WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM films
WHERE release_year < 2000;

-- films released after 1990
SELECT * FROM films
WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;

-- films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre = 'Western' OR genre = 'SciFi';

-- films with any genre *apart* from "SciFi"
SELECT * FROM films
WHERE genre != 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000;

-- films that have the world "Matrix" in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%';

-- CORE EXERCISE --

-- EXTENSION EXERCISE 1:

--Write a SQL SELECT statements to:
--* Return the average film rating
SELECT AVG(rating)
FROM films;

--* Return the total number of films
SELECT COUNT(*)
FROM films;

--* Return the average film rating by genre
SELECT genre, AVG(rating)
FROM films
GROUP BY genre;

-- EXTENSION EXERCISE 1 --