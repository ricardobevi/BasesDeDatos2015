
--1
 SELECT nombre_cliente, SUM(precio*cantidad) AS Total FROM VENTA GROUP BY nombre_cliente;
--2
 SELECT  fecha, SUM(precio*cantidad) AS total FROM VENTA GROUP BY fecha;
--3
 SELECT SUM(precio*cantidad) AS total, fecha, id_producto FROM VENTA GROUP BY fecha, id_producto; 
--4
 SELECT SUM(cantidad), nombre_cliente, fecha FROM VENTA GROUP BY nombre_cliente, fecha; 
--5
 SELECT SUM(cantidad), nombre_cliente FROM VENTA GROUP BY nombre_cliente;
