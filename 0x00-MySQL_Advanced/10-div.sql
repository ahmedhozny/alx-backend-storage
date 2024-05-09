DELIMITER //
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    RETURN IF(b != 0, a / b, 0);
END //
DELIMITER ;
