SELECT*FROM movies;

SELECT *FROM movies WHERE industry = "Hollywood";

SELECT COUNT(*) FROM actors;

SELECT DISTINCT currency FROM financials;

SELECT * FROM movies WHERE studio LIKE "Marvel Studios";

SELECT * FROM movies WHERE imdb_rating >=9;

SELECT * FROM movies WHERE imdb_rating >=9 AND industry = "Bollywood";

SELECT * FROM movies WHERE imdb_rating >=6 AND imdb_rating <=8;

SELECT *FROM financials WHERE revenue >=1000;

SELECT * FROM movies WHERE release_year IN (2022,2015,2000,2015);


SELECT *FROM movies WHERE imdb_rating IS NOT NULL 
ORDER BY imdb_rating DESC;

SELECT *FROM movies WHERE industry = "Hollywood"
ORDER BY imdb_rating DESC LIMIT 5;

SELECT MAX(budget) FROM financials;


SELECT AVG(revenue) FROM financials;


SELECT industry, COUNT(*) FROM movies GROUP BY industry;

SELECT studio , COUNT(*) AS CNT FROM movies GROUP BY studio 
ORDER  BY CNT DESC;

SELECT * FROM movies WHERE studio = ""

SELECT * FROM movies WHERE studio != "" AND imdb_rating IS NOT NULL ORDER BY imdb_rating DESC;

SELECT release_year, COUNT(*) AS movies_count
FROM  movies 
GROUP BY release_year
ORDER BY movies_count DESC;

SELECT movies.movie_id 
FROM movies
INNER JOIN financials
ON movies.movie_id = financials.movie_id;

SELECT movie_actor.actor_id
FROM movie_actor
INNER JOIN actors
ON movie_actor.actor_id = actors.actor_id;

SELECT *
FROM movies
INNER JOIN financials
ON movies.movie_id = financials.movie_id;

SELECT *
FROM actors
INNER JOIN movie_actor
ON actors.actor_id = movie_actor.actor_id;

SELECT MAX(revenue) FROM financials;