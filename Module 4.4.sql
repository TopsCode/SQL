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
