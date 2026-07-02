-- Step 1: Create a new database
CREATE DATABASE GroceryShop;

-- Step 2: Use the database
USE GroceryShop;

-- Step 3: Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

-- Step 4: Add a new column named category
ALTER TABLE products
ADD category VARCHAR(50);

-- Step 5: Remove all records from the products table
TRUNCATE TABLE products;

-- Step 6: Delete the entire database
DROP DATABASE GroceryShop;