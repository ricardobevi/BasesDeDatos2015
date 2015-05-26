----------------------
-- TP4 - Integrador --
----------------------


-- Curso 7moC
-- Nombre: Nicolas Manograsso

--------------------------------------------------------------------------------------------

-- 1 Seleccionar los nombres de todos los productos.
SELECT NOMBRE
FROM PRODUCTO;
-- 2 Seleccionar los nombres y precios de todos los productos.
SELECT NOMBRE, PRECIO
FROM PRODUCTO;
-- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO <=200;
-- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO <=120 AND PRECIO >=60;
-- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
SELECT NOMBRE, PRECIO*100 AS PRECIO_CENTAVOS
FROM PRODUCTO;
-- 6 Precio promedio de todos los productos.
SELECT AVG(PRECIO) AS PRECIO_PROMEDIO
FROM PRODUCTO;
-- 7 El precio de todos los productos fabricados por el fabricante ID 2.
SELECT PRECIO 
FROM PRODUCTO
WHERE ID_FABRICANTE=2;
-- 8 La cantidad de productos con un precio mayor o igual a $180.
SELECT COUNT(PRECIO) AS CANTIDAD
FROM PRODUCTO
WHERE PRECIO>=180;
-- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO >=180
ORDER BY PRECIO DESC, NOMBRE;
-- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
SELECT *
FROM PRODUCTO
INNER JOIN FABRICANTE
ON PRODUCTO.ID_FABRICANTE = FABRICANTE.ID;
-- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
SELECT PRODUCTO.NOMBRE, PRODUCTO.PRECIO, FABRICANTE.NOMBRE AS NOMBRE_FABRICANTE
FROM PRODUCTO
INNER JOIN FABRICANTE
ON FABRICANTE.ID=PRODUCTO.ID;
-- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
SELECT ID_FABRICANTE, AVG(PRECIO) AS PRECIO_PROMEDIO
FROM PRODUCTO
GROUP BY ID_FABRICANTE;
-- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
SELECT FABRICANTE.NOMBRE, AVG(PRECIO) AS PRECIO_PROMEDIO
FROM PRODUCTO
INNER JOIN FABRICANTE
ON ID_FABRICANTE=FABRICANTE.ID
GROUP BY FABRICANTE.NOMBRE;
-- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
SELECT FABRICANTE.NOMBRE, AVG(PRECIO) AS PROMEDIO_PRECIO
FROM FABRICANTE, PRODUCTO
WHERE FABRICANTE.ID = ID_FABRICANTE
GROUP BY FABRICANTE.NOMBRE HAVING AVG(Precio) >=150.00;
-- 15 Nombre y precio del producto mas barato.
SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO=(SELECT MIN(PRECIO) FROM PRODUCTO);
-- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
SELECT FABRICANTE.NOMBRE, PRODUCTO.NOMBRE, PRECIO
FROM FABRICANTE
INNER JOIN PRODUCTO
ON FABRICANTE.ID = ID_FABRICANTE
WHERE PRECIO=(SELECT MAX(PRECIO) FROM PRODUCTO WHERE ID_FABRICANTE=FABRICANTE.ID);
-- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
INSERT INTO PRODUCTO(ID, NOMBRE, PRECIO, ID_FABRICANTE) VALUES (18, 'Parlantes', 70, 2);
-- 18 Actualizar el nombre del producto 8 a "Impresora Láser".
UPDATE PRODUCTO SET NOMBRE='Impresora Laser' WHERE ID=8;
-- 19 Aplicar un descuento del 10% a todos los productos.
UPDATE PRODUCTO SET PRECIO=PRECIO * 0.9;
-- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
UPDATE PRODUCTO SET PRECIO=PRECIO*0.9 WHERE PRECIO>=120;
--------------------------------------------------------------------------------------------
