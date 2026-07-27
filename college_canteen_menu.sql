-- Scenario 2: College Canteen Menu
-- Table: menu Columns: item_id PK, item_name, category, price, is_veg
-- Insert at least 8 items across 3 categories ('snack', 'meal', 'drink').
-- Select the full menu — what does SELECT * give you?
-- Select only item_name and price.
-- Insert a drink with no price. What do you observe?
CREATE TABLE menu
(
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    category VARCHAR,
    price FLOAT,
    is_veg BOOLEAN
);
INSERT INTO menu
(item_id, item_name, category, price, is_veg)
values
(1,  'Samosa',        'snack', 20.00,  true),
(2,  'Spring Roll',   'snack', 30.00,  true),
(3,  'Chicken Puff',  'snack', 45.00,  false),
(4,  'Dal Bhat',      'meal',  120.00, true),
(5,  'Chicken Curry', 'meal',  180.00, false),
(6,  'Veg Fried Rice','meal',  100.00, true),
(7,  'Momo',          'meal',  80.00,  false),
(8,  'Masala Tea',    'drink', 15.00,  true),
(9,  'Lassi',         'drink', 40.00,  true);

SELECT * FROM menu;
SELECT item_name, price from menu;

INSERT INTO menu
(item_id, item_name, category, price, is_veg)
values (11, 'Cold Coffee',   'drink', NULL,   true);
