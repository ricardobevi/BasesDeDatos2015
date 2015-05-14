----------------------
-- TP4 - Integrador --
----------------------


-- Curso 7º "C"
-- Nombre: Daddino Joaquìn

--------------------------------------------------------------------------------------------

-- 1 Seleccionar los nombres de todos los productos.

--1
SELECT nombre FROM producto;


-- 2 Seleccionar los nombres y precios de todos los productos.

--2
SELECT nombre, precio FROM producto;

-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.

--3
SELECT nombre FROM producto
		WHERE precio <= 200;

-- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.

--4
SELECT nombre FROM producto
		WHERE precio >= 60 AND precio <= 120;

-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).

--5
SELECT nombre, precio*100 as centavos FROM producto;

-- 6 Precio promedio de todos los productos.

--6
SELECT avg(precio) as prom FROM producto;

-- 7 El precio de todos los productos fabricados por el fabricante ID 2.

--7
SELECT precio FROM producto
		WHERE id_fabricante = 2;

-- 8 La cantidad de productos con un precio mayor o igual a $180.

--8
SELECT count(*) as cantidad FROM producto
		WHERE precio >= 180;

-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio descendente y nombre ascendente.

--9
SELECT nombre, precio FROM producto
		WHERE precio >= 180
		GROUP BY nombre, precio
		ORDER BY nombre, precio DESC; 

-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.

--10
SELECT *
		FROM producto
		JOIN fabricante ON producto.id_fabricante = fabricante.id;

-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.

--11
SELECT producto.nombre, producto.precio, fabricante.nombre 
		FROM producto
		JOIN fabricante ON producto.id_fabricante = fabricante.id;

-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.

--12
SELECT fabricante.id, avg(producto.precio) as promedio
		FROM fabricante
		JOIN producto ON fabricante.id = producto.id_fabricante
		GROUP BY fabricante.id
		ORDER BY fabricante.id;

-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.

--13
SELECT fabricante.nombre, avg(producto.precio) as promedio
		FROM fabricante
		JOIN producto ON fabricante.id = producto.id_fabricante
		GROUP BY fabricante.nombre
		ORDER BY fabricante.nombre;


-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.

--14
SELECT fabricante.nombre
		FROM fabricante
		JOIN producto ON producto.precio >= (SELECT avg(precio) FROM producto WHERE producto.id_fabricante = fabricante.id)
		WHERE producto.id_fabricante = fabricante.id
		GROUP BY fabricante.nombre;


-- 15 Nombre y precio del producto mas barato.

--15
SELECT nombre
		FROM producto
		WHERE precio = (SELECT min(precio) FROM producto);

-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.

--16
SELECT fabricante.nombre, producto.nombre, producto.precio
		FROM fabricante
		JOIN producto ON producto.id_fabricante = fabricante.id
		WHERE producto.precio = (SELECT max(precio) FROM producto WHERE producto.id_fabricante = fabricante.id);
		GROUP BY fabricante.nombre, producto.nombre, producto.precio;

-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.

--17
INSERT INTO producto (id, nombre,precio,id_fabricante)
		VALUES (11,'Parlantes','70','2');

-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".

--18
UPDATE producto
SET nombre = "Impresora Laser"
WHERE id = 8;


-- 19 Aplicar un descuento del 10% a todos los productos.

--19
UPDATE producto
SET precio = (precio*0.9);


-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.

--20
UPDATE producto
SET precio = (precio*0.9)
WHERE precio >= 120;


--------------------------------------------------------------------------------------------




