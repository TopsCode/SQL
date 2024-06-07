-- Create employees table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10, 2)
);

-- Insert sample data into employees table
INSERT INTO employees (employee_name, department_id, salary)
VALUES 
    ('Alice', 1, 60000),
    ('Bob', 2, 55000),
    ('Charlie', 1, 62000),
    ('David', 3, 70000),
    ('Eve', 2, 58000);

-- Create departments table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert sample data into departments table
INSERT INTO departments (department_name)
VALUES
    ('HR'),
    ('Finance'),
    ('IT');
    
-- Stored and Procedure 
DELIMITER //
CREATE PROCEDURE GetEmployeesByDepartment(IN deptID INT)
BEGIN
    SELECT * FROM employees WHERE department_id = deptID;
END //
DELIMITER ;

-- View
CREATE VIEW HighSalaryEmployees AS
SELECT * FROM employees WHERE salary > 60000;

