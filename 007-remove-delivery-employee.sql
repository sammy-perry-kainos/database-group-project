START TRANSACTION;

ALTER TABLE DeliveryEmployees_Projects
ADD COLUMN Status varchar(20) NOT NULL;

COMMIT;

DELIMITER $$
DROP PROCEDURE IF EXISTS remove_delivery_employee $$
CREATE PROCEDURE remove_delivery_employee(
	IN deliveryEmployeeID int,
    IN projectID int
)
BEGIN
	START TRANSACTION;

	UPDATE Projects
	SET Status = "Removed"
	WHERE DeliveryEmployeeID = deliveryEmployeeID 
    AND ProjectID = projectID;
    
    GET DIAGNOSTICS @rows = ROW_COUNT;
	IF @rows = 0 THEN
		-- If error occurred, rollback transaction
		ROLLBACK;
		SELECT "Transaction rolled back due to error.";
	ELSE
		-- If no error, commit transaction
		COMMIT;
		SELECT "Transaction committed successfully.";
	END IF;

	COMMIT;
END $$

DELIMITER ; 