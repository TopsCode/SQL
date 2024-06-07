-- string functions in sql-- 
-- Create a table with columns for each string data type
CREATE TABLE string_data_types (
    char_col CHAR(10),
    varchar_col VARCHAR(255),
    tinytext_col TINYTEXT,
    text_col TEXT,
    mediumtext_col MEDIUMTEXT,
    longtext_col LONGTEXT,
    binary_col BINARY(16),
    varbinary_col VARBINARY(255),
    enum_col ENUM('value1', 'value2', 'value3'),
    set_col SET('value1', 'value2', 'value3')
);

-- Insert sample data into the table
INSERT INTO string_data_types (
    char_col,
    varchar_col,
    tinytext_col,
    text_col,
    mediumtext_col,
    longtext_col,
    binary_col,
    varbinary_col,
    enum_col,
    set_col
) VALUES (
    'char_data',
    'This is a varchar data',
    'tiny text data',
    'This is a longer text data that goes into TEXT column.',
    'This is a medium text data that goes into MEDIUMTEXT column. It is usually longer than TEXT data type.',
    '


-- concat  
SELECT CONCAT('Hello', ' ', 'World') AS ConcatenatedString;

-- Length 
SELECT LENGTH('Hello World') AS StringLength; 

-- upper and lower
SELECT UPPER('Hello World') AS UppercaseString;
SELECT LOWER('Hello World') AS LowercaseString;

-- substr
SELECT SUBSTR('Hello World', 1, 5) AS SubString; 

-- Trim , LTRIM , OR RTRIM
SELECT TRIM('   Hello World   ') AS TrimmedString;
SELECT LTRIM('   Hello World   ') AS LeftTrimmedString;
SELECT RTRIM('   Hello World   ') AS RightTrimmedString;

-- REPLACE
SELECT REPLACE('Hello World', 'World', 'SQL') AS ReplacedString;

-- POSITION OR INTSTR
SELECT POSITION('World' IN 'Hello World') AS SubstringPosition; -- PostgreSQL
SELECT INSTR('Hello World', 'World') AS SubstringPosition; -- MySQL



