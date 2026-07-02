-- Step 1: Create the database
CREATE DATABASE BookStoreDB;

-- Step 2: Select the database
USE BookStoreDB;

-- Step 3: Create the authors table
CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100)
);

-- Step 4: Create the books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    price DECIMAL(10,2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Step 5: Add a new column to the books table
ALTER TABLE books
ADD published_year INT;

-- Step 6: Delete all rows from the books table
TRUNCATE TABLE books;

-- Step 7: Remove the entire database
DROP DATABASE BookStoreDB;