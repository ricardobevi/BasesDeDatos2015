TP3 - Join
==========

Esquema
-------

Generar el esquema con el siguiente script SQL:

.. code-block:: sql

	 CREATE TABLE USUARIO (
	  id integer PRIMARY KEY,
	  nick varchar(20),
	  ultima_conexion date,
	  tel varchar(20)
	);

	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (1,'Josiah','2014-08-29T19:24:10-07:00','(04) 1125 6978');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (2,'Axel','2015-01-28T07:10:42-08:00','(06) 7094 3725');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (3,'Ivan','2015-12-15T20:22:37-08:00','(02) 2525 1893');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (4,'Carson','2014-04-17T12:57:45-07:00','(03) 9523 1457');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (5,'Colt','2015-03-13T01:28:01-07:00','(08) 2742 5738');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (6,'Bruce','2014-09-27T03:07:20-07:00','(09) 4864 1216');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (7,'Lucius','2014-09-15T17:10:23-07:00','(04) 7092 5413');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (8,'Cyrus','2014-07-06T22:23:35-07:00','(01) 1272 7947');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (9,'Melyssa','2016-02-01T06:25:29-08:00','(04) 9822 0669');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (10,'Kylie','2015-10-28T08:21:59-07:00','(01) 3143 7953');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (11,'Ian','2015-07-26T21:21:48-07:00','(07) 2684 5034');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (12,'Quentin','2014-05-06T03:18:52-07:00','(07) 4549 3028');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (13,'Isabella','2015-08-16T19:34:11-07:00','(04) 8781 7802');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (14,'Tucker','2015-11-04T09:48:45-08:00','(04) 6118 0484');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (15,'Scott','2014-08-09T02:27:22-07:00','(03) 5368 1220');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (16,'Asher','2015-05-09T18:10:33-07:00','(07) 0845 4370');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (17,'Solomon','2015-09-05T07:19:31-07:00','(04) 2602 6406');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (18,'Murphy','2014-08-18T20:22:40-07:00','(08) 6353 8263');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (19,'Gage','2015-01-11T22:19:12-08:00','(06) 1751 5152');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (20,'Graham','2016-04-04T11:02:06-07:00','(07) 9190 8500');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (21,'Cheryl','2015-11-06T18:22:17-08:00','(07) 6309 2906');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (22,'Nevada','2015-08-18T03:22:28-07:00','(03) 4775 1317');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (23,'Ursa','2015-05-26T14:20:38-07:00','(07) 0460 7722');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (24,'Thaddeus','2015-04-09T19:37:26-07:00','(04) 1801 0744');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (25,'Nehru','2014-10-15T14:12:03-07:00','(07) 5728 1302');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (26,'Shay','2014-05-13T23:26:42-07:00','(01) 0406 5258');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (27,'Veronica','2014-11-18T06:45:16-08:00','(08) 6909 4937');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (28,'Imelda','2015-06-19T11:15:25-07:00','(01) 5246 7419');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (29,'Caesar','2016-04-27T01:54:25-07:00','(08) 6535 7470');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (30,'Fulton','2015-05-24T20:39:59-07:00','(05) 5256 1198');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (31,'Shelby','2014-12-11T19:42:59-08:00','(07) 0396 0351');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (32,'Dominique','2014-09-01T09:05:28-07:00','(02) 4798 5880');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (33,'Kylan','2016-04-16T18:58:34-07:00','(08) 9578 5875');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (34,'Ulla','2015-03-28T03:16:35-07:00','(08) 3214 2523');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (35,'Sloane','2014-05-31T21:52:26-07:00','(07) 7654 6280');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (36,'Rama','2016-04-24T16:09:14-07:00','(01) 4546 7569');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (37,'Lacy','2015-04-25T13:32:56-07:00','(09) 8723 4484');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (38,'Oscar','2016-02-05T13:52:35-08:00','(06) 3457 1928');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (39,'Regan','2015-11-21T07:12:35-08:00','(04) 3095 2167');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (40,'Nita','2015-12-03T04:39:10-08:00','(02) 0311 2809');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (41,'Len','2016-03-05T15:56:29-08:00','(03) 5288 1210');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (42,'Rajah','2016-01-09T00:23:49-08:00','(01) 1478 3955');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (43,'Freya','2015-02-20T02:44:21-08:00','(05) 4270 4713');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (44,'Castor','2015-04-15T21:21:52-07:00','(04) 6729 5513');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (45,'Tallulah','2015-12-01T14:31:50-08:00','(06) 5603 1325');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (46,'Baker','2015-11-13T08:57:03-08:00','(08) 7195 5686');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (47,'Holmes','2016-03-06T13:18:24-08:00','(06) 7108 2062');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (48,'Jaime','2014-07-05T13:24:29-07:00','(08) 5453 1021');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (49,'Sean','2014-04-14T04:27:40-07:00','(06) 4423 7767');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (50,'Otto','2015-10-02T23:21:59-07:00','(01) 4065 2932');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (51,'Martin','2014-07-21T01:19:27-07:00','(08) 7731 8574');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (52,'Dominique','2014-09-14T13:22:51-07:00','(01) 2971 2432');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (53,'Kylee','2014-10-24T12:58:07-07:00','(07) 7511 3337');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (54,'Erasmus','2015-10-25T06:21:49-07:00','(09) 3380 0536');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (55,'Julie','2014-09-22T18:40:32-07:00','(04) 1945 5532');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (56,'Chadwick','2014-04-11T15:25:47-07:00','(08) 9196 7774');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (57,'Alisa','2014-07-29T18:12:13-07:00','(05) 1034 4588');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (58,'Brandon','2015-08-18T01:00:21-07:00','(01) 8103 4909');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (59,'Vielka','2014-08-12T21:13:28-07:00','(01) 0669 9063');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (60,'Patrick','2014-06-12T11:28:19-07:00','(04) 2137 7301');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (61,'Sigourney','2015-05-30T10:23:43-07:00','(07) 4431 5842');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (62,'Mariam','2015-05-23T15:20:39-07:00','(04) 0856 6552');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (63,'Ariel','2016-03-14T05:02:46-07:00','(03) 7495 4658');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (64,'Yolanda','2014-06-20T18:11:31-07:00','(08) 7342 7419');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (65,'Kiayada','2014-06-09T13:57:32-07:00','(07) 2566 5988');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (66,'Kevyn','2015-03-28T16:00:09-07:00','(07) 9135 6035');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (67,'Kaye','2015-08-25T23:51:10-07:00','(05) 7928 1288');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (68,'Salvador','2015-04-03T18:40:47-07:00','(05) 1522 3870');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (69,'Odysseus','2015-04-10T06:48:24-07:00','(09) 5312 4518');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (70,'Abra','2014-05-31T19:14:15-07:00','(03) 2950 0862');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (71,'Gemma','2015-02-15T14:07:50-08:00','(05) 7055 5267');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (72,'Gail','2015-09-25T08:06:44-07:00','(08) 8606 2524');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (73,'Xander','2014-12-26T16:37:17-08:00','(01) 6628 7656');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (74,'Connor','2015-08-07T02:25:50-07:00','(01) 1366 3065');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (75,'Susan','2015-07-03T06:49:34-07:00','(07) 6005 6935');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (76,'Quail','2015-02-24T21:17:51-08:00','(01) 6149 7603');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (77,'Carla','2014-05-07T22:04:34-07:00','(08) 1882 2372');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (78,'Boris','2014-10-28T15:54:42-07:00','(06) 1846 0927');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (79,'Ciaran','2014-09-28T01:27:52-07:00','(02) 9456 7247');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (80,'Kirsten','2014-10-24T12:11:40-07:00','(08) 3856 4044');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (81,'Dahlia','2014-05-31T14:44:12-07:00','(07) 7803 0450');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (82,'Xerxes','2014-06-25T15:58:15-07:00','(09) 4419 9344');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (83,'Jackson','2015-03-03T13:27:49-08:00','(03) 3659 6909');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (84,'Sean','2014-09-05T10:54:01-07:00','(02) 9994 9237');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (85,'Willow','2014-09-30T17:43:33-07:00','(01) 5388 3572');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (86,'Colton','2014-12-11T17:46:58-08:00','(08) 3077 4689');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (87,'Graham','2015-12-05T13:21:14-08:00','(04) 4002 1383');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (88,'Germane','2015-09-30T01:38:11-07:00','(09) 8057 2797');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (89,'Britanney','2014-11-17T09:08:53-08:00','(04) 4585 8388');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (90,'Edward','2014-05-04T01:17:09-07:00','(08) 5957 8256');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (91,'Robin','2014-08-05T04:05:56-07:00','(06) 9960 5081');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (92,'Yael','2015-07-23T04:52:40-07:00','(02) 8320 7579');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (93,'Tobias','2015-02-09T21:43:49-08:00','(04) 2803 0680');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (94,'Hedda','2014-11-29T04:26:27-08:00','(08) 1436 7161');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (95,'Coby','2014-05-31T08:43:51-07:00','(05) 8123 6167');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (96,'Tamara','2015-05-21T05:50:04-07:00','(09) 6970 3098');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (97,'Ruth','2015-05-10T20:51:39-07:00','(04) 9115 5027');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (98,'Shannon','2015-03-01T21:25:05-08:00','(09) 0990 9744');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (99,'Chaney','2014-04-06T01:58:07-07:00','(01) 7531 9640');
	INSERT INTO USUARIO (id,nick,ultima_conexion,tel) VALUES (100,'Quinlan','2015-12-10T07:00:27-08:00','(04) 2828 2515');



	 CREATE TABLE GRUPO (
	  id integer PRIMARY KEY,
	  descripcion TEXT default NULL
	);

	INSERT INTO GRUPO (id,descripcion) VALUES (1,'urna');
	INSERT INTO GRUPO (id,descripcion) VALUES (2,'at pretium aliquet, metus urna');
	INSERT INTO GRUPO (id,descripcion) VALUES (3,'lectus');
	INSERT INTO GRUPO (id,descripcion) VALUES (4,'natoque penatibus et magnis');
	INSERT INTO GRUPO (id,descripcion) VALUES (5,'lobortis');
	INSERT INTO GRUPO (id,descripcion) VALUES (6,'enim,');
	INSERT INTO GRUPO (id,descripcion) VALUES (7,'mattis. Cras');
	INSERT INTO GRUPO (id,descripcion) VALUES (8,'condimentum. Donec at arcu. Vestibulum');
	INSERT INTO GRUPO (id,descripcion) VALUES (9,'amet, consectetuer adipiscing');
	INSERT INTO GRUPO (id,descripcion) VALUES (10,'amet, dapibus id, blandit at,');
	INSERT INTO GRUPO (id,descripcion) VALUES (11,'amet, consectetuer adipiscing');
	INSERT INTO GRUPO (id,descripcion) VALUES (12,'turpis vitae purus gravida sagittis.');
	INSERT INTO GRUPO (id,descripcion) VALUES (13,'nec ante. Maecenas mi felis,');
	INSERT INTO GRUPO (id,descripcion) VALUES (14,'cursus');
	INSERT INTO GRUPO (id,descripcion) VALUES (15,'nonummy ac, feugiat non, lobortis');
	INSERT INTO GRUPO (id,descripcion) VALUES (16,'quam. Pellentesque habitant morbi tristique');
	INSERT INTO GRUPO (id,descripcion) VALUES (17,'lobortis ultrices. Vivamus rhoncus. Donec');
	INSERT INTO GRUPO (id,descripcion) VALUES (18,'ullamcorper,');
	INSERT INTO GRUPO (id,descripcion) VALUES (19,'feugiat tellus');
	INSERT INTO GRUPO (id,descripcion) VALUES (20,'consequat');
	INSERT INTO GRUPO (id,descripcion) VALUES (21,'mi pede,');
	INSERT INTO GRUPO (id,descripcion) VALUES (22,'tristique neque venenatis lacus. Etiam');
	INSERT INTO GRUPO (id,descripcion) VALUES (23,'mi lorem,');
	INSERT INTO GRUPO (id,descripcion) VALUES (24,'In nec orci. Donec');
	INSERT INTO GRUPO (id,descripcion) VALUES (25,'Maecenas mi felis,');
	INSERT INTO GRUPO (id,descripcion) VALUES (26,'rhoncus id, mollis');
	INSERT INTO GRUPO (id,descripcion) VALUES (27,'vitae,');
	INSERT INTO GRUPO (id,descripcion) VALUES (28,'egestas');
	INSERT INTO GRUPO (id,descripcion) VALUES (29,'at, iaculis quis, pede.');
	INSERT INTO GRUPO (id,descripcion) VALUES (30,'facilisis vitae, orci.');
	INSERT INTO GRUPO (id,descripcion) VALUES (31,'eleifend, nunc');
	INSERT INTO GRUPO (id,descripcion) VALUES (32,'fermentum metus.');
	INSERT INTO GRUPO (id,descripcion) VALUES (33,'sit');
	INSERT INTO GRUPO (id,descripcion) VALUES (34,'molestie in, tempus eu, ligula.');
	INSERT INTO GRUPO (id,descripcion) VALUES (35,'ipsum');
	INSERT INTO GRUPO (id,descripcion) VALUES (36,'sem');
	INSERT INTO GRUPO (id,descripcion) VALUES (37,'Cras dolor dolor, tempus non,');
	INSERT INTO GRUPO (id,descripcion) VALUES (38,'Ut tincidunt orci quis lectus.');
	INSERT INTO GRUPO (id,descripcion) VALUES (39,'adipiscing elit.');
	INSERT INTO GRUPO (id,descripcion) VALUES (40,'malesuada. Integer');
	INSERT INTO GRUPO (id,descripcion) VALUES (41,'eget tincidunt dui augue eu');
	INSERT INTO GRUPO (id,descripcion) VALUES (42,'sociis natoque penatibus et magnis');
	INSERT INTO GRUPO (id,descripcion) VALUES (43,'eu');
	INSERT INTO GRUPO (id,descripcion) VALUES (44,'nulla at');
	INSERT INTO GRUPO (id,descripcion) VALUES (45,'leo, in lobortis tellus justo');
	INSERT INTO GRUPO (id,descripcion) VALUES (46,'Donec egestas.');
	INSERT INTO GRUPO (id,descripcion) VALUES (47,'In scelerisque scelerisque dui. Suspendisse');
	INSERT INTO GRUPO (id,descripcion) VALUES (48,'sit amet massa. Quisque porttitor');
	INSERT INTO GRUPO (id,descripcion) VALUES (49,'ut');
	INSERT INTO GRUPO (id,descripcion) VALUES (50,'erat, eget tincidunt dui augue');




	 CREATE TABLE USUARIO_GRUPO (
	  id_usuario integer,
	  id_grupo integer,
	  PRIMARY KEY (id_usuario,id_grupo),
	  FOREIGN KEY (id_usuario) REFERENCES USUARIO(id),
	  FOREIGN KEY (id_grupo) REFERENCES GRUPO(id)
	);

	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (74,46);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (98,6);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (76,16);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (57,17);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (27,21);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (71,35);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (73,40);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (48,48);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (10,2);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (87,14);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (79,37);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (42,38);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (36,12);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (82,36);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (4,24);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (46,30);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (46,34);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (78,8);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (30,41);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (85,33);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (87,24);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (10,19);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (9,9);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (59,44);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (16,20);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (44,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (86,30);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (19,28);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (51,6);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (19,48);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (36,15);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (18,9);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (66,40);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (7,44);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (36,1);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (12,8);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (97,36);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (11,5);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (46,18);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (94,24);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (13,10);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (50,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (99,29);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (12,7);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (91,28);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (72,49);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (71,47);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (75,17);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (69,17);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (83,31);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (45,3);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (95,8);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (96,26);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (23,26);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (30,39);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (47,17);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (9,18);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (61,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (9,24);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (17,50);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (47,41);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (44,31);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (100,28);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (95,10);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (6,2);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (93,27);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (96,21);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (38,37);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (82,31);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (82,34);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (73,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (98,5);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (3,2);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (56,5);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (54,4);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (27,20);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (71,4);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (29,31);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (48,41);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (63,47);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (54,5);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (26,23);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (92,16);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (8,25);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (40,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (77,44);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (80,7);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (29,33);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (45,42);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (6,42);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (40,29);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (11,28);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (14,11);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (34,35);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (82,13);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (27,17);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (46,20);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (73,10);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (54,43);
	INSERT INTO USUARIO_GRUPO (id_usuario,id_grupo) VALUES (80,25);



	CREATE TABLE ESTADO (
	  id integer PRIMARY KEY,
	  descripcion TEXT default NULL
	);

	INSERT INTO ESTADO (id,descripcion) VALUES (1,'Enviado');
	INSERT INTO ESTADO (id,descripcion) VALUES (2,'Recibido');
	INSERT INTO ESTADO (id,descripcion) VALUES (3,'Leido');




	 CREATE TABLE MENSAJE (
	  id integer PRIMARY KEY,
	  id_usr_from integer,
	  id_usr_to integer,
	  mensaje TEXT,
	  fecha_envio date,
	  id_estado integer,
	  FOREIGN KEY (id_usr_from) REFERENCES USUARIO(id),
	  FOREIGN KEY (id_usr_to) REFERENCES USUARIO(id),
	  FOREIGN KEY (id_estado) REFERENCES ESTADO(id)
	);

	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (1,72,23,'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis.','2016-04-30T18:31:41-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (2,77,21,'velit eu','2015-08-12T15:15:53-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (3,4,55,'vel lectus. Cum sociis','2013-11-10T11:27:53-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (4,33,33,'eu, eleifend nec, malesuada ut, sem. Nulla interdum.','2016-02-15T13:06:13-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (5,62,44,'ipsum porta elit, a feugiat tellus lorem','2015-06-15T16:06:36-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (6,52,26,'blandit viverra. Donec tempus, lorem fringilla ornare','2016-04-20T22:58:59-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (7,49,51,'fames ac turpis egestas. Fusce aliquet magna a neque. Nullam','2014-06-28T09:01:56-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (8,79,30,'vitae velit egestas lacinia. Sed','2015-09-22T06:20:36-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (9,23,70,'libero. Morbi accumsan laoreet ipsum.','2015-03-02T00:55:49-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (10,45,8,'sit amet risus. Donec','2015-08-06T16:28:00-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (11,26,34,'dolor. Donec fringilla. Donec feugiat metus sit amet','2015-02-25T10:03:53-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (12,48,64,'orci quis lectus. Nullam','2014-08-18T10:38:39-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (13,96,53,'magna.','2015-03-28T21:59:25-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (14,8,83,'Donec est.','2016-03-18T10:29:45-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (15,34,84,'libero et tristique pellentesque,','2013-12-16T12:07:19-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (16,100,27,'Integer aliquam adipiscing','2014-05-16T08:08:18-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (17,57,86,'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum','2014-09-15T15:10:30-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (18,37,27,'vitae purus','2016-03-10T10:37:42-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (19,14,77,'vel quam dignissim pharetra. Nam ac','2014-08-05T18:30:12-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (20,16,100,'nec, malesuada ut, sem.','2015-08-16T12:15:22-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (21,53,95,'fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh','2015-06-09T08:02:28-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (22,59,87,'lorem eu metus. In lorem.','2014-05-17T07:10:54-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (23,34,74,'imperdiet nec, leo. Morbi neque tellus, imperdiet','2015-06-08T17:06:10-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (24,31,10,'hymenaeos. Mauris ut quam vel sapien','2015-01-22T03:42:09-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (25,33,19,'non, egestas a, dui. Cras pellentesque. Sed dictum. Proin','2013-11-04T01:37:43-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (26,73,33,'dui. Fusce diam nunc, ullamcorper eu,','2014-12-11T11:18:45-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (27,37,51,'felis. Donec tempor, est','2015-02-06T18:51:19-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (28,90,40,'feugiat tellus lorem eu metus. In lorem.','2014-09-05T03:08:53-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (29,68,61,'elit, pretium et, rutrum','2015-11-01T16:51:32-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (30,67,4,'sagittis felis. Donec tempor, est ac','2016-03-28T16:42:37-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (31,62,49,'Cras eget nisi','2014-03-23T18:06:03-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (32,16,71,'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas','2016-04-15T20:57:32-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (33,91,53,'tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante','2015-08-15T12:45:53-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (34,62,47,'nunc interdum feugiat. Sed nec metus facilisis lorem','2015-11-08T16:23:33-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (35,45,54,'non, luctus sit','2014-08-09T06:31:24-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (36,11,35,'diam vel arcu. Curabitur ut odio vel est tempor','2015-08-12T02:04:05-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (37,70,63,'mauris a nunc.','2014-07-12T00:34:55-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (38,70,33,'vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac','2016-01-22T10:10:25-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (39,80,4,'In condimentum. Donec','2016-03-12T18:48:16-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (40,76,9,'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque','2015-05-25T05:04:45-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (41,69,79,'neque vitae semper egestas, urna justo faucibus lectus,','2015-12-09T22:05:27-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (42,24,98,'Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis','2014-09-09T04:54:41-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (43,85,39,'In','2014-03-17T09:08:15-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (44,21,6,'sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum,','2016-04-17T02:01:39-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (45,27,73,'vel turpis.','2015-03-30T13:53:41-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (46,54,64,'vel nisl.','2014-01-31T01:57:58-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (47,94,15,'magna a neque.','2015-04-29T11:00:59-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (48,81,8,'fringilla. Donec','2015-07-20T04:23:04-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (49,64,74,'venenatis a, magna. Lorem ipsum dolor sit amet,','2015-07-27T03:32:54-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (50,81,40,'ut ipsum ac mi eleifend','2014-10-19T17:56:36-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (51,48,57,'et libero. Proin mi. Aliquam','2015-04-11T04:57:10-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (52,80,20,'tempor erat neque non','2016-05-02T22:37:43-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (53,2,7,'dui, in sodales elit erat vitae risus. Duis a mi','2014-03-24T05:14:03-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (54,88,15,'a, arcu. Sed et libero. Proin','2016-02-27T18:46:16-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (55,75,16,'nec, imperdiet nec, leo. Morbi neque tellus, imperdiet','2015-04-19T14:59:40-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (56,49,49,'sociis natoque','2016-01-16T10:13:41-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (57,86,14,'Etiam imperdiet dictum magna.','2014-07-28T12:03:25-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (58,2,18,'bibendum','2015-06-07T23:12:08-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (59,15,44,'mus. Proin vel nisl. Quisque fringilla','2014-09-29T12:00:57-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (60,40,74,'pellentesque massa lobortis ultrices. Vivamus','2015-02-27T00:50:12-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (61,67,94,'Vestibulum ante ipsum','2015-03-04T07:08:04-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (62,66,26,'tempor augue ac','2015-01-17T22:09:00-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (63,90,10,'non, vestibulum nec, euismod in, dolor.','2015-06-29T06:15:06-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (64,15,71,'ac sem ut dolor dapibus','2015-07-04T19:54:59-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (65,68,2,'adipiscing non, luctus sit amet, faucibus ut, nulla.','2015-02-27T08:19:03-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (66,44,92,'nec ante.','2014-08-19T22:30:40-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (67,16,96,'mattis ornare, lectus ante dictum','2015-10-13T08:08:46-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (68,26,79,'Nulla','2014-09-29T03:24:57-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (69,57,62,'ac urna. Ut tincidunt vehicula risus.','2015-12-11T07:05:54-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (70,71,32,'eu','2015-12-23T22:27:05-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (71,20,74,'in faucibus orci','2015-10-06T01:03:57-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (72,11,62,'sit amet, faucibus ut, nulla. Cras','2013-12-27T00:45:08-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (73,69,97,'quis, pede. Praesent','2014-08-28T10:22:05-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (74,83,76,'Nullam ut nisi a odio','2015-04-30T12:40:23-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (75,96,2,'tellus eu augue porttitor','2014-01-12T16:26:52-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (76,69,57,'tristique pellentesque, tellus','2014-02-09T23:07:48-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (77,9,23,'cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam','2015-07-04T00:23:14-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (78,97,91,'amet, dapibus id, blandit at,','2016-02-17T03:50:16-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (79,21,45,'et netus et malesuada fames ac turpis egestas. Aliquam fringilla','2014-03-12T08:57:12-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (80,66,97,'commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,','2014-08-11T04:14:54-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (81,60,55,'tellus faucibus leo, in lobortis tellus','2014-01-10T10:29:31-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (82,66,63,'convallis erat,','2015-01-16T05:38:00-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (83,15,73,'Cras lorem lorem, luctus ut, pellentesque','2014-03-27T00:51:31-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (84,7,95,'blandit viverra. Donec','2014-09-29T05:27:20-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (85,75,60,'mollis. Duis sit amet diam eu dolor','2016-01-12T03:35:01-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (86,29,84,'libero nec ligula','2014-09-10T16:38:59-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (87,93,66,'nunc est, mollis non, cursus non, egestas','2015-08-24T01:09:34-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (88,21,68,'ultrices','2014-05-15T15:13:40-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (89,34,16,'at, egestas a, scelerisque sed, sapien. Nunc','2015-10-03T02:54:18-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (90,85,2,'et','2016-02-14T05:53:12-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (91,37,79,'parturient montes, nascetur','2014-03-14T13:50:17-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (92,44,73,'tellus. Nunc lectus pede, ultrices a,','2016-04-03T19:50:39-07:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (93,73,72,'luctus. Curabitur egestas nunc sed libero. Proin sed turpis','2014-11-14T16:43:10-08:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (94,64,2,'amet massa. Quisque porttitor eros nec tellus. Nunc','2015-02-19T19:18:06-08:00',2);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (95,53,58,'ut, molestie in,','2014-10-21T09:55:47-07:00',3);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (96,31,35,'lobortis,','2015-07-24T15:48:26-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (97,9,39,'volutpat ornare, facilisis eget,','2014-01-22T23:40:42-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (98,24,9,'non, luctus sit amet,','2015-11-25T05:42:14-08:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (99,46,78,'Donec','2015-08-18T07:23:56-07:00',1);
	INSERT INTO MENSAJE (id,id_usr_from,id_usr_to,mensaje,fecha_envio,id_estado) VALUES (100,49,7,'Vivamus nisi. Mauris nulla.','2014-03-10T02:01:46-07:00',3);






Consignas
---------

Luego generar consultas para resolver los siguientes puntos:

1 - Nick de usuario asociado a cada grupo.
2 - Descripción de grupos que tengan usuarios conectados el día de hoy.
3 - La cantidad de grupos a los que pertenece un usuario con un telefono dado.
4 - Listado de los mensajes con sus estados.
5 - Conversación entre 2 usuarios.
6 - Igual al punto 5, pero mostrando también los estados.
7 - Listar los mensajes ignorados por los usuarios.

Entrega
-------

La entrega es hasta antes del 06/04 a las 23:59hs. 
