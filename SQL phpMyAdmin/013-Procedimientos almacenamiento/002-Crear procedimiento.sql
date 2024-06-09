DELIMITER //
CREATE PROCEDURE ActualizarCodigoProvincia()
BEGIN

UPDATE codigospostales
SET idprovinvia = LEFT(codigo_postal,2)
WHERE idprovincia = '';

END //
DELIMITER ;