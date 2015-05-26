--Imperatori Alejandro 
/*
1 - Gasto total por cliente.
2 - Total facturado por día.
3 - Total facturado por día y por producto.
4 - Cantidad comprada por cliente por fecha.
5 - Cantidad total de unidades vendidas por cliente.
*/

--1
SELECT nombre_cliente, SUM(precio*cantidad) AS Total
FROM VENTA
GROUP BY nombre_cliente;
--2
SELECT fecha, SUM(precio*cantidad) AS total
FROM VENTA
GROUP BY fecha;
--3
SELECT SUM(precio*cantidad) As Total, fecha, id_producto
FROM VENTA
GROUP BY fecha, id_producto;
--4
SELECT SUM(cantidad), nombre_cliente, fecha
FROM VENTA
GROUP BY nombre_cliente, fecha; 
--5
SELECT SUM(cantidad), nombre_cliente
FROM VENTA
GROUP BY nombre_cliente;
