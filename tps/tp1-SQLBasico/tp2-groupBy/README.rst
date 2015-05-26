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
	  nombre_cliente varchar(255) default NULL,
	  id_producto integer NULL
	);

	INSERT INTO VENTA (id,fecha,precio,cantidad,nombre_cliente,id_producto) VALUES (1,'11/17/2014','27.35',4,'Colleen',6),(2,'10/15/2014','92.83',9,'Trevor',10),(3,'07/03/2015','79.11',1,'Valentine',4),(4,'05/05/2014','55.48',2,'Leroy',8),(5,'01/13/2015','31.86',2,'Nigel',6),(6,'08/12/2015','62.86',1,'Faith',3),(7,'12/21/2014','23.09',7,'Lucy',10),(8,'07/02/2015','38.26',3,'Garrett',8),(9,'07/26/2014','24.85',7,'Idola',9),(10,'09/11/2014','92.97',5,'Kirsten',8);

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
