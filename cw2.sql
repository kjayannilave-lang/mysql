INSERT INTO products (id,Name,category,price,instock)
VALUES
(1,'laptop','electronics',55000,'yes'),
(2,'mouse','electronics',1100,'yes'),
(3,'office chair','furniture',2500,'no'),
(4,'notebook','stationary',200,'yes'),
(5,'smartphone','electronics',55000,'yes');
-- show all the unique product categories available in table
SELECT DISTINCT category FROM products;
SELECT *
 FROM products WHERE instock = "yes" AND price<500;
 SELECT*
 FROM products WHERE instock="no" AND price>1000;
 SELECT Name,price
 FROM products
 ORDER BY price DESC;
 SELECT Name,price* 1.18 AS price_with_tax
 FROM products;