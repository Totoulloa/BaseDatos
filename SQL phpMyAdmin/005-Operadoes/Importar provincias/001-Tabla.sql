CREATE TABLE `empresa`.`impuestos` (`Identificador`
INT (255) NOT NULL AUTO_INCREMENT, `nombre` VARCHAR(255) 
NOT NULL, `tipoimpositivo` INT(10) NOT NULL, 
`descripcion` VARCHAR(255) NOT NULL , PRIMARY KEY 
(`Identificador`)) ENGINE = InnoDB;