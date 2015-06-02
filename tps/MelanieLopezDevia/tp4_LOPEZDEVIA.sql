----------------------
-- TP4 - Integrador --
----------------------


-- Curso 7moC
-- Nombre: Melanie Lopez Devia

--------------------------------------------------------------------------------------------

-- 1 Seleccionar los nombres de todos los productos.
SELECT nombre FROM producto;

-- 2 Seleccionar los nombres y precios de todos los productos.
SELECT  FROM PRODUCTO;

-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
SELECT nombre, precio FROM producto
WHERE precio <=200;

-- 4 Seleccionar el nombre de los productos con un precio entre $60 y $120.
SELECT nombre, precio FROM producto
WHERE precio BETWEEN 60,120;

-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
SELECT nombre, precio*100 FROM producto;

-- 6 Precio promedio de todos los productos.
SELECT AVG(precio)  FROM PRODUCTO;

-- 7 El precio de todos los productos fabricados por el fabricante ID 2.
SELECT precio FROM producto
WHERE id_fabricante=2;

-- 8 La cantidad de productos con un precio mayor o igual a $180.
SELECT COUNT(precio) FROM producto
WHERE precio>=180;

-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
SELECT nombre, precio FROM producto
WHERE precio >=180
ORDER BY precio DESC, NOMBRE;

-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
SELECT * FROM producto
INNER JOIN fabricante
ON PRODUCTO.ID_FABRICANTE = FABRICANTE.ID;

-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
SELECT PRODUCTO.NOMBRE, PRODUCTO.PRECIO, FABRICANTE.NOMBRE FROM producto
INNER JOIN FABRICANTE
ON FABRICANTE.ID=PRODUCTO.ID;

-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
SELECT id_fabricante, AVG(precio)  FROM producto
GROUP BY ID_FABRICANTE;

-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
SELECT FABRICANTE.NOMBRE, AVG(precio) FROM producto
INNER JOIN fabricante
ON ID_FABRICANTE=FABRICANTE.ID
GROUP BY FABRICANTE.NOMBRE;

-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
SELECT FABRICANTE.NOMBRE, AVG(precio) FROM fabricante , producto
WHERE FABRICANTE.ID = ID_FABRICANTE
GROUP BY FABRICANTE.NOMBRE HAVING AVG(precio) >=150.00;

-- 15 Nombre y precio del producto mas barato.
SELECT nombre, precio FROM producto
WHERE precio=(SELECT MIN(precio) FROM producto);

-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
SELECT FABRICANTE.NOMBRE, PRODUCTO.NOMBRE, precio FROM fabricante
INNER JOIN PRODUCTO
ON FABRICANTE.ID = ID_FABRICANTE
WHERE PRECIO=(SELECT MAX (precio) FROM producto WHERE ID_FABRICANTE=FABRICANTE.ID);

-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
INSERT INTO producto(id, nombre, precio, id_fabricante) 
VALUES (18, 'Parlantes', 70, 2);

-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".
UPDATE producto SET nombre='Impresora Laser' 
WHERE id=8;
-- 19 Aplicar un descuento del 10% a todos los productos.
UPDATE producto SET precio=precio * 0.9;

-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
UPDATE producto SET precio=precio * 0.9
WHERE precio>=120;
