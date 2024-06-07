-- CREATING A TABLE
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    position TEXT NOT NULL,
    salary REAL,
    hire_date TEXT
);

-- Inserting the data into Table
INSERT INTO employees (name, position, salary, hire_date) VALUES
('John Doe', 'Software Engineer', 75000, '2022-01-15'),
('Jane Smith', 'Data Analyst', 68000, '2021-11-23'),
('Emily Johnson', 'Project Manager', 85000, '2019-03-10');

-- Querying the data

SELECT * FROM employees;
SELECT name, position FROM employees;
SELECT * FROM employees WHERE salary > 70000;

-- Updating the data
UPDATE employees
SET salary = 80000
WHERE name = 'John Doe';


-- Deleting the data 
DELETE FROM employees
WHERE name = 'Jane Smith';

-- Managing the database 

-- Alter to add a column
ALTER TABLE employees
ADD COLUMN email TEXT;

-- Drop Table  
DROP TABLE IF EXISTS employees;


