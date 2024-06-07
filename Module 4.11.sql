-- Create orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT
);

-- Insert sample data into orders table
INSERT INTO orders (order_date, customer_id)
VALUES 
    ('2022-01-15', 1),
    ('2022-02-20', 2),
    ('2022-03-10', 3),
    ('2022-04-05', 1),
    ('2022-05-25', 2);

-- Create customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    country VARCHAR(50)
);

-- Insert sample data into customers table
INSERT INTO customers (customer_name, country)
VALUES
    ('Alice', 'USA'),
    ('Bob', 'Canada'),
    ('Charlie', 'USA');

-- Selecting Data from multiple Tables
SELECT orders.order_id, orders.order_date, customers.customer_name, customers.country
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

-- Working with dates
SELECT * FROM orders
WHERE order_date BETWEEN '2022-03-01' AND '2022-05-01';

-- Handling Null values 
SELECT * FROM customers
WHERE country IS NULL;

-- Using Logical Operators Like And & or
SELECT orders.order_id, orders.order_date, customers.customer_name, customers.country
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE customers.country = 'USA' OR customers.country = 'Canada';

-- Combining Techniques Examples 
SELECT orders.order_id, orders.order_date, customers.customer_name, customers.country
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id
WHERE orders.order_date BETWEEN '2022-02-01' AND '2022-04-01'
AND (customers.country = 'USA' OR customers.country = 'Canada');

