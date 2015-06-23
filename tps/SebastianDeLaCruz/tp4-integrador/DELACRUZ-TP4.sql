----------------------
-- TP4 - Integrador --
----------------------


-- Curso 7moC
-- Nombre: 
-- de la Cruz, Sebastian
--------------------------------------------------------------------------------------------
--Ejercicios:

-- 1 Seleccionar los nombres de todos los productos.

-- 2 Seleccionar los nombres y precios de todos los productos.

-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.

-- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.

-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).

-- 6 Precio promedio de todos los productos.

-- 7 El precio de todos los productos fabricados por el fabricante ID 2.

-- 8 La cantidad de productos con un precio mayor o igual a $180.

-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.

-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.

-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.

-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.

-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.

-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.

-- 15 Nombre y precio del producto mas barato.

-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.

-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.

-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".

-- 19 Aplicar un descuento del 10% a todos los productos.

-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.

--------------------------------------------------------------------------------------------
--Ejercicio 1:
SELECT nombre FROM producto;	
--Ejercicio 2:
SELECT nombre, precio FROM producto;
--Ejercicio 3:
SELECT nombre FROM producto WHERE precio <=200;
--Ejercicio 4:
SELECT nombre FROM producto WHERE precio < 120 AND precio > 60;
--Ejercicio 5:
SELECT nombre,  (precio*100) AS precioCentavos FROM producto; 
--Ejercicio 6:
SELECT avg(precio) AS promedio FROM producto;
--Ejercicio 7:
SELECT precio FROM producto WHERE id_fabricante = 2;
--Ejercicio 8:
SELECT count(precio) AS Cantidad FROM producto WHERE precio >= 180 
--Ejercicio 9:
SELECT nombre, precio FROM producto WHERE precio >= 180
GROUP BY nombre, precio
ORDER BY nombre, precio DESC;
--Ejercicio 10:
SELECT * 
	FROM producto
	JOIN fabricante ON producto.id_fabricante = fabricante.id;
--Ejercicio 11:
SELECT producto.nombre AS nombre, producto.precio AS precio, fabricante.nombre AS nombre_fabricante 
	FROM producto
	JOIN fabricante ON producto.id_fabricante = fabricante.id;
--Ejercicio 12:
SELECT avg(producto.precio) AS precio,producto.id_fabricante AS idFacbricante
	FROM producto
	JOIN fabricante ON producto.id_fabricante = fabricante.id
	GROUP BY  producto.id_fabricante;
--Ejercicio 13:
SELECT avg(producto.precio) AS precio,fabricante.nombre AS idFabricante
	FROM producto
	JOIN fabricante ON producto.id_fabricante = fabricante.id
	GROUP BY fabricante.nombre;
--Ejercicio 14:
SELECT  fabricante.nombre
	FROM fabricante  
 	JOIN producto ON (SELECT avg(producto.precio) FROM producto) >= 150
 	GROUP BY fabricante.nombre;
--Ejercicio 15:
SELECT nombre, precio
 	FROM producto
 	WHERE precio = (SELECT min(precio) FROM producto);
--Ejercicio 16:
SELECT fabricante.nombre, producto.precio,producto.nombre
	FROM fabricante
	JOIN producto ON producto.id_fabricante = fabricante.id
	WHERE producto.precio = (SELECT max(precio) FROM producto
												WHERE producto.id_fabricante = fabricante.id);
--Ejercicio 17:
INSERT INTO producto(id,nombre, precio, id_fabricante) VALUES ('11','Parlantes','70', '2');
--Ejercicio 18:
UPDATE producto
	SET nombre ='Impresola Laser'
	WHERE id = 8;
--Ejercicio 19:
UPDATE producto
	SET precio = (precio * 10/100);
--Ejercicio 20:
UPDATE producto
	SET precio = (precio * 10/100)
	WHERE precio >= 120;
