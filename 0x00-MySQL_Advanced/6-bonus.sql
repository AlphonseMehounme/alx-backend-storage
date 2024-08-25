-- Addbonus
-- Add new correction to a student
DELIMITER $$
CREATE PROCEDURE AddBonus (IN user_id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
	DECLARE idx INT;
	SET @idx = (SELECT id FROM projects WHERE name = project_name);
	IF @idx IS NULL THEN
		INSERT INTO projects (name) VALUES (project_name);
		SET @idx = (SELECT id FROM projects WHERE name = project_name);
	END IF;
	INSERT INTO corrections (user_id, project_id, score) VALUES (user_id, @idx, score);
END$$
DELIMITER ;
