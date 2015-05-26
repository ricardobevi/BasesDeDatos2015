/*
ALUMNO: William Alvarez
1 - Gasto total por cliente.
2 - Total facturado por día.
3 - Total facturado por día y por producto.
4 - Cantidad comprada por cliente por fecha.
5 - Cantidad total de unidades vendidas por cliente.
*/

1-
select nombre_cliente as cliente, (precio*cantidad) as total_cliente 
from VENTA
order by total_cliente;
2-
select fecha as fecha, sum(precio*cantidad) as total_dia 
from VENTA
GROUP BY fecha order by fecha;
3-
select fecha as fecha, sum(precio*cantidad) as total_dia, id_producto as producto
from VENTA 
group by producto, fecha
order by fecha;
4-
select nombre_cliente as cliente, sum(precio*cantidad) as total_compra, fecha as fecha
from VENTA
group by nombre_cliente, fecha
order by nombre_cliente;
5-
select nombre_cliente as cliente, sum(cantidad) as unidades_vendidas 
from VENTA
group by nombre_cliente
order by nombre_cliente;
