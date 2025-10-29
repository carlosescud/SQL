-- Project: Superstore Database Analysis
-- Goal: Analyze inventory data of a superstore to derive insights about product prices, stock levels, categories, and ratings. The analysis addresses questions such as listing items and their prices, calculating the average price of all items, finding the average stock quantity for kitchen supplies, and identifying the highest cost item.
-- Dataset: A sample table 'superstore' with fields item_id, item_name, category, price, stock_quantity, average_rating representing different products across categories like Kitchen Supplies, Furnishings, Electronics, and Appliances.
-- Skills: Table creation, data insertion, sorting, aggregation functions (AVG, MAX), grouping and filtering.

CREATE TABLE superstore (
    item_id INTEGER PRIMARY KEY,
    item_name TEXT,
    category TEXT,
    price DECIMAL(10, 2),
    stock_quantity INTEGER,
    average_rating DECIMAL(3, 2)
);

INSERT INTO superstore (item_id, item_name, category, price, stock_quantity, average_rating)
VALUES
    (1, 'Stainless Steel Cookware Set', 'Kitchen Supplies', 89.99, 50, 4.6),
    (2, 'Memory Foam Mattress', 'Furnishings', 499.99, 30, 4.8),
    (3, 'Smart LED TV', 'Electronics', 549.00, 20, 4.5),
    (4, 'Robot Vacuum Cleaner', 'Appliances', 199.50, 40, 4.3),
    (5, 'Wireless Bluetooth Speaker', 'Electronics', 39.99, 60, 4.2),
    (6, 'Non-Stick Baking Set', 'Kitchen Supplies', 29.95, 80, 4.4),
    (7, 'Cotton Bedding Set', 'Furnishings', 89.00, 25, 4.7),
    (8, 'Smart Home Security Camera', 'Electronics', 79.95, 15, 4.1),
    (9, 'Air Purifier', 'Appliances', 129.50, 35, 4.6),
    (10, 'Premium Coffee Maker', 'Kitchen Supplies', 79.99, 50, 4.9),
    (11, 'Ergonomic Office Chair', 'Furnishings', 189.00, 20, 4.5),
    (12, 'Wireless Earbuds', 'Electronics', 49.99, 75, 4.3),
    (13, 'Slow Cooker', 'Appliances', 49.95, 30, 4.7),
    (14, 'Cutlery Set', 'Kitchen Supplies', 34.50, 40, 4.4),
    (15, 'Cozy Throw Blanket', 'Furnishings', 24.99, 100, 4.2);

-- Select all the items and their respective price from the table superstore
SELECT price, item_name
FROM superstore
ORDER BY price;

-- Find the average price for all items in the superstore table
SELECT AVG(price)
FROM superstore;

-- Find the average stock quantity for all kitchen items in the superstore table
SELECT category, AVG(stock_quantity)
FROM superstore
WHERE category = 'Kitchen Supplies';

-- Identify the highest cost item
SELECT item_name, MAX(price)
FROM superstore;
