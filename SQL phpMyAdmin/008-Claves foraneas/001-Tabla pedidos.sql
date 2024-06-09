CREATE TABLE pedidos
(
    Identificador INT (10) NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    cliente_nombre INT (10) NOT NULL,
    FOREIGN KEY (cliente_nombre) REFERENCES cliente(Identificador),
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;