-- task 1 part 1
SELECT * FROM products;

-- task 1 part 2
SELECT name, phone FROM shippers;

-- task 2 (average price rounded to 2 decimal places)
SELECT ROUND(AVG(price), 2) AS average_price, MAX(price) AS maximum_price, MIN(price) AS minimum_price FROM products;

-- task 3
SELECT DISTINCT category_id, price FROM products ORDER BY price DESC LIMIT 10;

-- task 4
SELECT COUNT(price) AS prices_between_20_and_100 FROM products WHERE price >= 20 AND price <= 100;

-- task 5 (average price for supplier rounded to 2 decimal places)
SELECT supplier_id, COUNT(*), ROUND(AVG(price), 2) AS average_price FROM products GROUP BY supplier_id;
