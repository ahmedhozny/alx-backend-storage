DELIMITER //
CREATE TRIGGER item_reduce
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
        SET quantity = quantity - NEW.number
        WHERE name = NEW.item_name;
END //
DELIMITER ;
