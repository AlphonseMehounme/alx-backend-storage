-- Store
-- Trigger to decrease the quantity of item
DELIMITER $$
CREATE TRIGGER decrease
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE items SET quantity = quantity - NEW.number WHERE name = NEW.item_name;
END $$
DELIMITER ;
