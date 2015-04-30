-- Trabajo Practico n2 - Matias Portaluppi

SELECT nombre_cliente, precio*cantidad AS Total FROM VENTA GROUP BY nombre_cliente, precio*cantidad;
SELECT fecha, precio*cantidad AS total FROM VENTA GROUP BY fecha, precio*cantidad;
SELECT precio*cantidad AS total, fecha, id_producto FROM VENTA GROUP BY fecha, id_producto, precio*cantidad; 
SELECT cantidad, nombre_cliente, fecha FROM VENTA GROUP BY nombre_cliente, fecha, cantidad; 
SELECT cantidad, nombre_cliente FROM VENTA GROUP BY nombre_cliente, cantidad;
