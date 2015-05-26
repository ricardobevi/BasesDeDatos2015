/*TP Integrador Ferreira*/

1) Seleccionar los nombres de todos los productos.

SELECT NOMBRE
FROM PRODUCTO;

2) Seleccionar los nombres y precios de todos los productos.

SELECT NOMBRE, PRECIO
FROM PRODUCTO;

3) Seleccionar el nombre de los productos con un precio menor o igual a $200.

SELECT NOMBRE
FROM PRODUCTO
WHERE PRECIO <= 200;

4) Seleccionar el nombre de los productos con un precio entre $60 y $120.

SELECT NOMBRE
FROM PRODUCTO
WHERE PRECIO >= 60 AND PRECIO <= 120;

5) Seleccionar el nombre y precio en centavos (precio multiplicado por 100).

SELECT NOMBRE, (PRECIO * 100)
FROM PRODUCTO;

6) Precio promedio de todos los productos.

SELECT AVG(PRECIO)
FROM PRODUCTO;

7) El precio de todos los productos fabricados por el fabricante ID 2.

SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE ID_FABRICANTE = 2;

8) La cantidad de productos con un precio mayor o igual a $180.

SELECT COUNT(PRECIO)
FROM PRODUCTO
WHERE PRECIO >= 180;

9) Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio descendente y nombre ascendente.

SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO >= 180
ORDER BY NOMBRE ASC, PRECIO DESC;

10) Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.

SELECT *
FROM PRODUCTO
JOIN FABRICANTE
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE;

11) Seleccionar nombre, precio y nombre de fabricante del producto.

SELECT PRODUCTO.NOMBRE, PRODUCTO.PRECIO, FABRICANTE.NOMBRE
FROM PRODUCTO
JOIN FABRICANTE
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE;

12) Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.

SELECT FABRICANTE.ID, AVG(PRODUCTO.PRECIO)
FROM FABRICANTE
JOIN PRODUCTO
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE
GROUP BY FABRICANTE.ID;

13) Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.

SELECT FABRICANTE.NOMBRE, AVG(PRODUCTO.PRECIO)
FROM FABRICANTE
JOIN PRODUCTO
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE
GROUP BY FABRICANTE.NOMBRE;

14) Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.

SELECT FABRICANTE.NOMBRE, AVG(PRODUCTO.PRECIO)
FROM FABRICANTE
JOIN PRODUCTO
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE
GROUP BY FABRICANTE.NOMBRE
HAVING AVG(PRODUCTO.PRECIO)>=150

15) Nombre y precio del producto mas barato.

SELECT NOMBRE, PRECIO
FROM PRODUCTO
WHERE PRECIO = (SELECT MIN(PRECIO) FROM PRODUCTO);

16) Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.

SELECT FABRICANTE.NOMBRE, (SELECT NOMBRE FROM  PRODUCTO WHERE PRECIO= (SELECT MAX(PRECIO) FROM PRODUCTO)) , (SELECT PRECIO FROM PRODUCTO WHERE PRECIO= (SELECT MAX(PRECIO) FROM PRODUCTO))
FROM FABRICANTE
JOIN PRODUCTO
ON FABRICANTE.ID=PRODUCTO.ID_FABRICANTE;
GROUP BY FABRICANTE.NOMBRE

17) Agregar un nuevo producto: Parlantes, $70, fabricante 2.

INSERT INTO PRODUCTO VALUES (11,'PARLANTES',70,2);

18) Actualizar el nombre del producto 8 a "Impresora Láser".

UPDATE PRODUCTO
SET NOMBRE = 'IMPRESORA LASER'
WHERE NOMBRE='PRINTER';

19) Aplicar un descuento del 10% a todos los productos.

UPDATE PRODUCTO
SET PRECIO = (PRECIO-(PRECIO*0.10);

20) Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.

UPDATE PRODUCTO
SET PRECIO = (PRECIO-(PRECIO*0.10)
WHERE PRECIO >=120;
