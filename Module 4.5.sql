-- Aggregate funciton 

-- count funciton
-- Example 1: Count the total number of employees in a table.
SELECT COUNT(*) AS total_employees FROM employees;

-- Example 2: Count the number of employees in a specific department.
SELECT department_id, COUNT(*) AS department_count 
FROM employees 
GROUP BY department_id;


-- sum funciton
-- Example 3: Calculate the total salary expenditure of the company.
SELECT SUM(salary) AS total_salary_expenditure FROM employees;

-- Example 4: Calculate the total sales revenue for each product category.
SELECT product_category, SUM(sales_amount) AS total_revenue 
FROM sales 
GROUP BY product_category;

-- Distinct
-- Example 5: List unique department names.
SELECT DISTINCT department_name FROM employees;

-- Example 6: Count the number of unique customers.
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM orders;


-- putting it all together 
-- Count the number of employees in each department and calculate the total salary expenditure
SELECT 
    department_id,
    COUNT(*) AS department_count,
    SUM(salary) AS total_salary_expenditure
FROM employees
GROUP BY department_id;




