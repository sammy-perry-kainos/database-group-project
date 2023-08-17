START TRANSACTION;
CREATE DATABASE Kainoos_ManpreetM;

USE Kainoos_ManpreetM;

-- ProductBacklog1
CREATE TABLE SalesEmployees (
	SalesEmployeeID int,
    Name varchar(70),
    Salary decimal(10,2), 
    BankAccountNumber varchar(8),
    NationalInsuranceNumber char(9),
    CommissionRate double); 
    
ALTER TABLE SalesEmployees 
	ADD PRIMARY KEY(SalesEmployeeID);
    
ALTER TABLE SalesEmployees 
	MODIFY SalesEmployeeID int AUTO_INCREMENT;
    
ALTER TABLE SalesEmployees 
	MODIFY COLUMN Name varchar(70) NOT NULL,
    MODIFY COLUMN Salary decimal(10,2) NOT NULL,
    MODIFY COLUMN BankAccountNumber varchar(8) NOT NULL,
    MODIFY COLUMN CommissionRate double NOT NULL;
    ;
    
COMMIT;    
    
    
