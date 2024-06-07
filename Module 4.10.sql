-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    grade VARCHAR(2)
);

-- Insert sample data into students table
INSERT INTO students (student_name, age, grade)
VALUES 
    ('Alice', 15, 'A'),
    ('Bob', 16, 'B'),
    ('Charlie', 15, 'C'),
    ('David', 17, 'B'),
    ('Eve', 16, 'A');

-- example 1 :- sort by single columns 
-- Sort students by their names in ascending order
SELECT * FROM students
ORDER BY student_name;

-- example 2 -- sort by multiple columns
-- Sort students by their grades in ascending order, then by age in descending order
SELECT * FROM students
ORDER BY grade, age DESC;
