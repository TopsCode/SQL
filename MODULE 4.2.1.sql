-- string functions in sql-- 

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



