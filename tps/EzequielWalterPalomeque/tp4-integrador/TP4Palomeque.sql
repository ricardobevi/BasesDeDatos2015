----------------------
-- TP4 - Integrador --
----------------------
select * from producto;
select * from fabricante;

-- Curso 7moC
-- Nombre: Ezequiel Palomeque

--------------------------------------------------------------------------------------------

-- 1 Seleccionar los nombres de todos los productos.

SELECT nombre
FROM   producto
ORDER BY nombre;

-- 2 Seleccionar los nombres y precios de todos los productos.

SELECT nombre, precio
FROM   producto
ORDER BY nombre;

-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.

SELECT nombre, precio
FROM   producto
WHERE precio<=200
ORDER BY nombre;

-- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.

SELECT nombre, precio
FROM   producto
WHERE precio<=120 AND precio>=60
ORDER BY nombre;

-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).

SELECT nombre, (precio * 100)
FROM   producto
ORDER BY nombre;

-- 6 Precio promedio de todos los productos.

SELECT AVG(precio)
FROM producto;

-- 7 El precio de todos los productos fabricados por el fabricante ID 2.

SELECT precio
FROM producto
WHERE id_fabricante=2;

-- 8 La cantidad de productos con un precio mayor o igual a $180.

SELECT COUNT(precio)
FROM PRODUCTO
WHERE precio>=180;

-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.

SELECT nombre, precio
FROM producto
WHERE precio>=180
ORDER BY precio DESC, nombre ASC; 

-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.

SELECT *
FROM producto 
JOIN fabricante
ON fabricante.id=producto.id_fabricante;

-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
SELECT producto.nombre, producto.precio, fabricante.nombre
FROM producto
JOIN fabricante
ON producto.id_fabricante=fabricante.id;


-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.

SELECT fabricante.id, AVG(producto.precio)
FROM fabricante
JOIN producto
ON fabricante.id=producto.id_fabricante
GROUP BY fabricante.id;


-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.

SELECT fabricante.nombre, AVG(producto.precio)
FROM fabricante
JOIN producto
ON fabricante.id=producto.id_fabricante
GROUP BY fabricante.nombre;

-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.

SELECT fabricante.nombre, AVG(producto.precio)
FROM fabricante
JOIN producto
ON fabricante.id=producto.id_fabricante
GROUP BY fabricante.nombre
HAVING AVG(producto.precio)>=150;


-- 15 Nombre y precio del producto mas barato.

SELECT nombre, precio
FROM producto
WHERE precio=( SELECT MIN(precio) FROM producto ) ;


-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.

SELECT fabricante.nombre, ( SELECT nombre FROM producto WHERE precio= (SELECT MAX(precio) FROM producto)) , ( SELECT precio FROM producto WHERE precio= (SELECT MAX(precio) FROM producto))
FROM fabricante
JOIN producto
ON fabricante.id=producto.id_fabricante
GROUP BY fabricante.id;


-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.

INSERT INTO producto VALUES(11,'Parlantes',70,2);

-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".

UPDATE producto SET nombre='Impresora Láser'
WHERE nombre='Printer';


-- 19 Aplicar un descuento del 10% a todos los productos.
UPDATE producto SET precio=(precio-(precio/10));

-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.

UPDATE producto SET precio=(precio-(precio/10))
WHERE precio>=120;

--------------------------------------------------------------------------------------------
