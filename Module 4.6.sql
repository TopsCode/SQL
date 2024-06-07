-- Example 1: Retrieve the first 5 employees from the "employees" table.
SELECT * FROM employees
LIMIT 5;

-- Example 2: Retrieve 10 employees starting from the 6th employee (pagination).
SELECT * FROM employees
LIMIT 10 OFFSET 5;

-- Example 3 Retrieve the top 3 highest paid employees.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Pagination Example
-- For page 1
SELECT * FROM employees
LIMIT 10;

-- For page 2
SELECT * FROM employees
LIMIT 10 OFFSET 10;

-- For page 3
SELECT * FROM employees
LIMIT 10 OFFSET 20;




