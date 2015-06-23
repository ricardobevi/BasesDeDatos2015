--Trabajo Practico Nº 2: Group By
--Integrantes:
--Sebastian de la Cruz
--Ejercicios:
--1 - Gasto total por cliente.
--2 - Total facturado por día.
--3 - Total facturado por día y por producto.
--4 - Cantidad comprada por cliente por fecha.
--5 - Cantidad total de unidades vendidas por cliente.
--
--Ejercicio 1:
SELECT nombre_cliente,sum(precio) FROM VENTA GROUP BY nombre_cliente;

--Ejercicio 2:
SELECT fecha, sum(precio) FROM VENTA GROUP BY fecha;

--Ejercicio 3:
SELECT fecha, id_producto, sum(precio) FROM VENTA GROUP BY fecha, id_producto;

--Ejercicio 4:
SELECT fecha, nombre_cliente, sum(cantidad) FROM VENTA GROUP BY nombre_cliente, fecha;

--Ejercicio 5:
SELECT nombre_cliente, sum(cantidad) FROM VENTA GROUP BY nombre_cliente;
