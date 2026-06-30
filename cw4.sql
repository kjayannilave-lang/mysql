--------------------------------------------------
-- 1. Insert mobile records
--------------------------------------------------
INSERT INTO mobiles (id, brand, model, price, stock)
VALUES
(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

--------------------------------------------------
-- Display all records
--------------------------------------------------
SELECT * FROM mobiles;

--------------------------------------------------
-- 2. Display mobiles that cost more than 13000
--    OR have stock less than 15
--------------------------------------------------
SELECT *
FROM mobiles
WHERE price > 13000
OR stock < 15;

--------------------------------------------------
-- 3. Increase stock by 5 and update price to 12500
--    for model = 'Narzo 50'
--------------------------------------------------
UPDATE mobiles
SET
    stock = stock + 5,
    price = 12500
WHERE model = 'Narzo 50';

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM mobiles;

--------------------------------------------------
-- 4. Delete the mobile whose id = 2
--------------------------------------------------
DELETE FROM mobiles
WHERE id = 2;

--------------------------------------------------
-- Display updated table
--------------------------------------------------
SELECT * FROM mobiles;

--------------------------------------------------
-- 5. Find the lowest and highest price
--------------------------------------------------
SELECT
    MIN(price) AS Lowest_Price,
    MAX(price) AS Highest_Price
FROM mobiles;

--------------------------------------------------
-- 6. Find the total stock of all mobiles
--------------------------------------------------
SELECT
    SUM(stock) AS Total_Stock
FROM mobiles;

--------------------------------------------------
-- 7. Show the top 2 most expensive mobiles
--------------------------------------------------
SELECT *
FROM mobiles
ORDER BY price DESC
LIMIT 2;