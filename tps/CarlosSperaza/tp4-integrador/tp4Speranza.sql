 -- Curso 7moC
--- Nombre: 
+-- Nombre: Carlos Speranza
 
 --------------------------------------------------------------------------------------------
 
 -- 1 Seleccionar los nombres de todos los productos.
-
+select nombre
+from producto;
 -- 2 Seleccionar los nombres y precios de todos los productos.
+select nombre,precio
+from producto;
 
 -- 3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
+select nombre,precio
+from producto
+where precio<=200;
 
 -- 4 Sleccionar el nombre de los productos con un precio entre $60 y $120.
+select nombre
+from producto
+where precio>=60 and precio<=120;
 
 -- 5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
+select nombre,precio*100 as centavos
+from producto;
 
 -- 6 Precio promedio de todos los productos.
+select avg(precio) as prom_precio
+from producto;
 
 -- 7 El precio de todos los productos fabricados por el fabricante ID 2.
+select precio
+from producto 
+where id_fabricante=2;
 
 -- 8 La cantidad de productos con un precio mayor o igual a $180.
+select count(nombre)
+from producto
+where precio>=180;
 
 -- 9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
+select nombre, precio 
+from producto
+where precio >= 180
+order by nombre asc, precio desc;
 
 -- 10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
+select * 
+from producto join fabricante 
+on producto.ID_fabricante = fabricante.id;
 
 -- 11 Seleccionar nombre, precio y nombre de fabricante del producto.
+select producto.nombre, producto.precio, fabricante.nombre
+from producto join fabricante
+on producto.id_fabricante=fabricante.id;
 
 -- 12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
+select fabricante.id, avg(producto.precio) as promedio_precio
+from producto join fabricante
+on producto.id_fabricante=fabricante.id
+group by fabricante.id;
 
 -- 13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
+select fabricante.nombre, avg(producto.precio) as promedio_precio
+from producto join fabricante
+on producto.id_fabricante=fabricante.id
+group by fabricante.nombre;
 
 -- 14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
+select fabricante.nombre, avg(producto.precio) as promedio
+from fabricante join producto
+on producto.id_fabricante = fabricante.id
+group by fabricante.nombre
+having avg(producto.precio)>=150;
 
 -- 15 Nombre y precio del producto mas barato.
+select nombre, precio
+from producto
+where precio=(select min(precio) from producto);
 
 -- 16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
+select fabricante.nombre, producto.nombre, producto.precio
+from fabricante join producto
+on producto.id_fabricante = fabricante.id
+where producto.precio =(select max(precio) from producto)
+group by fabricante.nombre, producto.nombre, producto.precio;
 
 -- 17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
+insert into producto 
+values (22,'parlantes',70,2 );
 
 -- 18 Actualizar el nombre del producto 8 a "Impresora Láser".
+update producto 
+set nombre ='impresora_laser'
+where id = 8;
 
 -- 19 Aplicar un descuento del 10% a todos los productos.
+update producto
+set precio = precio- 0.10*precio;
 
 -- 20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
-
+update producto
+set precio = precio- 0.10*precio
+where precio >=120;
 --------------------------------------------------------------------------------------------
+
+
