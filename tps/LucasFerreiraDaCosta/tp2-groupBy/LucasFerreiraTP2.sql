1) 
SELECT nombre_cliente, SUM(precio * cantidad) FROM VENTA GROUP BY nombre_cliente;
2) 
SELECT fecha, SUM(precio * cantidad) FROM VENTA GROUP BY fecha;
3) 
SELECT fecha, id_producto, SUM(precio * cantidad) FROM VENTA GROUP BY id_fecha, id_producto;
4)
SELECT nombre_cliente, fecha, cantidad FROM VENTA GROUP BY nombre_cliente;
5)
SELECT nombre_cliente, id_producto, cantidad FROM VENTA GROUP BY nombre_cliente, id_producto, cantidad
