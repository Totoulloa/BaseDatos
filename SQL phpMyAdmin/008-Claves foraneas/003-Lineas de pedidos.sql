CREATE TABLE lineaspedido
(
    Identificador INT(10) NOT NULL AUTO_INCREMENT,
    pedidos_fecha INT(10) NOT NULL,
    producto_nombre INT(10) NOT NULL,
    cantidad INT(10) NOT NULL,
    FOREIGN KEY (pedidos_fecha) REFERENCES pedidos(Identificador),
    FOREIGN KEY (producto_nombre) REFERENCES producto(Identificador),
    PRIMARY KEY (`Identificador`)
) ENGINE = InnoDB;