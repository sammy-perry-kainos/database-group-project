START TRANSACTION;

ALTER TABLE Clients
ADD SalesEmployeeID int;

ALTER TABLE Clients
ADD CONSTRAINT fk_person_order
FOREIGN KEY (SalesEmployeeID) REFERENCES SalesEmployees(SalesEmployeeID); 

COMMIT;


DELIMITER $$
DROP PROCEDURE IF EXISTS list_clients;
CREATE PROCEDURE list_clients()
BEGIN
	SELECT Clients.Name as 'Client', SalesEmployees.Name as 'Sales Employee', GROUP_CONCAT(Projects.Name SEPARATOR ', ') as 'Projects'
	FROM Clients
	INNER JOIN SalesEmployees USING (SalesEmployeeID)
	LEFT JOIN Projects USING (ClientID)
	GROUP BY Clients.ClientID;
END $$

DELIMITER ;
