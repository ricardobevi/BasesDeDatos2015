--Damian Ruscitto
--1
 SELECT nombre_cliente ,precio*cantidad  FROM VENTA GROUP BY nombre_cliente,precio*cantidad;
--2
 SELECT  fecha,precio*cantidad  FROM VENTA GROUP BY fecha,precio*cantidad
--3
 SELECT precio*cantidad  ,fecha,id_producto FROM VENTA GROUP BY fecha,id_producto,precio*cantidad ; 
--4
 SELECT cantidad ,nombre_cliente, fecha FROM VENTA GROUP BY nombre_cliente,fecha,cantidad; 
--5
 SELECT cantidad,nombre_cliente FROM VENTA GROUP BY nombre_cliente,cantidad;
