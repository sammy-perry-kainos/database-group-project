DELIMITER $$
DROP PROCEDURE IF EXISTS list_client_average_values $$
CREATE PROCEDURE list_client_average_values()
BEGIN
	SELECT Clients.Name as 'Client', AVG(Projects.Value) as 'Project Average'
	FROM Clients
	INNER JOIN Projects USING (ClientID)
	GROUP BY Clients.ClientID;
END $$

DELIMITER ;
