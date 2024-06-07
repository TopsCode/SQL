-- Create a table with various date and time types
CREATE TABLE sample_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    birth_date DATE,
    birth_time TIME,
    registration_datetime DATETIME,
    last_login TIMESTAMP
);

-- Insert data into the table
INSERT INTO sample_table (birth_date, birth_time, registration_datetime, last_login)
VALUES
('1990-05-23', '14:30:00', '2023-06-07 12:00:00', CURRENT_TIMESTAMP);

-- Query the data
SELECT * FROM sample_table;
