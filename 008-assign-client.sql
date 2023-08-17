DELIMITER $$
DROP PROCEDURE IF EXISTS assign_client;
CREATE PROCEDURE assign_client(
	IN clientID int,
    IN projectID int
)
BEGIN
	START TRANSACTION;
    
	UPDATE Projects
	SET ClientID = clientID
	WHERE ProjectID = projectID;
    
    COMMIT;
END $$

DELIMITER ;