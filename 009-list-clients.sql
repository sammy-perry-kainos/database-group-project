DELIMITER $$
DROP PROCEDURE IF EXISTS list_clients;
CREATE PROCEDURE list_clients()
BEGIN
	START TRANSACTION;

	SELECT Clients.Name as 'Client', SalesEmployees.Name as 'Sales Employee', GROUP_CONCAT(Projects.Name SEPARATOR ', ') as 'Projects'
	FROM Clients
	INNER JOIN SalesEmployees USING (SalesEmployeeID)
	LEFT JOIN Projects USING (ClientID)
	GROUP BY Clients.ClientID;

	COMMIT;
END $$

DELIMITER ;
