DELIMITER $$
DROP PROCEDURE IF EXISTS get_lowest_value_client;
CREATE PROCEDURE get_lowest_value_client()
BEGIN

	SELECT Clients.Name 
    FROM Clients
    JOIN Projects USING (ClientID)
    GROUP BY Clients.Name
    ORDER BY SUM(Projects.Value) ASC
    LIMIT 1;

END $$

DELIMITER ; 
