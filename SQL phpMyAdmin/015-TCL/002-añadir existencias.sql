START TRANSACTION;

 INSERT INTO lineaspedido VALUES (NULL, '2024001', '1', '1', '');

    UPDATE producto SET existencias = existencias -1 WHERE Identificador = 1;

COMMIT;