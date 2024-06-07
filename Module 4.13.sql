-- Create the orders table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Insert sample data into the orders table
INSERT INTO orders (order_date, total_amount) VALUES
('2024-06-01', 100.00),
('2024-06-02', 200.00),
('2024-06-03', 150.00);


-- Create the trigger
DELIMITER //
CREATE TRIGGER update_total_amount_trigger
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE total DECIMAL(10, 2);
    SET total = NEW.total_amount;
    IF total < 100 THEN
        SET total = total + 10; -- Add a $10 surcharge for orders less than $100
    END IF;
    SET NEW.total_amount = total;
END;
//
DELIMITER ;

-- Insert a new order
INSERT INTO orders (order_date, total_amount) VALUES ('2024-06-04', 80.00);

-- Check the updated total_amount
SELECT * FROM orders;
