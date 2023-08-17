START TRANSACTION;

CREATE TABLE IF NOT EXISTS DeliveryEmployees_Projects (
	DeliveryEmployeesProjectsID int AUTO_INCREMENT PRIMARY KEY,
    DeliveryEmployeeID int NOT NULL,
    ProjectsID int NOT NULL
);

ALTER TABLE DeliveryEmployees_Projects
	ADD CONSTRAINT fk_deliveryemployeesprojects_deliveryemployeesid
		FOREIGN KEY (DeliveryEmployeeID)
        REFERENCES DeliveryEmployees(DeliveryEmployeeID);
        
ALTER TABLE DeliveryEmployees_Projects
	ADD CONSTRAINT fk_deliveryemployeesprojects_projectsid
		FOREIGN KEY (ProjectsID)
        REFERENCES Projects(ProjectsID);

COMMIT;

