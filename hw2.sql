-- Insert 5 sample records
INSERT INTO books (id, title, author, price, stock_status, genre)
VALUES
(1, 'The Alchemist', 'Paulo Coelho', 350.00, 'In Stock', 'Fiction'),
(2, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 450.00, 'In Stock', 'Finance'),
(3, 'Harry Potter', 'J.K. Rowling', 800.00, 'Out of Stock', 'Fantasy'),
(4, 'Atomic Habits', 'James Clear', 650.00, 'In Stock', 'Self Help'),
(5, 'The Hobbit', 'J.R.R. Tolkien', 750.00, 'Out of Stock', 'Fantasy');

---------------------------------------------------
-- 1. Show all the different genres (no duplicates)
---------------------------------------------------
SELECT DISTINCT genre
FROM books;

---------------------------------------------------
-- 2. List all books that are in stock and priced below 400
---------------------------------------------------
SELECT *
FROM books
WHERE stock_status = 'In Stock'
AND price < 400;

---------------------------------------------------
-- 3. List all books that are either out of stock
--    or have a price above 700
---------------------------------------------------
SELECT *
FROM books
WHERE stock_status = 'Out of Stock'
OR price > 700;

---------------------------------------------------
-- 4. Show title, price and price with 10% GST
---------------------------------------------------
SELECT
    title,
    price,
    price + (price * 0.10) AS price_with_gst
FROM books;

---------------------------------------------------
-- 5. Display title, price, and stock_status
--    sorted by price from highest to lowest
---------------------------------------------------
SELECT
    title,
    price,
    stock_status
FROM books
ORDER BY price DESC;