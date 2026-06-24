-- 1. Insert 5 different books into the books table

INSERT INTO bookshelf (id, title, author, price, genre)
VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 500, 'Fiction');

INSERT INTO bookshelf (id, title, author, price, genre)
VALUES (2, 'A Brief History of Time', 'Stephen Hawking', 650, 'Science');

INSERT INTO bookshelf (id, title, author, price, genre)
VALUES (3, 'The Da Vinci Code', 'Dan Brown', 450, 'Mystery');

INSERT INTO bookshelf (id, title, author, price, genre)
VALUES (4, 'Sapiens', 'Yuval Noah Harari', 700, 'History');

INSERT INTO bookshelf (id, title, author, price, genre)
VALUES (5, 'Wings of Fire', 'A. P. J. Abdul Kalam', 350, 'Biography');


-- 2. Select all books that have a price greater than 400

SELECT * 
FROM bookshelf
WHERE price > 400;


-- 3. Select all books where the genre is either 'History', 'Science', or 'Fiction'

SELECT *
FROM bookshelf
WHERE genre IN ('History', 'Science', 'Fiction');


-- 4. Select the book where the title is exactly 'The Great Gatsby'

SELECT *
FROM bookshelf
WHERE title = 'The Great Gatsby';


-- 5. Select all books that are not written by 'Dan Brown'

SELECT *
FROM bookshelf
WHERE author <> 'Dan Brown';