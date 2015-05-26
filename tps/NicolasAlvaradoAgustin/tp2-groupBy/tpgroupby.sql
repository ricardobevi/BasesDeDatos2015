--punto 1 Gasto total por cliente.
SELECT nombre_cliente,sum(precio)
FROM venta
GROUP BY nombre_cliente
--punto 2Total facturado por día.
select fecha, sum(precio)
from venta
group by fecha;
--punto3 Total facturado por día y por producto.
select fecha,id, sum(precio)
from venta
group by fecha, id;
--punto4 Cantidad comprada por cliente por fecha.
select fecha,nombre_cliente, sum(precio)
from venta
group by fecha, nombre_cliente;
--punto 5 Cantidad total de unidades vendidas por cliente.
select cantidad,nombre_cliente
from venta 
group by cantidad, nombre_cliente;
