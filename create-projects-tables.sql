-- Product Backlog 4

-- Projects table
CREATE TABLE Projects (
	ProjectID int,
    Name varchar(100),
    Value decimal(15,2));
    
-- Technologies table
CREATE TABLE Technologies (
	TechnologiesID int,
    Name varchar(100),
    Description varchar(255));
    
-- Add primary key to Projects table
ALTER TABLE Projects
ADD CONSTRAINT PK_Projects PRIMARY KEY (ProjectID);

-- Add primary key to Technologies table
ALTER TABLE Technologies
ADD CONSTRAINT PK_Technologies PRIMARY KEY (TechnologiesID);

-- Project-Tech table
CREATE TABLE ProjectTech (
	ProjectTechID int,
    ProjectID int,
    TechnologiesID int,
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID),
	FOREIGN KEY (TechnologiesID) REFERENCES Technologies(TechnologiesID));


    

    
    
    
