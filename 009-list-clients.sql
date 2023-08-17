START TRANSACTION;

SELECT Clients.Name as 'Client', SalesEmployees.Name as 'Sales Employee', GROUP_CONCAT(Projects.Name) as 'Projects'
FROM Clients
JOIN SalesEmployees USING (SalesEmployeeID)
JOIN Projects WHERE (Projects.ClientID)
GROUP BY Projects.Name;

COMMIT;
