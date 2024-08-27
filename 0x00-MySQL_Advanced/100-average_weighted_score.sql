-- 100-average_weighted_score.sql
-- create computed weighted average
DELIMITER $$
CREATE PROCEDURE ComputeAverageWeightedScoreForUser (IN user_id INT)
BEGIN
	UPDATE users SET average_score = (SELECT SUM())
END
