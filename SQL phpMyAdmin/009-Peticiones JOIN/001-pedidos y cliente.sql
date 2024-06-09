SELECT * FROM `pedidos`
LEFT JOIN cliente
ON pedidos.cliente_nombre = cliente.Identificador;