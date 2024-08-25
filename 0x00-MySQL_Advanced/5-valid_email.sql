-- Valid email
-- update email value avec modification
DELIMITER $$
CREATE TRIGGER valid BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		SET NEW.valid_email = 0;
	END IF;
END$$
DELIMITER ;
