--Diego Azpeitia
--Trabajo práctico Nº4
--1 Seleccionar los nombres de todos los productos.
--2 Seleccionar los nombres y precios de todos los productos.
--3 Sleccionar el nombre de los productos con un precio menor o igual a $200.
--4 Sleccionar el nombre de los productos con un precio entre $60 y $120.
--5 Seleccionar el nombre y precio en centavos (precio multiplicado por 100).
--6 Precio promedio de todos los productos.
--7 El precio de todos los productos fabricados por el fabricante ID 2.
--8 La cantidad de productos con un precio mayor o igual a $180.
--9 Seleccionar el nombre y el precio de todos los productos con un precio mayor o igual a $180, ordenar por precio decendente y nombre ascendente.
--10 Seleccionar todos los datos de los productos, incluyendo los datos del fabricante.
--11 Seleccionar nombre, precio y nombre de fabricante del producto.
--12 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el ID del fabricante.
--13 Seleccionar el precio promedio de todos los productos de cada fabricante (una fila por fabricante) mostrando el nombre del fabricante.
--14 Seleccionar los nombres de los fabricantes cuyos productos tengan un precio promedio mayor o igual a $150.
--15 Nombre y precio del producto mas barato.
--16 Seleccionar el nombre de cada fabricante acompañado del nombre y precio del producto más caro de este.
--17 Agregar un nuevo producto: Parlantes, $70, fabricante 2.
--18 Actualizar el nombre del producto 8 a "Impresora Láser".
--19 Aplicar un descuento del 10% a todos los productos.
--20 Aplicar un descuento del 10% a todos los productos con un precio mayor o igual a $120.
--1
select nombre 
from producto;

--2
select nombre,precio
from producto;
--3
select nombre 
from producto
where precio<=200;
--4
select nombre 
from producto
where precio>=60 and precio<=120;
--5
select nombre,precio*100 as centavos
from producto;
--6
select avg(precio) as promedio
from producto;
--7
select precio 
from producto
where id=2;
--8
select count(nombre)
from producto 
where precio>=180;
--9
select nombre,precio
from producto
where precio>=180
ORDER BY nombre ASC, precio DESC;
--10
select *--selecciopnar todo
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id;
--11
select p.nombre,p.precio,f.nombre
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id;
--12
select avg(p.precio),f.id
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id
group by f.id;
--13
select f.nombre,avg(p.precio)
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id
group by f.nombre;
--14
select f.nombre
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id
Group by p.precio,f.nombre--Usamos having en combinación con group by
having avg(p.precio)>=150;--Este se comporta como un where	 
--15
select min(precio),nombre
from producto 
group by precio, nombre;
--16
select max(p.precio),p.nombre,f.nombre
from producto as p join fabricante as f
on p.ID_FABRICANTE = f.id
group by p.precio, p.nombre,f.nombre;
--17
 INSERT INTO PRODUCTO VALUES(11,'Parlantes',70,2);
--18
UPDATE PRODUCTO SET
      NOMBRE = 'Impresora_Laser'
      WHERE ID= 8;
--19
UPDATE PRODUCTO SET
	PRECIO = PRECIO*0.9;
--20
UPDATE PRODUCTO SET
	PRECIO = PRECIO*0.9
	WHERE PRECIO>=120;
