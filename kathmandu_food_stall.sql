--Momo & Chiya — A Kathmandu Food Stall
-- orders(order_id, customer_name, item, quantity, price, district, order_date)
-- Questions
-- 1. Fetch all orders placed by customers from Jhapa.
-- 2. Show only the customer name and item for orders where the price is more than Rs. 150. (use comparison operators)
-- 3. Find all orders where the item is either 'Buff Momo', 'Veg Chowmein', or 'Masala Tea'. Show item and quantity. Alias quantity as "ordered_qty". (Use BETWEEN) (Use OR)
-- 4. Get all orders placed between '2024-01-01' and '2024-03-31'. Show customer name and order date. (BETWEEN)
-- 5. List all orders where the item does NOT contain the word "Momo". (LIKE)
drop table if exists orders;
create table orders
(
    order_id int primary key,
    customer_name varchar(50),
    item varchar(50),
    quantity float,
    price float,
    district varchar,
    order_date date
);
insert into orders
(order_id, customer_name, item, quantity, price, district, order_date)
values(120,'ram','buff momo',1,200,'jhapa','2023-09-20'),
      (130,'hari','veg chowmein',2, 400,'morang','2024-01-11'),
      (140,'shyam','masala tea',1,50,'jhapa','2024-02-19'),
      (150,'john','veg momo',1,100,'sunsari','2024-04-04'),
      (160,'alice','black tea',1,20,'jhapa','2024-03-09');

select * from orders where district='jhapa';
select customer_name,item from orders where price>150;
select item, quantity as ordered_qty from orders where item='buff momo' or item='veg chowmein' or item ='masala tea';
select customer_name,order_date from orders where order_date between '2024-01-01' and '2024-03-31';
select * from orders where item not like '%momo%';

