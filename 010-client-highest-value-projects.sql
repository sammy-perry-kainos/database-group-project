DELIMITER $$
DROP PROCEDURE IF EXISTS get_highest_value_client;
CREATE PROCEDURE get_highest_value_client()
BEGIN
	START TRANSACTION;

	SELECT Clients.Name 
    FROM Clients
    JOIN Projects USING (ClientID)
    GROUP BY Clients.Name
    ORDER BY SUM(Projects.Value) DESC
    LIMIT 1;

	COMMIT;
END $$

DELIMITER ; 

CALL get_highest_value_client();