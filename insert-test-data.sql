-- Test data

-- Create sales employees
INSERT INTO SalesEmployees (Name, Salary, BankAccountNumber, NationalInsuranceNumber, CommissionRate)
VALUES (
	"Sonny Wilkerson",
    30000.00,
    "11111111",
    "PJ111111D",
    20.5
),
(
	"Judy Vazquez",
    30000.00,
    "22222222",
    "PJ222222D",
    20.5
),
(
	"Enzo Merritt",
    30000.00,
    "33333333",
    "PJ333333D",
    20.5
),
(
	"Yahya Price",
    30000.00,
    "44444444",
    "PJ444444D",
    20.5
);

-- Create delivery employees
INSERT INTO DeliveryEmployees (Name, Salary, BankAccountNumber, NationalInsuranceNumber)
VALUES (
	"Jerry Cochran",
    30000.00,
    "11111111",
    "PJ111111D"
),
(
	"Maximilian Morris",
    30000.00,
    "22222222",
    "PJ222222D"
),
(
	"Evelyn Proctor",
    30000.00,
    "33333333",
    "PJ333333D"
),
(
	"Michael Little",
    30000.00,
    "44444444",
    "PJ444444D"
),
(
	"Jeremy Rigg",
    30000.00,
    "55555555",
    "PJ555555D"
);

-- Create clients
INSERT INTO Clients (Name, Address, PhoneNumber, SalesEmployeeID)
VALUES (
	"DVSA",
    "Berkeley House, Croydon Street, Bristol",
    "11111111111",
    2
),
(
	"Home Office",
    "Somewhere",
    "11111111111",
    3
),
(
	"Kainos",
    "Belfast",
    "99999999999",
    1
);

-- Create projects
INSERT INTO Projects (Name, Value, TechLead, ClientID)
VALUES (
	"Theory driving test booking system",
    10.0,
    1,
    1
),
(
	"Practial driving test booking system",
    15.0,
    1,
    1
),
(
	"Passport renewal service",
    11.0,
    3,
    2
); 

INSERT INTO Technologies (Name, Description)
VALUES (
	"SQL",
    "Language"
),
(
    "Node",
	"Platform"
),
(
    "Java",
	"Language"
),
(
    "JavaScript",
	"Language"
),
(
    "PHP",
	"Language"
);

-- Assign delivery employees to projects
INSERT INTO DeliveryEmployees_Projects (DeliveryEmployeeID, ProjectID)
VALUES
(4, 1),
(1, 1),
(5, 2),
(1, 1),
(3, 3)

