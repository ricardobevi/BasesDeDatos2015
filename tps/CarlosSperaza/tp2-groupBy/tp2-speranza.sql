--1
SELECT nombre_cliente as nombre, precio*cantidad AS total FROM venta GROUP BY nombre_cliente, precio, cantidad;
--2
SELECT fecha, SUM(precio*cantidad) AS total_fecha FROM venta GROUP BY fecha, precio, cantidad;
--3
SELECT id_producto, fecha,SUM(precio*cantidad) AS total FROM venta GROUP BY fecha, id_producto,precio,cantidad;
--4
SELECT fecha, nombre_cliente, SUM(cantidad) AS total_cantidad FROM venta GROUP BY fecha, nombre_cliente,cantidad;
--5
SELECT nombre_cliente, SUM(cantidad) AS total_cantidad FROM venta GROUP BY nombre_cliente, cantidad;
