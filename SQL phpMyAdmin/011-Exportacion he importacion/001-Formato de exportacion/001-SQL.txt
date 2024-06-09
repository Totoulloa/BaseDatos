CREATE VIEW detalle_pedidos AS
SELECT 
pedidos.Identificador AS 'Número de pedido',
pedidos.fecha AS 'Frcha del pedido',
cliente.nombre AS 'Nombre del cliente',
producto.nombre AS 'Producto',
producto.precio AS 'Precio',
lineaspedido.cantidad AS 'Cantidad',
producto.precio*lineaspedido.cantidad AS 'Subtotal'
FROM pedidos
LEFT JOIN cliente
ON pedidos.cliente_nombre = cliente.Identificador
LEFT JOIN lineaspedido
ON lineaspedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN producto
ON lineaspedido.producto_nombre = producto.Identificador
;SELECT 
pedidos.Identificador AS 'Número de pedido',
pedidos.fecha AS 'Frcha del pedido',
cliente.nombre AS 'Nombre del cliente',
producto.nombre AS 'Producto'
FROM pedidos
LEFT JOIN cliente
ON pedidos.cliente_nombre = cliente.Identificador
LEFT JOIN lineaspedido
ON lineaspedido.pedidos_fecha = pedidos.Identificador
LEFT JOIN producto
ON lineaspedido.producto_nombre = producto.Identificador;