CREATE VIEW totales_pedidos AS 
SELECT 
pedidos.Identificador AS 'Número de pedido', 
pedidos.fecha AS 'Fecha del pedido', 
cliente.nombre AS 'Nombre del cliente', 
SUM(producto.precio*lineaspedido.cantidad) AS 'SubTotal', 
impuestos.nombre AS 'Descrpción impuesto', 
ROUND(SUM(producto.precio*lineaspedido.cantidad) * (impuestos.tipoimpositivo/100),2) AS "Impuesto", 
ROUND(SUM(producto.precio*lineaspedido.cantidad) + SUM(producto.precio*lineaspedido.cantidad) * (impuestos.tipoimpositivo/100), 2) AS 'Total' 

FROM pedidos 

LEFT JOIN cliente 
ON pedidos.cliente_nombre = cliente.Identificador 
LEFT JOIN lineaspedido 
ON lineaspedido.pedidos_fecha = pedidos.Identificador 
LEFT JOIN producto 
ON lineaspedido.producto_nombre = producto.Identificador 
LEFT JOIN impuestos 
ON pedidos.impuestos_nombre = impuestos.Identificador 

GROUP BY cliente.Identificador;