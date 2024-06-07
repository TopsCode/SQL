-- Arithmetic Operators 
SELECT 5 + 2 AS Addition;     -- Result: 7
SELECT 5 - 2 AS Subtraction;  -- Result: 3
SELECT 5 * 2 AS Multiplication; -- Result: 10
SELECT 5 / 2 AS Division;     -- Result: 2.5
SELECT 5 % 2 AS Modulus;      -- Result: 1



-- Comparsion Operators
SELECT 5 = 2 AS EqualTo;       -- Result: 0 (false)
SELECT 5 != 2 AS NotEqualTo;   -- Result: 1 (true)
SELECT 5 > 2 AS GreaterThan;   -- Result: 1 (true)
SELECT 5 < 2 AS LessThan;      -- Result: 0 (false)
SELECT 5 >= 2 AS GreaterOrEqual; -- Result: 1 (true)
SELECT 5 <= 2 AS LessOrEqual;  -- Result: 0 (false)
SELECT 5 BETWEEN 1 AND 10 AS Between1; -- Result: 1 (true)
SELECT 5 IN (1, 2, 3, 5) AS InOperator; -- Result: 1 (true)
SELECT 'abc' LIKE 'a%' AS LikeOperator; -- Result: 1 (true)
SELECT NULL IS NULL AS IsNull; -- Result: 1 (true)

-- Logical Operators
SELECT 1 AND 1 AS AndOperator; -- Result: 1 (true)
SELECT 1 OR 0 AS OrOperator;   -- Result: 1 (true)
SELECT NOT 1 AS NotOperator;   -- Result: 0 (false)

-- Bitwise Operators
SELECT 5 & 1 AS BitwiseAnd;   -- Result: 1
SELECT 5 | 1 AS BitwiseOr;    -- Result: 5
SELECT 5 ^ 1 AS BitwiseXor;   -- Result: 4
SELECT ~5 AS BitwiseNot;      -- Result: -6
SELECT 5 << 1 AS ShiftLeft;   -- Result: 10
SELECT 5 >> 1 AS ShiftRight;  -- Result: 2

-- Assignment Operators 
SET @var = 5;
SELECT @var AS VariableAssignment; -- Result: 5

