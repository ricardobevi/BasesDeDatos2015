--NICOLAS ALVARADO AGUSTIN 7ºC

--1Seleccionar los nombres de todos los productos.
SELECT nombre FROM producto;
--2Seleccionar los nombres y precios de todos los productos.
SELECT nombre, precio FROM producto;
--3Sleccionar el nombre de los productos con un precio menor o igual a $200.
SELECT nombre FROM producto
		WHERE precio <= 200;
--4Sleccionar el nombre de los productos con un precio entre $60 y $120.
SELECT nombre FROM producto
		WHERE precio >= 60 AND precio <= 120;
--5Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
sELECT nombre, precio*100 as centavos FROM producto;
--6Precio promedio de todos los productos.
SELECT avg(precio) as prom FROM producto;
--7El precio de todos los productos fabricados por el fabricante ID 2.
SELECT precio FROM producto
		WHERE id_fabricante = 2;
--8La cantidad de productos con un precio mayor o igual a $180.
SELECT count(*) as cantidad FROM producto
		WHERE precio >= 180;
--9Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio descendente y nombre ascendente.
SELECT nombre, precio FROM producto
		WHERE precio >= 180
		GROUP BY nombre, precio
		ORDER BY nombre, precio DESC;
--10Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
SELECT *
		FROM producto
		JOIN fabricante ON producto.id_fabricante = fabricante.id;
--11seleccionar nombre, precio y nombre de fabricante del producto.
SELECT producto.nombre, producto.precio, fabricante.nombre 
		FROM producto
		JOIN fabricante ON producto.id_fabricante = fabricante.id;
--12Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
SELECT fabricante.id, avg(producto.precio) as promedio
		FROM fabricante
		JOIN producto ON fabricante.id = producto.id_fabricante
		GROUP BY fabricante.id
		ORDER BY fabricante.id;
--13Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
SELECT fabricante.nombre, avg(producto.precio) as promedio
		FROM fabricante
		JOIN producto ON fabricante.id = producto.id_fabricante
		GROUP BY fabricante.nombre
		ORDER BY fabricante.nombre;
--14Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
SELECT fabricante.nombre
		FROM fabricante
		JOIN producto ON producto.precio >= (SELECT avg(precio) FROM producto WHERE producto.id_fabricante = fabricante.id)
		WHERE producto.id_fabricante = fabricante.id
		GROUP BY fabricante.nombre;
--15Nombre y precio del producto mas barato.
SELECT nombre
		FROM producto
		WHERE precio = (SELECT min(precio) FROM producto);
--16Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
SELECT fabricante.nombre, producto.nombre, producto.precio
		FROM fabricante
		JOIN producto ON producto.id_fabricante = fabricante.id
		WHERE producto.precio = (SELECT max(precio) FROM producto WHERE producto.id_fabricante = fabricante.id);
		GROUP BY fabricante.nombre, producto.nombre, producto.precio;
--17Agregar un nuevo producto: Parlantes, $70, fabricante 2.
INSERT INTO producto (id, nombre,precio,id_fabricante)
		VALUES (11,'Parlantes','70','2');
--18actualizar el nombre del producto 8 a "Impresora Láser".
UPDATE producto
SET nombre = "Impresora Laser"
WHERE id = 8;
--19Aplicar un descuento del 10% a todos los productos.
UPDATE producto
SET precio = (precio*0.9);
--20Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
UPDATE producto
SET precio = (precio*0.9)
WHERE precio >= 120;


