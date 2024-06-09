SELECT 
pedidos.Identificador AS 'Número de pedido',
pedidos.fecha AS 'Frcha del pedido',
cliente.nombre AS 'Nombre del cliente'
FROM pedidos
LEFT JOIN cliente
ON pedidos.cliente_nombre = cliente.Identificador;