--tp2 Gimenez javier
-- 1.  Gasto total por cliente.
SELECT nombre_cliente, SUM(precio) FROM venta GROUP BY nombre_cliente;
-- 2. Total facturado por día.
SELECT fecha, SUM(precio * cantidad) FROM venta GROUP BY fecha;
-- 3. Total facturado por día y por producto.
SELECT id_producto, fecha, SUM(precio * cantidad) FROM venta GROUP BY fecha, id_producto;
-- 4. Cantidad comprada por cliente por fecha.
SELECT nombre_cliente, fecha, SUM(cantidad) FROM venta GROUP BY nombre_cliente, fecha;
-- 5. Cantidad total de unidades vendidas por cliente.
SELECT nombre_cliente, SUM(cantidad) FROM venta GROUP BY nombre_cliente;
