USE ecommerce_db;
-- 1> counting rows 
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2>How many purchases happened
SELECT COUNT(*) AS total_orders
FROM orders;

-- 3> Total Revenue 
 SELECT 
    SUM(p.price * oi.quantity) AS total_revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id;

-- 4>revenue by product 
SELECT 
    p.product_name,
    SUM(p.price * oi.quantity) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY revenue DESC;

-- 5> Loyal or best customer/ kisne jyade spend kiya
 SELECT 
    c.customer_name,
    SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 6>Monthly Revenue Trend
SELECT 
    MONTH(o.order_date) AS month,
    SUM(p.price * oi.quantity) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY month;

-- 7>Best product 
SELECT 
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 2;

-- 8>Revenue by Category 
SELECT 
    p.category,
    SUM(p.price * oi.quantity) AS category_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- 9>Average Order Value (AOV)
SELECT 
    SUM(p.price * oi.quantity) / COUNT(DISTINCT o.order_id) 
    AS avg_order_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;
