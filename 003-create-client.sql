START TRANSACTION;

CREATE TABLE IF NOT EXISTS Clients (
    ClientID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    Name varchar(70) NOT NULL,
    Address varchar(255) NOT NULL,
    PhoneNumber char(11) NOT NULL,
    SalesEmployeeID int NOT NULL,
    FOREIGN KEY(SalesEmployeeID) REFERENCES SalesEmployees(SalesEmployeeID)
);

COMMIT;
