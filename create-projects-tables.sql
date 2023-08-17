START TRANSACTION;
-- Product Backlog 4

-- Projects table
CREATE TABLE Projects (
	ProjectID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(100) NOT NULL,
    Value decimal(15,2) NOT NULL,
    TechLead int NOT NULL,
    ClientID int NOT NULL );
    
ALTER TABLE Projects 
		ADD CONSTRAINT fk_clients 
		FOREIGN KEY (ClientID) REFERENCES Clients(ClientID);
    
    
-- Technologies table
CREATE TABLE Technologies (
	TechnologiesID int AUTO_INCREMENT PRIMARY KEY,
    Name varchar(100) NOT NULL,
    Description varchar(255) NOT NULL);
    

-- Project-Tech table
CREATE TABLE ProjectTech (
	ProjectTechID int AUTO_INCREMENT PRIMARY KEY,
    ProjectID int NOT NULL,
    TechnologiesID int NOT NULL,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
	FOREIGN KEY (TechnologiesID) REFERENCES Technologies(TechnologiesID));
   
COMMIT;    
    
    
