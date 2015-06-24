----------------------
-- TP4 - Integrador --
----------------------


-- Curso 7moC
-- Nombre: damian ruscitto

--------------------------------------------------------------------------------------------

-- 1 Seleccionar los nombres de todos los productos.
SELECT nombre FROM producto;
-- 2 Seleccionar los nombres y precios de todos los productos.
SELECT nombre,precio FROM producto;
-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
SELECT nombre FROM producto WHERE precio<=200;
-- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.
SELECT nombre FROM producto WHERE precio>=60 AND precio<=120;
-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
SELECT nombre,(precio*100) as Precio_en_Centavos FROM producto;
-- 6 Precio promedio de todos los productos.
SELECT AVG(precio) AS Promedio FROM producto;
-- 7 El precio de todos los productos fabricados por el fabricante ID 2.
SELECT precio FROM producto WHERE id_fabricante=2;
-- 8 La cantidad de productos con un precio mayor o igual a $180.
SELECT COUNT(id) FROM producto WHERE precio>=180;
-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
SELECT nombre,precio FROM producto WHERE precio>=180 ORDER BY nombre ASC , precio DESC;  
-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
SELECT * FROM producto JOIN fabricante ON producto.id_fabricante=fabricante.id;
-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
SELECT fabricante.nombre ,producto.nombre , producto.precio FROM producto JOIN fabricante ON fabricante.id=producto.id_fabricante;
-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
SELECT fabricante.id , AVG(producto.precio) FROM producto JOIN fabricante ON fabricante.id=producto.id_fabricante GROUP BY fabricante.id;
-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
SELECT fabricante.nombre , AVG(producto.precio) FROM producto JOIN fabricante ON fabricante.id=producto.id_fabricante GROUP BY fabricante.id;
-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
SELECT fabricante.nombre FROM fabricante JOIN producto ON producto.id_fabricante=fabricante.id WHERE producto.precio>=(SELECT AVG(producto.precio) FROM producto) GROUP BY fabricante.id;	
-- 15 Nombre y precio del producto mas barato.
SELECT nombre,precio FROM producto WHERE precio = (SELECT MIN(precio) FROM producto);
-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
SELECT fabricante.nombre, producto.nombre, producto.precio FROM fabricante JOIN producto ON precio = (SELECT MAX(precio) FROM producto);
-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
INSERT INTO producto (id, nombre, precio, id_fabricante) VALUES ( '11','parlantes', '70', '2');
-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".
UPDATE producto SET nombre = 'Impresora Laser' WHERE id=8;
-- 19 Aplicar un descuento del 10% a todos los productos.
UPDATE producto SET precio = precio*0.90;
-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
UPDATE producto SET precio = precio*0.90 WHERE precio >= 120;
--------------------------------------------------------------------------------------------
