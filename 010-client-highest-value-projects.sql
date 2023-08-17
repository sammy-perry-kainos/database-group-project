DELIMITER $$
DROP PROCEDURE IF EXISTS get_highest_value_client;
CREATE PROCEDURE get_highest_value_client()
BEGIN

	SELECT Clients.Name 
    FROM Clients
    JOIN Projects USING (ClientID)
    GROUP BY Clients.Name
    ORDER BY SUM(Projects.Value) DESC
    LIMIT 1;

END $$

DELIMITER ; 