-- Compute avera score
-- Compute average score for a user
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
	DECLARE av FLOAT;
	SET @av = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id);
	UPDATE users SET average_score = @av WHERE id = user_id;
END$$
DELIMITER ;
