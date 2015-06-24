-- Teo Iovine
-- Trabajo práctico Nº2: Grop By
-- 1 - Gasto total por cliente.
-- 2 - Total facturado por día.
-- 3 - Total facturado por día y por producto.
-- 4 - Cantidad comprada por cliente por fecha.
-- 5 - Cantidad total de unidades vendidas por cliente.
-- Nota: Asumo que el dato contenido en el campo "precio" es el total de la compra

-- 1
SELECT SUM(precio) as gasto, nombre_cliente as nombre
  GROUP BY nombre_cliente;
  
-- 2
 SELECT SUM(precio) as total, fecha;
  GROUP BY fecha;
  
-- 3
  SELECT SUM(precio) as total, fecha, id_producto
    GROUP BY fecha, id_producto;

-- 4
  SELECT SUM(cantidad), nombre_cliente as nombre, fecha
    GROUP BY nombre_cliente, fecha;

-- 5
  SELECT SUM(cantidad), nombre_cliente as nombre
    GROUP BY nombre_cliente;
