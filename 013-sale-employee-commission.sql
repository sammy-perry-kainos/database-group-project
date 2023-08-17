-- Update Projects table to have start date & end date column
START TRANSACTION;

ALTER TABLE Projects
ADD COLUMN StartDate DATE;

ALTER TABLE Projects
ADD COLUMN EndDate DATE;

COMMIT;

-- Procedure to get sales employee commission of current year
DELIMITER $$
DROP PROCEDURE IF EXISTS get_sales_employee_commissions $$
CREATE PROCEDURE get_sales_employee_commissions()
BEGIN
	
	SELECT SalesEmployees.Name as "Name",  Projects.Value * (SalesEmployees.CommissionRate/ 100) as "Commission This Year"
    FROM Clients
    JOIN SalesEmployees USING (SalesEmployeeID)
    JOIN Projects USING (ClientID)
    WHERE YEAR(Projects.StartDate) = YEAR(CURRENT_DATE()) OR YEAR(Projects.EndDate) = YEAR(CURRENT_DATE()) 
    GROUP BY SalesEmployees.Name;

END $$

DELIMITER ; 