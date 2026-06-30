-- Create bestsellers table
--------------------------------------------------
CREATE TABLE bestsellers (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(10,2),
    copies_sold INT
);

--------------------------------------------------
-- 1. Insert records into books table
--------------------------------------------------
INSERT INTO books (id, title, author, genre, price, copies_sold)
VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

--------------------------------------------------
-- 2. Insert records into bestsellers table
--------------------------------------------------
INSERT INTO bestsellers (id, title, author, genre, price, copies_sold)
VALUES
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

--------------------------------------------------
-- Display all records from both tables
--------------------------------------------------
SELECT * FROM books;
SELECT * FROM bestsellers;

--------------------------------------------------
-- 3. Show the list of all books from both tables
--    displaying only the title and author
--------------------------------------------------
SELECT title, author
FROM books

UNION

SELECT title, author
FROM bestsellers;

--------------------------------------------------
-- 4. Display all books from books table
--    where the price is greater than 400
--------------------------------------------------
SELECT *
FROM books
WHERE price > 400;

--------------------------------------------------
-- 5. Show the average price of books
--------------------------------------------------
SELECT
    AVG(price) AS Average_Price
FROM books;

--------------------------------------------------
-- 6. Display the number of books
--------------------------------------------------
SELECT
    COUNT(*) AS Total_Books
FROM books;

--------------------------------------------------
-- 7. Show title and author using aliases
--------------------------------------------------
SELECT
    title AS 'Book Title',
    author AS 'Written By'
FROM books;