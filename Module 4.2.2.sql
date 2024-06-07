-- Numeric datatypes 

-- Integer datatypes used in creating the table
CREATE TABLE example_integers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tiny_num TINYINT,
    small_num SMALLINT,
    medium_num MEDIUMINT,
    standard_num INT,
    big_num BIGINT
);

INSERT INTO example_integers (tiny_num, small_num, medium_num, standard_num, big_num) VALUES
(127, 32767, 8388607, 2147483647, 9223372036854775807);

SELECT * FROM example_integers;

-- Floating datatypes 
CREATE TABLE example_floats (
    id INT PRIMARY KEY AUTO_INCREMENT,
    float_num FLOAT,
    double_num DOUBLE
);

INSERT INTO example_floats (float_num, double_num) VALUES
(3.14, 2.718281828459045);

SELECT * FROM example_floats;

