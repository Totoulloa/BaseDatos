CREATE VIEW totales_pedidos AS 
SELECT 
pedidos.Identificador AS 'Número de pedido',
pedidos.fecha AS 'Frcha del pedido',
cliente.nombre AS 'Nombre del cliente',
SUM(producto.precio*lineaspedido.cantidad) AS 'Total'
FROM pedidos
LEFT JOIN cliente
ON pedidos.cliente_nombre = cliente.Identificador
LEFT JOIN lineaspedido
ON lineaspedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN producto
ON lineaspedido.producto_nombre = producto.Identificador
GROUP BY cliente.Identificador;