CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (name, age, salary, department_id) VALUES
('Alice', 30, 60000, 1),
('Bob', 22, 45000, 2),
('Charlie', 28, 50000, 1),
('David', 35, 80000, 3),
('Eve', 28, 70000, 3),
('Frank', 30, 55000, 2),
('Grace', 29, 45000, 1);


SELECT department_id, AVG(salary) AS average_salary
FROM employees
WHERE age > 25
GROUP BY department_id
HAVING AVG(salary) > 50000;


-- Example 1
 -- Count of Employees by Department Where There Are More Than 2 Employees
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Example 2: Total Salary by Department for Departments with a Total Salary Exceeding $100,000
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 100000;

-- Example 3 :-Average Age of Employees by Department for Departments Where the Average Age is Over 30
SELECT department_id, AVG(age) AS average_age
FROM employees
GROUP BY department_id
HAVING AVG(age) > 30;



