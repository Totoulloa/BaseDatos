BEGIN
	UPDATE pedidos
    SET pagado = cantidadpagado
    WHERE cantidadpagado = '';
END