-- Create employees table
CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(50),
    department_id INT
);

-- Insert sample data into employees table
INSERT INTO employees (employee_id, employee_name, department_id)
VALUES 
    (1, 'Alice', 1),
    (2, 'Bob', 2),
    (3, 'Charlie', 1),
    (4, 'David', 3),
    (5, 'Eve', 2);

-- Create departments table
CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);

-- Insert sample data into departments table
INSERT INTO departments (department_id, department_name)
VALUES
    (1, 'HR'),
    (2, 'Finance'),
    (3, 'IT');

-- Inner join
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
INNER JOIN departments ON employees.department_id = departments.department_id;

-- Left join
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.department_id = departments.department_id;

-- Right Join
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.department_id;

-- Full join 
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
FULL JOIN departments ON employees.department_id = departments.department_id;

-- Cross join
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
CROSS JOIN departments;
