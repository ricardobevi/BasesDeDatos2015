TP2 - GROUP BY
==============

Esquema
-------

Generar el esquema con el siguiente script SQL:

.. code-block:: sql


	CREATE TABLE VENTA (
	  id integer NULL,
	  fecha varchar(255),
	  precio money,
	  cantidad integer NULL,
	  nombre_cliente varchar(255) default NULL
	);

	INSERT INTO VENTA (id,fecha,precio,cantidad,nombre_cliente) VALUES (1,'12/06/2014','$61.07',1,'Rachel'),(2,'08/12/2014','$68.61',3,'Eve'),(3,'08/02/2015','$38.61',1,'Brennan'),(4,'02/22/2015','$71.99',5,'Zenia'),(5,'12/19/2015','$20.30',7,'Shoshana'),(6,'02/11/2016','$7.67',8,'Jack'),(7,'10/05/2015','$32.96',6,'Jerry'),(8,'09/14/2015','$28.62',4,'Bernard'),(9,'11/26/2015','$37.34',8,'McKenzie'),(10,'01/26/2015','$24.76',7,'Irene');


Consignas
---------

Luego generar consultas para resolver los siguientes puntos:

- 1 - Gasto total por cliente.
- 2 - Total facturado por día. 
- 3 - Total facturado por día y por producto.
- 4 - Cantidad comprada por cliente por fecha.
- 5 - Cantidad total de unidades vendidas por cliente.


Entrega
-------

La entrega es hasta antes del 30/04 a las 23:59hs. 
