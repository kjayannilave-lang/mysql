--------------------------------------------------
-- 1. Insert 5 movie records
--------------------------------------------------
INSERT INTO movies (id, title, genre, release_year, rating, box_office)
VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 825),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 1004),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 677),
(4, 'Joker', 'Drama', 2019, 8.4, 1074),
(5, 'Dunkirk', 'War', 2017, 7.9, 527);

--------------------------------------------------
-- Display all records
--------------------------------------------------
SELECT * FROM movies;

--------------------------------------------------
-- 2. Show movie title and box office collection
--    Rename box_office as 'Earnings (in Cr)'
--------------------------------------------------
SELECT
    title,
    box_office AS 'Earnings (in Cr)'
FROM movies;

--------------------------------------------------
-- 3. Display movie titles as 'Movie Title'
--    and genre as 'Category'
--------------------------------------------------
SELECT
    title AS 'Movie Title',
    genre AS 'Category'
FROM movies;

--------------------------------------------------
-- 4. Select movies where genre is
--    'Sci-Fi' or 'Action' using IN
--    Rename rating as 'IMDb Score'
--------------------------------------------------
SELECT
    title,
    genre,
    rating AS 'IMDb Score'
FROM movies
WHERE genre IN ('Sci-Fi', 'Action');

--------------------------------------------------
-- 5. Find movies released between
--    2008 and 2015
--    Rename release_year as 'Release'
--------------------------------------------------
SELECT
    title,
    release_year AS 'Release',
    genre,
    rating
FROM movies
WHERE release_year BETWEEN 2008 AND 2015;

--------------------------------------------------
-- 6. Count movies with rating greater than 8.5
--    Rename result as 'High Rated Movies'
--------------------------------------------------
SELECT
    COUNT(*) AS 'High Rated Movies'
FROM movies
WHERE rating > 8.5;