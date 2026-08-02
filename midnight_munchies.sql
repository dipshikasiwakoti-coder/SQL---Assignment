-- Scenario 2 — Midnight Munchies Delivery 🍕
-- Schema:
-- customers(id, name, city, loyalty_points)
-- orders(id, customer_id, item, quantity, price, ordered_at)
-- Q0. Create both tables.
-- Q1. Find all customers from Springfield, Shelbyville, or Ogdenville. (IN)
-- Q2. Show orders where the price is between $5 and $25, ordered by price descending. (BETWEEN, ORDER BY)
-- Q3. Find customers whose name starts with the letter A. (LIKE)
-- Q4. Per city, find the total loyalty points and number of customers.
--     Only show cities with more than 2 customers. (GROUP BY, SUM, COUNT, HAVING)
-- Q5. Add a delivery_status column with a default value of 'pending' to the orders table.
--     Then add a customer_id foreign key referencing customers. (ADD COLUMN, ADD FOREIGN KEY)

CREATE TABLE customers
(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(100),
    loyalty_points INT
);

CREATE TABLE food_orders
(
    id INT PRIMARY KEY,
    customer_id INT,
    item VARCHAR(50),
    quantity INT,
    price FLOAT,
    ordered_at TIMESTAMP
);

INSERT INTO customers (id, name, city, loyalty_points)
VALUES
(1,  'Alice',    'Springfield',  500),
(2,  'Bob',      'Shelbyville',  300),
(3,  'Charlie',  'Ogdenville',   450),
(4,  'Anna',     'Springfield',  600),
(5,  'Adam',     'Springfield',  350),
(6,  'Diana',    'Shelbyville',  200),
(7,  'Eve',      'Ogdenville',   550),
(8,  'Aaron',    'Springfield',  400),
(9,  'Frank',    'Shelbyville',  250),
(10, 'Grace',    'Ogdenville',   300);

INSERT INTO food_orders (id, customer_id, item, quantity, price, ordered_at)
VALUES
(1,  1, 'Pizza',      2, 20.00, '2024-01-15 14:30:00'),
(2,  2, 'Burger',     1,  8.50, '2024-01-16 18:45:00'),
(3,  3, 'Pasta',      3, 15.00, '2024-02-10 12:00:00'),
(4,  4, 'Sushi',      2, 30.00, '2024-02-14 20:00:00'),
(5,  5, 'Tacos',      4,  6.00, '2024-03-01 11:30:00'),
(6,  6, 'Sandwich',   1,  4.50, '2024-03-05 09:00:00'),
(7,  7, 'Noodles',    2, 12.00, '2024-03-10 19:00:00'),
(8,  8, 'Fried Rice', 3, 10.00, '2024-03-15 21:00:00'),
(9,  9, 'Hot Dog',    2,  5.00, '2024-03-20 13:00:00'),
(10, 10,'Ice Cream',  5,  3.00, '2024-03-25 16:00:00');

SELECT *
FROM customers
WHERE city IN ('Springfield','Shelbyville','Ogdenville');

SELECT *
FROM food_orders
WHERE price BETWEEN 5 AND 25
ORDER BY price DESC;

SELECT *
FROM customers
WHERE name LIKE 'A%';

SELECT city, sum(loyalty_points) AS loyalty,count(*) AS number_of_customers
FROM customers
GROUP BY city
HAVING count(*) >2;