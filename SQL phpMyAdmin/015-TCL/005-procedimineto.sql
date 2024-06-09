DELIMITER //

CREATE PROCEDURE lineaspedido()
BEGIN
START TRANSACTION;

SELECT existencias INTO @existencias FROM producto WHERE Identificador = 1;

IF @existencias < 1 THEN
	ROLLBACK;
ELSE
	INSERT INTO lineaspedido VALUES (NULL, '2024001', '1', '1', '');
	UPDATE producto SET existencias = existencias -1 WHERE Identificador = 1;
	COMMIT;
END IF;
END //
DELIMITER ;