DELIMITER $$
DROP PROCEDURE IF EXISTS list_projects $$
CREATE PROCEDURE list_projects()
BEGIN
	SELECT Projects.Name as 'Project Name', DeliveryEmployees.Name as 'Tech Lead', GROUP_CONCAT(employeeNames.Name SEPARATOR ', ') as 'Delivery Employees'
	FROM Projects
    LEFT JOIN DeliveryEmployees ON (DeliveryEmployees.DeliveryEmployeeID=Projects.TechLead)
    LEFT JOIN ( 
		SELECT ProjectID, DeliveryEmployees.Name as Name 
        FROM DeliveryEmployees_Projects
        LEFT JOIN DeliveryEmployees USING (DeliveryEmployeeID)
        WHERE Status != 'Removed'
    ) as employeeNames USING (ProjectID)
    GROUP BY Projects.Name;
END $$

DELIMITER ;
