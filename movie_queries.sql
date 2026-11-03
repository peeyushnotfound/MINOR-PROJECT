-- Useful queries for the SQL Movie Database

-- 1. Show all movie details with director
SELECT m.movie_id,
       m.title,
       m.release_year,
       m.duration,
       d.name AS director_name
FROM movie m
JOIN director d ON m.director_id = d.director_id
ORDER BY m.release_year;

-- 2. Show all actors in a specific movie
SELECT a.actor_id,
       a.name,
       a.gender,
       a.date_of_birth
FROM actor a
JOIN act_in ai ON a.actor_id = ai.actor_id
WHERE ai.movie_id = 1
ORDER BY a.name;

-- 3. Show all genres for a movie
SELECT m.title,
       g.genre_name
FROM movie m
JOIN belongs_to bt ON m.movie_id = bt.movie_id
JOIN genre g ON bt.genre_id = g.genre_id
ORDER BY m.title;

-- 4. List all movies directed by a specific director
SELECT m.title,
       m.release_year
FROM movie m
JOIN director d ON m.director_id = d.director_id
WHERE d.name = 'Christopher Nolan';

-- 5. Count movies in each genre
SELECT g.genre_name,
       COUNT(bt.movie_id) AS movie_count
FROM genre g
LEFT JOIN belongs_to bt ON g.genre_id = bt.genre_id
GROUP BY g.genre_name
ORDER BY movie_count DESC;

-- 6. Find the movies where a particular actor appears
SELECT m.title,
       m.release_year
FROM movie m
JOIN act_in ai ON m.movie_id = ai.movie_id
JOIN actor a ON a.actor_id = ai.actor_id
WHERE a.name = 'Leonardo DiCaprio';

-- 7. Find movies released after 2000
SELECT title,
       release_year
FROM movie
WHERE release_year > 2000
ORDER BY release_year DESC;
