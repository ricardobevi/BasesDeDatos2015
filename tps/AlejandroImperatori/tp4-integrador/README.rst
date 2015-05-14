TP4 - Integrador
================

Esquema
-------

Generar el esquema con el siguiente script SQL:

.. code-block:: sql

 CREATE TABLE FABRICANTE (
        ID INTEGER PRIMARY KEY NOT NULL,
        NOMBRE TEXT NOT NULL 
 );

 CREATE TABLE PRODUCTO (
        ID INTEGER PRIMARY KEY NOT NULL,
        NOMBRE TEXT NOT NULL ,
        PRECIO REAL NOT NULL ,
        ID_FABRICANTE INTEGER NOT NULL,
        FOREIGN KEY (ID_FABRICANTE) REFERENCES FABRICANTE(ID)
 );

 INSERT INTO FABRICANTE VALUES(1,'Sony');
 INSERT INTO FABRICANTE VALUES(2,'Creative Labs');
 INSERT INTO FABRICANTE VALUES(3,'Hewlett-Packard');
 INSERT INTO FABRICANTE VALUES(4,'Iomega');
 INSERT INTO FABRICANTE VALUES(5,'Fujitsu');
 INSERT INTO FABRICANTE VALUES(6,'Winchester');

 INSERT INTO PRODUCTO VALUES(1,'Hard drive',240,5);
 INSERT INTO PRODUCTO VALUES(2,'Memory',120,6);
 INSERT INTO PRODUCTO VALUES(3,'ZIP drive',150,4);
 INSERT INTO PRODUCTO VALUES(4,'Floppy disk',5,6);
 INSERT INTO PRODUCTO VALUES(5,'Monitor',240,1);
 INSERT INTO PRODUCTO VALUES(6,'DVD drive',180,2);
 INSERT INTO PRODUCTO VALUES(7,'CD drive',90,2);
 INSERT INTO PRODUCTO VALUES(8,'Printer',270,3);
 INSERT INTO PRODUCTO VALUES(9,'Toner cartridge',66,3);
 INSERT INTO PRODUCTO VALUES(10,'DVD burner',180,2);




Consignas
---------

- 1 Seleccionar los nombres de todos los productos.
- 2 Seleccionar los nombres y precios de todos los productos.
- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.
- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
- 6 Precio promedio de todos los productos.
- 7 El precio de todos los productos fabricados por el fabricante ID 2.
- 8 La cantidad de productos con un precio mayor o igual a $180.
- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
- 15 Nombre y precio del producto mas barato.
- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
- 18 Actualizar el nombre del producto 8 a "Impresora Láser".
- 19 Aplicar un descuento del 10% a todos los productos.
- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.

Entrega
-------

Hay tiempo hasta el 13/05 a las 23:59.
