-- TP Nº 2 BASE DE DATOS Alumno: Arias

SELECT * FROM VENTA;
--1

SELECT nombre_cliente, sum(precio)
FROM VENTA
GROUP BY nombre_cliente;

--2

SELECT fecha, sum(precio)
FROM VENTA
GROUP BY fecha;

--3

SELECT fecha,id_producto, sum(precio)
FROM VENTA
GROUP BY fecha,id_producto;

--4

SELECT nombre_cliente,fecha, sum(cantidad)
FROM VENTA
GROUP BY nombre_cliente,fecha;

--5

SELECT nombre_cliente, sum(cantidad)
FROM VENTA
GROUP BY nombre_cliente;
