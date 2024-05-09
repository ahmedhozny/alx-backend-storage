-- Create function SafeDiv to divide two numbers,
-- returning 0 if the second number is 0.
DELIMITER //
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    RETURN IF(b != 0, a / b, 0);
END //
DELIMITER ;
