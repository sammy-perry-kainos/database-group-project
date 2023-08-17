START TRANSACTION;

SELECT Clients.Name as 'Client', AVG(Projects.Value) as 'Project Average'
FROM Clients
INNER JOIN Projects USING (ClientID)
GROUP BY Clients.ClientID;

COMMIT;
