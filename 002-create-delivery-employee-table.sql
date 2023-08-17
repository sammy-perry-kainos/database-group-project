START TRANSACTION;

CREATE TABLE DeliveryEmployees (
    DeliveryEmployeeID      int,
    Name                    varchar(70),
    Salary                  decimal,
    BankAccountNumber       varchar(34),
    NationalInsuranceNumber char(9),
    PRIMARY KEY (DeliveryEmployeeID)
);

COMMIT;
