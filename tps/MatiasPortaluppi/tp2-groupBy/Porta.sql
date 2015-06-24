-- Trabajo Practico n2 - Matias Portaluppi

SELECT nombre_cliente, sum(precio*cantidad) AS total FROM VENTA GROUP BY nombre_cliente;
SELECT fecha, sum(precio*cantidad) AS total FROM VENTA GROUP BY fecha;
SELECT sum(precio*cantidad) AS total, fecha, id_producto FROM VENTA GROUP BY fecha, id_producto; 
SELECT sum(cantidad) as total, nombre_cliente, fecha FROM VENTA GROUP BY nombre_cliente, fecha; 
SELECT sum(cantidad) as total, nombre_cliente FROM VENTA GROUP BY nombre_cliente;
