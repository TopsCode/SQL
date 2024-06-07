

-- example 1
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    salary * 0.1 AS bonus
FROM employees;

-- example 2
SELECT 
    order_id,
    customer_id,
    DATE_FORMAT(order_date, '%Y-%m-%d') AS formatted_order_date
FROM orders;

-- example 3
SELECT 
    product_id AS id,
    product_name AS name,
    unit_price AS price
FROM products;


