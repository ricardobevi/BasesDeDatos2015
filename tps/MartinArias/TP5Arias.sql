--TP nº 5 Arias Ramirez
CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
	razon_social VARCHAR (20),
	dni_cuil varchar (15),
	fecha_alta DATE,
	UNIQUE(id)
	);

CREATE TABLE factura (
	id SERIAL PRIMARY KEY,
	num_factura VARCHAR (20),
	fecha DATE,
	fecha_pago DATE,
	id_client SERIAL REFERENCES cliente(id),
	UNIQUE(id)
	);

CREATE TABLE producto (
	id SERIAL PRIMARY KEY,
	precio_unitario DECIMAL ,
	stock INT
	);

CREATE TABLE factura_producto (
	id_factura SERIAL REFERENCES factura(id),
	id_producto SERIAL REFERENCES producto(id),
	cantidad INT
	);


---------------

SELECT * FROM cliente
INSERT INTO cliente (razon_social,dni_cuil,fecha_alta)
VALUES  ('Juan',39333132,'28-10-1990'),
	('Jimmy',39333000,'20-05-1999'),
	('Joaquin',45312000,'22-11-1980'),
	('Ariel',22322012,'02-01-1986'),
	('Julian',50333000,'11-09-1983');
--...................................
SELECT * FROM factura
INSERT INTO factura (num_factura, fecha, fecha_pago)
VALUES  ('1111','20-02-1980','20-03-1980'),
	('2222','21-02-1980','21-03-1980'),
	('3333','22-02-1980','22-03-1980'),
	('4444','23-02-1980','23-03-1980'),
	('5555','24-02-1980','24-03-1980');
--...................................

SELECT * FROM producto

INSERT INTO producto (precio_unitario, stock)
VALUES 	('10','1'),
	('20','2'),
	('30','3'),
	('40','4'),
	('50','5');

--...................................

SELECT * FROM factura_producto 

INSERT INTO factura_producto (cantidad)
VALUES	('123'),
	('345'),
	('678'),
	('901'),
	('100');

--....................................
DATA DE CLIENTE
-.....................................

INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ria Boone',97034065,'27-08-87');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Raymond Gallegos',99458103,'30-09-98');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Alden Bray',84125504,'29-12-06');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Heidi Stout',91605721,'23-12-84');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Bernard Livingston',37202888,'31-08-88');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Mohammad Meyers',92266441,'13-04-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Lilah Cunningham',78132633,'19-06-15');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Donna Bradford',68753561,'20-09-97');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Darius Johnston',93614170,'01-06-94');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Craig Moon',90144520,'13-05-01');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Lareina Doyle',47214412,'17-10-84');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Hannah Wolfe',67868427,'08-11-13');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Blythe Foreman',77198939,'11-03-82');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Mark Carrillo',62501416,'07-12-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ebony Reilly',78406461,'28-09-99');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Fay Burt',41836835,'30-10-94');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Sade Blackburn',33936184,'05-08-02');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Evan Tran',77685706,'03-11-00');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Dieter Brady',48448800,'25-03-04');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Amir Ferguson',93100248,'19-07-82');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Jada Ayers',49442215,'12-08-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ferdinand Rush',50594867,'28-10-10');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Margaret Bryan',62346964,'12-10-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Hayes Cortez',52092911,'12-12-97');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Amy Kelley',69017988,'17-11-92');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Holmes Cochran',37654478,'17-02-15');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Priscilla Savage',75728583,'28-04-99');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Cade Collins',87658301,'13-07-06');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Gray Mcclain',34505929,'07-12-90');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Raven Acosta',38630442,'10-04-83');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Callum Kim',98603021,'17-11-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Bianca Stevenson',73072841,'11-10-12');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ashely Rhodes',44543983,'02-03-93');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Barbara Mercado',91870624,'06-05-97');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Zenia Keller',78405029,'23-12-99');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Carter Knowles',96431411,'27-06-94');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Neil Holloway',48571411,'11-12-83');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Amy Zamora',89302981,'31-03-05');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Jillian Stevens',39753707,'03-05-86');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Montana Ramirez',76083225,'29-05-88');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Lamar Hays',46801070,'22-12-98');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Cade Hoffman',48019413,'12-08-02');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Hyacinth Clay',77775149,'15-09-83');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Kaitlin Reed',93454338,'31-05-85');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Gail Carey',70828773,'20-03-87');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Mona Irwin',64344386,'19-04-14');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Fuller Witt',47297963,'06-04-94');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Castor Orr',62068438,'20-12-15');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Gail Arnold',34434817,'29-04-03');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Fleur King',83934969,'03-01-93');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Keelie Beasley',41557860,'07-03-11');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Herrod Rhodes',98998679,'03-07-90');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Rogan Cherry',85049158,'23-05-14');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Kimberly Petty',47570596,'21-03-86');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Moana Roman',49395582,'27-02-01');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Carly Stuart',91933128,'10-12-14');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Debra Rojas',59431900,'28-12-07');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Lillith Allen',64133796,'31-08-81');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Zelenia Parrish',62213760,'02-03-88');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Wendy Burgess',34188760,'02-02-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Clayton Briggs',60820702,'23-11-80');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Austin Owen',91366722,'09-07-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Isadora Hays',34543505,'09-10-10');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Carol Becker',38622030,'11-07-91');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ronan Butler',96973438,'25-04-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Wade Wheeler',85798355,'19-07-02');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Austin Swanson',52932765,'19-08-97');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Maya Hanson',49831168,'12-06-86');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Andrew Cain',75485200,'05-06-98');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Clarke Woodard',64788524,'23-05-95');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Ferris Cortez',42378076,'24-12-88');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Axel Boyer',61315792,'21-02-06');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Hermione Lester',66776665,'31-03-94');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Sydnee Mayer',74332371,'28-05-91');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Fleur Long',81810846,'06-09-96');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Benjamin Ford',76848117,'14-06-87');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Thomas Hobbs',97731299,'03-12-87');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Regina Galloway',65915505,'19-01-03');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Urielle Hubbard',35658460,'22-01-85');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Maxwell Walton',61062630,'17-01-11');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Indigo Wong',58756305,'16-04-03');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Xyla Mason',49007283,'11-09-15');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Hakeem Pennington',69190638,'08-05-84');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Stacy Fry',64247292,'20-06-01');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Scott Rodriguez',91121935,'17-08-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Skyler Brady',71859009,'28-08-92');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Kadeem Wilkins',70914347,'29-11-82');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Blaine Bolton',90328711,'03-04-82');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Aladdin Terry',38638406,'22-07-03');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Cooper Munoz',67877152,'30-11-81');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Gemma Brewer',46126488,'15-06-12');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Andrew Hurst',64290941,'30-10-93');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Lois Maxwell',82549828,'08-05-97');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Dominique Michael',47726501,'14-05-13');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Sydney Mosley',56328987,'02-11-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Gretchen Hoover',56281293,'16-06-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Larissa Navarro',74623316,'03-11-95');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Sonia Oliver',37806347,'06-11-06');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Halee Stewart',71567046,'06-02-89');
INSERT INTO "cliente" (razon_social,dni_cuil,fecha_alta) VALUES ('Buffy Walsh',83100615,'18-09-83');

---------------------
DATA FACUTRA

INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6289,'02-11-02','23-06-92');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5867,'08-03-89','26-07-92');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7872,'03-06-93','11-06-93');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8191,'07-11-07','06-10-86');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5614,'04-01-87','11-03-96');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5767,'03-07-93','14-09-09');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6812,'17-09-05','10-05-93');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5156,'18-05-97','29-09-04');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5047,'14-02-83','04-05-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6195,'11-09-92','04-01-99');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8822,'17-07-14','13-07-14');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6305,'21-07-97','14-11-01');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5490,'16-10-07','24-04-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5219,'21-05-13','26-05-88');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5684,'24-10-92','30-03-82');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7487,'16-11-83','19-05-07');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7021,'18-07-05','04-10-94');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8978,'20-05-01','19-05-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6329,'23-04-09','22-10-07');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7890,'07-04-97','21-08-84');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5134,'01-06-97','09-05-92');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7626,'22-12-99','19-09-96');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6395,'07-04-98','22-02-08');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7126,'21-01-96','19-11-82');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5325,'20-03-10','23-02-11');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5285,'25-08-84','02-07-04');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8303,'24-09-12','03-03-96');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5620,'02-04-82','08-07-99');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7750,'03-09-03','17-08-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5048,'11-04-06','28-02-04');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6839,'01-01-01','10-01-03');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8175,'22-11-05','17-08-87');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5369,'03-10-99','10-04-92');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7030,'01-01-09','17-11-96');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7640,'11-04-05','26-11-99');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8873,'01-01-95','07-05-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8404,'05-07-99','16-08-03');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8242,'22-01-87','13-07-92');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6576,'26-11-84','16-09-81');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8198,'07-03-82','11-08-11');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5568,'10-07-94','13-02-89');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5912,'26-02-14','25-03-89');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6034,'27-08-94','07-08-14');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8189,'09-05-10','16-03-99');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7936,'22-05-82','22-06-02');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8415,'09-12-96','12-06-12');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7723,'04-11-04','04-07-12');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6181,'25-05-10','17-07-97');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7803,'10-05-00','02-08-97');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6377,'14-08-10','10-01-84');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8740,'19-06-09','21-10-94');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7457,'14-02-01','28-04-93');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7522,'02-04-14','19-08-06');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8550,'19-06-14','10-12-03');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6453,'16-10-00','10-07-83');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6731,'18-12-90','05-07-81');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7363,'22-08-97','20-04-12');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5627,'23-07-98','22-01-01');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6609,'29-03-93','28-01-16');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7254,'22-06-07','16-03-15');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5047,'14-02-88','18-12-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6873,'22-05-98','04-03-02');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7252,'07-09-10','17-10-82');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7955,'15-09-11','07-07-82');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8394,'21-02-87','17-10-94');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8802,'21-05-14','11-07-09');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7207,'07-01-03','10-12-89');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8842,'20-03-85','27-03-11');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7130,'28-09-84','26-12-91');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8008,'02-04-85','26-08-96');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5095,'14-10-95','24-12-01');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5059,'07-02-97','21-07-91');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8115,'14-03-16','28-07-82');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6455,'19-04-92','29-12-98');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8565,'14-09-10','22-02-09');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5940,'12-07-00','08-04-01');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5717,'05-03-16','23-09-87');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5571,'11-08-90','21-02-00');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5482,'23-01-02','20-09-04');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5323,'28-02-81','16-11-02');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7667,'23-06-89','09-03-87');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5032,'22-09-91','14-04-16');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8758,'24-07-80','24-02-13');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5016,'13-10-80','19-11-99');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8853,'28-09-08','19-01-08');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6326,'12-11-05','02-04-13');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6234,'12-03-07','05-07-84');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7509,'01-04-01','26-07-03');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5169,'19-08-13','13-11-12');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8435,'21-04-96','27-10-86');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7677,'16-01-98','20-02-11');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6326,'15-03-87','12-09-91');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7618,'12-07-90','23-01-16');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5269,'28-10-03','27-05-05');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (7616,'18-04-16','10-12-83');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (6264,'22-12-99','22-01-81');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8007,'16-11-95','17-06-85');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (5030,'19-04-12','19-06-10');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8956,'13-01-84','09-07-95');
INSERT INTO "factura" (num_factura,fecha,fecha_pago) VALUES (8825,'13-09-10','10-12-81');

---------------
DATA producto

INSERT INTO "producto" (precio_unitario,stock) VALUES (239,547);
INSERT INTO "producto" (precio_unitario,stock) VALUES (322,646);
INSERT INTO "producto" (precio_unitario,stock) VALUES (122,599);
INSERT INTO "producto" (precio_unitario,stock) VALUES (148,339);
INSERT INTO "producto" (precio_unitario,stock) VALUES (216,484);
INSERT INTO "producto" (precio_unitario,stock) VALUES (269,599);
INSERT INTO "producto" (precio_unitario,stock) VALUES (246,414);
INSERT INTO "producto" (precio_unitario,stock) VALUES (299,470);
INSERT INTO "producto" (precio_unitario,stock) VALUES (187,480);
INSERT INTO "producto" (precio_unitario,stock) VALUES (139,437);
INSERT INTO "producto" (precio_unitario,stock) VALUES (157,601);
INSERT INTO "producto" (precio_unitario,stock) VALUES (166,443);
INSERT INTO "producto" (precio_unitario,stock) VALUES (112,390);
INSERT INTO "producto" (precio_unitario,stock) VALUES (121,533);
INSERT INTO "producto" (precio_unitario,stock) VALUES (314,445);
INSERT INTO "producto" (precio_unitario,stock) VALUES (146,417);
INSERT INTO "producto" (precio_unitario,stock) VALUES (231,457);
INSERT INTO "producto" (precio_unitario,stock) VALUES (222,377);
INSERT INTO "producto" (precio_unitario,stock) VALUES (137,410);
INSERT INTO "producto" (precio_unitario,stock) VALUES (318,421);
INSERT INTO "producto" (precio_unitario,stock) VALUES (142,545);
INSERT INTO "producto" (precio_unitario,stock) VALUES (128,589);
INSERT INTO "producto" (precio_unitario,stock) VALUES (138,433);
INSERT INTO "producto" (precio_unitario,stock) VALUES (287,472);
INSERT INTO "producto" (precio_unitario,stock) VALUES (118,648);
INSERT INTO "producto" (precio_unitario,stock) VALUES (225,641);
INSERT INTO "producto" (precio_unitario,stock) VALUES (308,642);
INSERT INTO "producto" (precio_unitario,stock) VALUES (114,563);
INSERT INTO "producto" (precio_unitario,stock) VALUES (283,465);
INSERT INTO "producto" (precio_unitario,stock) VALUES (262,430);
INSERT INTO "producto" (precio_unitario,stock) VALUES (239,564);
INSERT INTO "producto" (precio_unitario,stock) VALUES (303,618);
INSERT INTO "producto" (precio_unitario,stock) VALUES (293,364);
INSERT INTO "producto" (precio_unitario,stock) VALUES (181,392);
INSERT INTO "producto" (precio_unitario,stock) VALUES (209,524);
INSERT INTO "producto" (precio_unitario,stock) VALUES (251,646);
INSERT INTO "producto" (precio_unitario,stock) VALUES (312,579);
INSERT INTO "producto" (precio_unitario,stock) VALUES (286,353);
INSERT INTO "producto" (precio_unitario,stock) VALUES (246,520);
INSERT INTO "producto" (precio_unitario,stock) VALUES (159,539);
INSERT INTO "producto" (precio_unitario,stock) VALUES (156,618);
INSERT INTO "producto" (precio_unitario,stock) VALUES (158,454);
INSERT INTO "producto" (precio_unitario,stock) VALUES (137,433);
INSERT INTO "producto" (precio_unitario,stock) VALUES (224,364);
INSERT INTO "producto" (precio_unitario,stock) VALUES (321,412);
INSERT INTO "producto" (precio_unitario,stock) VALUES (207,619);
INSERT INTO "producto" (precio_unitario,stock) VALUES (180,455);
INSERT INTO "producto" (precio_unitario,stock) VALUES (289,360);
INSERT INTO "producto" (precio_unitario,stock) VALUES (238,635);
INSERT INTO "producto" (precio_unitario,stock) VALUES (111,437);
INSERT INTO "producto" (precio_unitario,stock) VALUES (172,496);
INSERT INTO "producto" (precio_unitario,stock) VALUES (152,560);
INSERT INTO "producto" (precio_unitario,stock) VALUES (271,405);
INSERT INTO "producto" (precio_unitario,stock) VALUES (158,558);
INSERT INTO "producto" (precio_unitario,stock) VALUES (167,608);
INSERT INTO "producto" (precio_unitario,stock) VALUES (115,440);
INSERT INTO "producto" (precio_unitario,stock) VALUES (125,614);
INSERT INTO "producto" (precio_unitario,stock) VALUES (310,506);
INSERT INTO "producto" (precio_unitario,stock) VALUES (180,414);
INSERT INTO "producto" (precio_unitario,stock) VALUES (136,536);
INSERT INTO "producto" (precio_unitario,stock) VALUES (314,647);
INSERT INTO "producto" (precio_unitario,stock) VALUES (206,634);
INSERT INTO "producto" (precio_unitario,stock) VALUES (252,454);
INSERT INTO "producto" (precio_unitario,stock) VALUES (302,403);
INSERT INTO "producto" (precio_unitario,stock) VALUES (158,352);
INSERT INTO "producto" (precio_unitario,stock) VALUES (232,622);
INSERT INTO "producto" (precio_unitario,stock) VALUES (256,429);
INSERT INTO "producto" (precio_unitario,stock) VALUES (175,571);
INSERT INTO "producto" (precio_unitario,stock) VALUES (173,564);
INSERT INTO "producto" (precio_unitario,stock) VALUES (219,484);
INSERT INTO "producto" (precio_unitario,stock) VALUES (211,629);
INSERT INTO "producto" (precio_unitario,stock) VALUES (299,452);
INSERT INTO "producto" (precio_unitario,stock) VALUES (119,530);
INSERT INTO "producto" (precio_unitario,stock) VALUES (279,542);
INSERT INTO "producto" (precio_unitario,stock) VALUES (119,597);
INSERT INTO "producto" (precio_unitario,stock) VALUES (316,353);
INSERT INTO "producto" (precio_unitario,stock) VALUES (200,492);
INSERT INTO "producto" (precio_unitario,stock) VALUES (301,394);
INSERT INTO "producto" (precio_unitario,stock) VALUES (178,535);
INSERT INTO "producto" (precio_unitario,stock) VALUES (179,494);
INSERT INTO "producto" (precio_unitario,stock) VALUES (312,327);
INSERT INTO "producto" (precio_unitario,stock) VALUES (148,322);
INSERT INTO "producto" (precio_unitario,stock) VALUES (161,503);
INSERT INTO "producto" (precio_unitario,stock) VALUES (291,629);
INSERT INTO "producto" (precio_unitario,stock) VALUES (105,347);
INSERT INTO "producto" (precio_unitario,stock) VALUES (235,456);
INSERT INTO "producto" (precio_unitario,stock) VALUES (113,419);
INSERT INTO "producto" (precio_unitario,stock) VALUES (240,504);
INSERT INTO "producto" (precio_unitario,stock) VALUES (286,635);
INSERT INTO "producto" (precio_unitario,stock) VALUES (101,509);
INSERT INTO "producto" (precio_unitario,stock) VALUES (103,435);
INSERT INTO "producto" (precio_unitario,stock) VALUES (312,387);
INSERT INTO "producto" (precio_unitario,stock) VALUES (167,598);
INSERT INTO "producto" (precio_unitario,stock) VALUES (221,584);
INSERT INTO "producto" (precio_unitario,stock) VALUES (265,616);
INSERT INTO "producto" (precio_unitario,stock) VALUES (158,564);
INSERT INTO "producto" (precio_unitario,stock) VALUES (284,355);
INSERT INTO "producto" (precio_unitario,stock) VALUES (183,571);
INSERT INTO "producto" (precio_unitario,stock) VALUES (262,591);
INSERT INTO "producto" (precio_unitario,stock) VALUES (310,571);

---------------
DATA factura_producto

INSERT INTO "factura_producto" (cantidad) VALUES (3138);
INSERT INTO "factura_producto" (cantidad) VALUES (3020);
INSERT INTO "factura_producto" (cantidad) VALUES (3023);
INSERT INTO "factura_producto" (cantidad) VALUES (2858);
INSERT INTO "factura_producto" (cantidad) VALUES (2506);
INSERT INTO "factura_producto" (cantidad) VALUES (3272);
INSERT INTO "factura_producto" (cantidad) VALUES (2255);
INSERT INTO "factura_producto" (cantidad) VALUES (2342);
INSERT INTO "factura_producto" (cantidad) VALUES (3242);
INSERT INTO "factura_producto" (cantidad) VALUES (2869);
INSERT INTO "factura_producto" (cantidad) VALUES (3037);
INSERT INTO "factura_producto" (cantidad) VALUES (3229);
INSERT INTO "factura_producto" (cantidad) VALUES (2251);
INSERT INTO "factura_producto" (cantidad) VALUES (2103);
INSERT INTO "factura_producto" (cantidad) VALUES (2962);
INSERT INTO "factura_producto" (cantidad) VALUES (2500);
INSERT INTO "factura_producto" (cantidad) VALUES (2305);
INSERT INTO "factura_producto" (cantidad) VALUES (2970);
INSERT INTO "factura_producto" (cantidad) VALUES (2894);
INSERT INTO "factura_producto" (cantidad) VALUES (2803);
INSERT INTO "factura_producto" (cantidad) VALUES (2498);
INSERT INTO "factura_producto" (cantidad) VALUES (2528);
INSERT INTO "factura_producto" (cantidad) VALUES (3155);
INSERT INTO "factura_producto" (cantidad) VALUES (2038);
INSERT INTO "factura_producto" (cantidad) VALUES (2441);
INSERT INTO "factura_producto" (cantidad) VALUES (2076);
INSERT INTO "factura_producto" (cantidad) VALUES (2714);
INSERT INTO "factura_producto" (cantidad) VALUES (3072);
INSERT INTO "factura_producto" (cantidad) VALUES (2423);
INSERT INTO "factura_producto" (cantidad) VALUES (3129);
INSERT INTO "factura_producto" (cantidad) VALUES (3060);
INSERT INTO "factura_producto" (cantidad) VALUES (2150);
INSERT INTO "factura_producto" (cantidad) VALUES (2769);
INSERT INTO "factura_producto" (cantidad) VALUES (2221);
INSERT INTO "factura_producto" (cantidad) VALUES (2163);
INSERT INTO "factura_producto" (cantidad) VALUES (2052);
INSERT INTO "factura_producto" (cantidad) VALUES (2623);
INSERT INTO "factura_producto" (cantidad) VALUES (2173);
INSERT INTO "factura_producto" (cantidad) VALUES (3055);
INSERT INTO "factura_producto" (cantidad) VALUES (3216);
INSERT INTO "factura_producto" (cantidad) VALUES (3042);
INSERT INTO "factura_producto" (cantidad) VALUES (2275);
INSERT INTO "factura_producto" (cantidad) VALUES (2450);
INSERT INTO "factura_producto" (cantidad) VALUES (2318);
INSERT INTO "factura_producto" (cantidad) VALUES (2779);
INSERT INTO "factura_producto" (cantidad) VALUES (3164);
INSERT INTO "factura_producto" (cantidad) VALUES (2369);
INSERT INTO "factura_producto" (cantidad) VALUES (2994);
INSERT INTO "factura_producto" (cantidad) VALUES (2929);
INSERT INTO "factura_producto" (cantidad) VALUES (2430);
INSERT INTO "factura_producto" (cantidad) VALUES (2562);
INSERT INTO "factura_producto" (cantidad) VALUES (2568);
INSERT INTO "factura_producto" (cantidad) VALUES (2141);
INSERT INTO "factura_producto" (cantidad) VALUES (3039);
INSERT INTO "factura_producto" (cantidad) VALUES (2323);
INSERT INTO "factura_producto" (cantidad) VALUES (2553);
INSERT INTO "factura_producto" (cantidad) VALUES (2691);
INSERT INTO "factura_producto" (cantidad) VALUES (3117);
INSERT INTO "factura_producto" (cantidad) VALUES (3095);
INSERT INTO "factura_producto" (cantidad) VALUES (3108);
INSERT INTO "factura_producto" (cantidad) VALUES (2847);
INSERT INTO "factura_producto" (cantidad) VALUES (2724);
INSERT INTO "factura_producto" (cantidad) VALUES (2409);
INSERT INTO "factura_producto" (cantidad) VALUES (2041);
INSERT INTO "factura_producto" (cantidad) VALUES (2380);
INSERT INTO "factura_producto" (cantidad) VALUES (3070);
INSERT INTO "factura_producto" (cantidad) VALUES (2393);
INSERT INTO "factura_producto" (cantidad) VALUES (3289);
INSERT INTO "factura_producto" (cantidad) VALUES (2300);
INSERT INTO "factura_producto" (cantidad) VALUES (2397);
INSERT INTO "factura_producto" (cantidad) VALUES (2231);
INSERT INTO "factura_producto" (cantidad) VALUES (2856);
INSERT INTO "factura_producto" (cantidad) VALUES (2388);
INSERT INTO "factura_producto" (cantidad) VALUES (2385);
INSERT INTO "factura_producto" (cantidad) VALUES (3118);
INSERT INTO "factura_producto" (cantidad) VALUES (2409);
INSERT INTO "factura_producto" (cantidad) VALUES (3300);
INSERT INTO "factura_producto" (cantidad) VALUES (2456);
INSERT INTO "factura_producto" (cantidad) VALUES (2369);
INSERT INTO "factura_producto" (cantidad) VALUES (2809);
INSERT INTO "factura_producto" (cantidad) VALUES (2194);
INSERT INTO "factura_producto" (cantidad) VALUES (2507);
INSERT INTO "factura_producto" (cantidad) VALUES (2720);
INSERT INTO "factura_producto" (cantidad) VALUES (3300);
INSERT INTO "factura_producto" (cantidad) VALUES (3057);
INSERT INTO "factura_producto" (cantidad) VALUES (2879);
INSERT INTO "factura_producto" (cantidad) VALUES (2829);
INSERT INTO "factura_producto" (cantidad) VALUES (2837);
INSERT INTO "factura_producto" (cantidad) VALUES (3241);
INSERT INTO "factura_producto" (cantidad) VALUES (3264);
INSERT INTO "factura_producto" (cantidad) VALUES (3155);
INSERT INTO "factura_producto" (cantidad) VALUES (2826);
INSERT INTO "factura_producto" (cantidad) VALUES (3253);
INSERT INTO "factura_producto" (cantidad) VALUES (3070);
INSERT INTO "factura_producto" (cantidad) VALUES (2084);
INSERT INTO "factura_producto" (cantidad) VALUES (2970);
INSERT INTO "factura_producto" (cantidad) VALUES (2509);
INSERT INTO "factura_producto" (cantidad) VALUES (2671);
INSERT INTO "factura_producto" (cantidad) VALUES (2473);
INSERT INTO "factura_producto" (cantidad) VALUES (2887);
