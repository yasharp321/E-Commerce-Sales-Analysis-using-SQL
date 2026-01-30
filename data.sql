USE ecommerce_db;


-- Inserting  Data into customers 
INSERT INTO customers VALUES
(1, 'Amit Sharma', 'Delhi'),
(2, 'Neha Verma', 'Mumbai'),
(3, 'Rahul Singh', 'Bangalore'),
(4, 'Priya Patel', 'Ahmedabad'),
(5, 'Arjun Mehta', 'Pune');

--  Insterting data into products
INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Smartphone', 'Electronics', 30000.00),
(103, 'Headphones', 'Accessories', 2000.00),
(104, 'Office Chair', 'Furniture', 7000.00),
(105, 'Running Shoes', 'Fashion', 4000.00);

-- Inserting data into orders
 INSERT INTO orders VALUES
(1001, 1, '2024-01-05'),
(1002, 2, '2024-01-10'),
(1003, 3, '2024-02-12'),
(1004, 1, '2024-02-18'),
(1005, 4, '2024-03-02');

-- Inserting data into order_items
 INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 105, 2),
(5, 1004, 104, 1),
(6, 1004, 103, 1),
(7, 1005, 102, 1);

--  removing 1452 error(foreign key constrain failure)
SELECT * FROM orders;

SELECT * FROM products;

INSERT INTO products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 55000.00),
(102, 'Smartphone', 'Electronics', 30000.00),
(103, 'Headphones', 'Accessories', 2000.00),
(104, 'Office Chair', 'Furniture', 7000.00),
(105, 'Running Shoes', 'Fashion', 4000.00);

SELECT * FROM products;

SELECT * FROM orders;

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 2),
(3, 1002, 102, 1),
(4, 1003, 105, 2),
(5, 1004, 104, 1),
(6, 1004, 103, 1),
(7, 1005, 102, 1);

-- final check 

SELECT * FROM customers;

SELECT * FROM products;

SELECT * FROM orders;

SELECT * FROM order_items;
 