--------------------------------------------------
-- 1. Insert 5 books into the table
--------------------------------------------------
INSERT INTO books (id, title, author, price, stock)
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);

--------------------------------------------------
-- Display all records
--------------------------------------------------
SELECT * FROM books;

--------------------------------------------------
-- 2. Display books that cost less than 450
--    and have stock more than 30
--------------------------------------------------
SELECT *
FROM books
WHERE price < 450
AND stock > 30;

--------------------------------------------------
-- 3. Update the stock to 45 and reduce the price
--    to 420 for the book titled 'Deep Work'
--------------------------------------------------
UPDATE books
SET
    stock = 45,
    price = 420
WHERE title = 'Deep Work';

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM books;

--------------------------------------------------
-- 4. Delete the book titled 'Ikigai'
--------------------------------------------------
DELETE FROM books
WHERE title = 'Ikigai';

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM books;

--------------------------------------------------
-- 5. Show the average book price and
--    total number of books currently in the table
--------------------------------------------------
SELECT
    AVG(price) AS Average_Price,
    COUNT(*) AS Total_Books
FROM books;

--------------------------------------------------
-- 6. Display the top 3 most expensive books
--------------------------------------------------
SELECT *
FROM books
ORDER BY price DESC
LIMIT 3;