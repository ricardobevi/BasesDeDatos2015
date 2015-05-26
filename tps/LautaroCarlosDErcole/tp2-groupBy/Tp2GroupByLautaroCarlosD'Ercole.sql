/* Lautaro Carlos D'Ercole
    1 - Gasto total por cliente.
    2 - Total facturado por día.
    3 - Total facturado por día y por producto.
    4 - Cantidad comprada por cliente por fecha.
    5 - Cantidad total de unidades vendidas por cliente.
*/
/*1*/ SELECT nombre_cliente, SUM(precio) as Total FROM venta GROUP BY nombre_cliente; 
/*2*/ SELECT fecha, SUM(precio) FROM venta GROUP BY fecha;
/*3*/ SELECT fecha,id_producto, SUM(precio) FROM venta GROUP BY fecha, id_producto;
/*4*/ SELECT nombre_cliente, fecha, SUM(cantidad) FROM venta GROUP BY nombre_cliente, fecha;
/*5*/ SELECT nombre_cliente, SUM(cantidad) FROM venta GROUP BY nombre_cliente;
