CREATE TABLE IF NOT EXISTS Clients (
	ClientID int PRIMARY KEY AUTO_INCREMENT,
    Name varchar(70),
    Address varchar(255),
    PhoneNumber char(11)
);