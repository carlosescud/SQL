-- 📊 SQL Sales Analysis — January & February 2024
-- Description: Exploratory analysis using SQLite to identify order volume, revenue, customer behavior, and product trends.

-- 1️⃣ How many unique orders were placed in January?
SELECT COUNT(DISTINCT orderID) AS unique_orders
FROM JanSales
WHERE LENGTH(orderID) = 6
  AND orderID <> 'Order ID';
-- Result: 9268 unique orders were placed in January

-- 2️⃣ How many of those orders were for an iPhone?
SELECT COUNT(DISTINCT orderID) AS iphone_orders
FROM JanSales
WHERE product = 'iPhone'
  AND LENGTH(orderID) = 6
  AND orderID <> 'Order ID';
-- Result: 379 iPhone orders

-- 3️⃣ Select the customer account numbers for all orders placed in February
SELECT DISTINCT customers.acctnum
FROM customers
INNER JOIN FebSales
  ON customers.order_id = FebSales.orderID
WHERE LENGTH(FebSales.orderID) = 6;

-- 4️⃣ Which product was the cheapest one sold in January, and what was the price?
SELECT DISTINCT Product, MIN(Price) AS lowest_price
FROM JanSales
WHERE Price IS NOT NULL
  AND Price <> ''
ORDER BY Price ASC;
-- Result: AAA Batteries (4-pack) at $2.99

-- 5️⃣ What is the total revenue for each product sold in January?
SELECT 
  Product,
  Quantity,
  Price,
  SUM(Quantity) * Price AS Total_Revenue
FROM JanSales
WHERE Quantity <> ''
  AND Quantity <> 'Quantity Ordered'
GROUP BY Product;

-- 6️⃣ Which products were sold in February at 548 Lincoln St, Seattle, WA 98101?
--    Show quantity of each and total revenue per product.
SELECT 
  Product, 
  SUM(Quantity) AS total_quantity,
  SUM(Quantity) * Price AS total_revenue
FROM FebSales
WHERE Location = '548 Lincoln St, Seattle, WA 98101'
GROUP BY Product;
-- Example: AA Batteries (4-pack), quantity of 2 for a total revenue of 7.68

-- 7️⃣ How many customers ordered more than 2 products at a time in February?
--    What was the average amount spent by these customers?
SELECT 
  COUNT(DISTINCT acctnum) AS customer_count, 
  AVG(Quantity * Price) AS average_spent
FROM FebSales
LEFT JOIN customers
  ON FebSales.orderID = customers.order_id
WHERE Quantity > 2
  AND LENGTH(FebSales.orderID) = 6;
-- Result: 278 customers, average spend of 13.82
