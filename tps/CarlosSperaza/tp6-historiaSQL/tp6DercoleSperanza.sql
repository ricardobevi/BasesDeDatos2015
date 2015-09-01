/*
Lautaro Carlos D'Ercole
Carlos Julian Speranza
7°C TP N° 6 o 5
*/
CREATE TABLE Clientes (
  idClientes SERIAL NOT NULL ,
  dni VARCHAR(8) NOT NULL,
  Nombre VARCHAR(45) NOT NULL,
  Apellido VARCHAR(45) NOT NULL,
  PRIMARY KEY (idClientes));

CREATE TABLE Tipo (
  idTipo SERIAL NOT NULL ,
  descripcion VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipo));

CREATE TABLE Inmueble (
  idInmueble SERIAL NOT NULL ,
  idTipo INT NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  owner INT NOT NULL,
  PRIMARY KEY (idInmueble),
  CONSTRAINT fk_Inmueble_Tipo1
    FOREIGN KEY (idTipo)
    REFERENCES Tipo (idTipo),
  CONSTRAINT fk_Inmueble_Clientes1
    FOREIGN KEY (owner)
    REFERENCES Clientes (idClientes));

CREATE TABLE Operaciones (
  idOperacion SERIAL NOT NULL ,
  idCliente INT NOT NULL,
  idInmueble INT NOT NULL,
  tipo INT NOT NULL,
  PRIMARY KEY (idOperacion),
  CONSTRAINT fk_Operaciones_Clientes1
    FOREIGN KEY (idCliente)
    REFERENCES Clientes (idClientes),
  CONSTRAINT fk_Operaciones_Inmueble1
    FOREIGN KEY (idInmueble)
    REFERENCES Inmueble (idInmueble));

CREATE TABLE Caracteristicas (
  idCaracteristicas SERIAL NOT NULL ,
  descripcion VARCHAR(125) NOT NULL,
  PRIMARY KEY (idCaracteristicas));

CREATE TABLE Tipo_Cambio (
  idTipo_Cambio SERIAL NOT NULL ,
  nombre VARCHAR(45) NOT NULL,
  PRIMARY KEY (idTipo_Cambio));

CREATE TABLE Cambio (
  idCambio SERIAL NOT NULL ,
  fecha DATE NOT NULL,
  valorActual FLOAT NOT NULL,
  idTipo_Cambio INT NOT NULL,
  PRIMARY KEY (idCambio),
  CONSTRAINT fk_Cambio_Tipo_Cambio1
    FOREIGN KEY (idTipo_Cambio)
    REFERENCES Tipo_Cambio (idTipo_Cambio))

CREATE TABLE  Precio (
  idInmueble INT NOT NULL,
  idCambio INT NOT NULL,
  PRIMARY KEY (idInmueble, idCambio),
  CONSTRAINT fk_Precio_Inmueble1
    FOREIGN KEY (idInmueble)
    REFERENCES Inmueble (idInmueble),
  CONSTRAINT fk_Precio_Cambio1
    FOREIGN KEY (idCambio)
    REFERENCES Cambio (idCambio));

CREATE TABLE Pagos (
  idPagos INT NOT NULL,
  importe FLOAT NOT NULL,
  numOp VARCHAR(15) NOT NULL,
  idOperacion INT NOT NULL,
  idCambio INT NOT NULL,
  PRIMARY KEY (idPagos),
  CONSTRAINT fk_Pagos_Operaciones1
    FOREIGN KEY (idOperacion)
    REFERENCES Operaciones (idOperacion),
  CONSTRAINT fk_Pagos_Cambio1
    FOREIGN KEY (idCambio)
    REFERENCES Cambio (idCambio));

CREATE TABLE Aquiler (
  Pagos_idPagos INT NOT NULL,
  mes INT NOT NULL,
  fecha DATE NOT NULL,
  PRIMARY KEY (Pagos_idPagos),
  CONSTRAINT fk_Aquiler_Pagos1
    FOREIGN KEY (Pagos_idPagos)
    REFERENCES Pagos (idPagos));

CREATE TABLE Contrato (
  idPago INT NOT NULL,
  PRIMARY KEY (idPago),
  CONSTRAINT fk_Contrato_Pagos1
    FOREIGN KEY (idPago)
    REFERENCES Pagos (idPagos));

CREATE TABLE Cuota (
  idPago INT NOT NULL,
  fecha DATE NOT NULL,
  numero INT NOT NULL,
  PRIMARY KEY (idPago),
  CONSTRAINT fk_Cuota_Pagos1
    FOREIGN KEY (idPago)
    REFERENCES Pagos (idPagos));

CREATE TABLE Seña (
  idPago INT NOT NULL,
  porcentaje FLOAT NULL,
  resto FLOAT NULL,
  PRIMARY KEY (idPago),
  CONSTRAINT fk_Seña_Pagos1
    FOREIGN KEY (idPago)
    REFERENCES Pagos (idPagos));

CREATE TABLE Alquiler (
  idOperacion INT NOT NULL,
  PRIMARY KEY (idOperacion),
  CONSTRAINT fk_Alquiler_Operaciones1
    FOREIGN KEY (idOperacion)
    REFERENCES Operaciones (idOperacion));

CREATE TABLE  Venta (
  idOperacion INT NOT NULL,
  PRIMARY KEY (idOperacion),
  CONSTRAINT fk_Venta_Operaciones1
    FOREIGN KEY (idOperacion)
    REFERENCES Operaciones (idOperacion));

CREATE TABLE  Inmueble_Caracteristicas (
  idInmueble INT NOT NULL,
  idCaracteristicas INT NOT NULL,
  PRIMARY KEY (idInmueble, idCaracteristicas),
  CONSTRAINT fk_Inmueble_has_Caracteristicas_Inmueble1
    FOREIGN KEY (idInmueble)
    REFERENCES Inmueble (idInmueble),
  CONSTRAINT fk_Inmueble_has_Caracteristicas_Caracteristicas1
    FOREIGN KEY (idCaracteristicas)
    REFERENCES Caracteristicas (idCaracteristicas));

CREATE TABLE Unico (
  idPago INT NOT NULL,
  PRIMARY KEY (idPago),
  CONSTRAINT fk_Unico_Pagos1
    FOREIGN KEY (idPago)
    REFERENCES Pagos (idPagos));

CREATE TABLE Deposito (
  idPago INT NOT NULL,
  PRIMARY KEY (idPago),
  CONSTRAINT fk_Deposito_Pagos1
    FOREIGN KEY (idPago)
    REFERENCES Pagos (idPagos));

CREATE TABLE Caracteristicas_Tipo (
  idCaracteristicas INT NOT NULL,
  idTipo INT NOT NULL,
  PRIMARY KEY (idCaracteristicas, idTipo),
  CONSTRAINT fk_Caracteristicas_has_Tipo_Caracteristicas1
    FOREIGN KEY (idCaracteristicas)
    REFERENCES Caracteristicas (idCaracteristicas),
  CONSTRAINT fk_Caracteristicas_has_Tipo_Tipo1
    FOREIGN KEY (idTipo)
    REFERENCES Tipo (idTipo));


INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (6,'Carl','Raymond'),(5,'Dale','Sullivan'),(9,'Avram','Mathews'),(8,'Carlos','Johns'),(4,'Jasper','Head'),(3,'Cameron','Chapman'),(1,'Rachel','Short'),(5,'Rooney','Patel'),(6,'Candice','Cross'),(5,'Kirestin','Strong');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (2,'Castor','Blair'),(3,'Hayfa','Bennett'),(2,'Eugenia','Burt'),(8,'Savannah','Butler'),(6,'Castor','Joseph'),(6,'Gil','Haney'),(4,'Yoshi','Eaton'),(10,'Allen','Lindsay'),(5,'Christen','Stevenson'),(5,'Tatyana','Yates');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (7,'Nita','Boyle'),(2,'Kaitlin','Hood'),(6,'Nita','Colon'),(8,'Erasmus','Goodman'),(4,'Dorian','Pierce'),(9,'Flavia','Kennedy'),(6,'Hector','Rutledge'),(5,'Ivor','Bonner'),(4,'Nevada','Hunter'),(10,'Lael','Delgado');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (3,'Uta','Aguilar'),(7,'Sharon','Patton'),(2,'Kay','Barker'),(6,'Berk','Mcleod'),(7,'Rashad','Haynes'),(4,'Demetria','Lee'),(10,'Pandora','Buckley'),(6,'Catherine','Forbes'),(3,'Joel','Haynes'),(10,'Hamish','Mcfadden');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (10,'Rooney','Hooper'),(5,'Martin','Vaughn'),(10,'Adrienne','Holt'),(2,'Martha','Holden'),(5,'Madeline','Conner'),(4,'Xenos','Brooks'),(7,'Octavius','Sutton'),(9,'Jarrod','Snyder'),(9,'Yvette','Collier'),(6,'Savannah','Page');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (10,'Gretchen','Kline'),(1,'Kylynn','Miles'),(2,'Leandra','Cobb'),(8,'Taylor','Rivas'),(9,'Pamela','Massey'),(9,'Paloma','Schmidt'),(7,'Graham','Vasquez'),(6,'Channing','Fuentes'),(1,'Wynne','Vance'),(8,'Olga','Barrett');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (9,'Aidan','Wilkerson'),(1,'Marvin','Franks'),(5,'Quinlan','Stein'),(1,'Basil','Washington'),(9,'Lane','Hamilton'),(7,'Philip','Alvarado'),(3,'Oscar','Hodge'),(7,'Lani','Morris'),(9,'Ifeoma','Vasquez'),(10,'Quentin','Mathews');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (4,'Ann','Clemons'),(6,'Hashim','Neal'),(5,'Len','Hahn'),(8,'Zeph','Byers'),(9,'Adam','Rosario'),(8,'Nola','Franklin'),(3,'Samantha','Fisher'),(1,'Reese','Vaughn'),(2,'Quentin','Nielsen'),(4,'Tamara','Goff');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (1,'Joel','Steele'),(1,'Remedios','Huffman'),(3,'Molly','Alexander'),(1,'Hollee','Macias'),(9,'Dean','Lindsey'),(8,'Xena','Strong'),(5,'Todd','Black'),(7,'Orlando','Mcpherson'),(4,'Xyla','Singleton'),(10,'Uta','Malone');
INSERT INTO "Clientes" (dni,Nombre,Apellido) VALUES (4,'Kaye','Serrano'),(3,'Breanna','Mann'),(9,'Azalia','Hendrix'),(9,'Cassandra','Cobb'),(2,'Cathleen','Snow'),(3,'Jorden','Blake'),(7,'Brielle','Sherman'),(6,'Ifeoma','Hunt'),(4,'Urielle','Ingram'),(10,'Shaeleigh','Doyle');

INSERT INTO "Tipo" (descripcion) VALUES ('Praesent interdum ligula eu enim. Etiam imperdiet dictum'),('Sed eget lacus. Mauris non dui nec urna'),('natoque penatibus et magnis dis parturient montes, nascetur'),('ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare'),('amet, faucibus ut, nulla. Cras eu tellus eu'),('semper tellus id nunc interdum feugiat. Sed nec'),('aliquam adipiscing lacus. Ut nec urna et arcu'),('ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis.'),('Aliquam fringilla cursus purus. Nullam scelerisque neque sed'),('tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris');
INSERT INTO "Tipo" (descripcion) VALUES ('ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),('sit amet ultricies sem magna nec quam. Curabitur'),('elit. Nulla facilisi. Sed neque. Sed eget lacus.'),('ridiculus mus. Donec dignissim magna a tortor. Nunc'),('egestas ligula. Nullam feugiat placerat velit. Quisque varius.'),('Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed'),('ligula. Nullam enim. Sed nulla ante, iaculis nec,'),('ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit'),('sit amet metus. Aliquam erat volutpat. Nulla facilisis.'),('purus, in molestie tortor nibh sit amet orci.');
INSERT INTO "Tipo" (descripcion) VALUES ('non sapien molestie orci tincidunt adipiscing. Mauris molestie'),('Nunc ut erat. Sed nunc est, mollis non,'),('a, magna. Lorem ipsum dolor sit amet, consectetuer'),('vitae diam. Proin dolor. Nulla semper tellus id'),('dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.'),('magna nec quam. Curabitur vel lectus. Cum sociis'),('ligula consectetuer rhoncus. Nullam velit dui, semper et,'),('et, lacinia vitae, sodales at, velit. Pellentesque ultricies'),('nisi sem semper erat, in consectetuer ipsum nunc'),('Curabitur ut odio vel est tempor bibendum. Donec');
INSERT INTO "Tipo" (descripcion) VALUES ('nonummy ut, molestie in, tempus eu, ligula. Aenean'),('lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim'),('egestas blandit. Nam nulla magna, malesuada vel, convallis'),('eu dui. Cum sociis natoque penatibus et magnis'),('arcu. Nunc mauris. Morbi non sapien molestie orci'),('ligula. Aenean gravida nunc sed pede. Cum sociis'),('Nam tempor diam dictum sapien. Aenean massa. Integer'),('tristique neque venenatis lacus. Etiam bibendum fermentum metus.'),('eros. Proin ultrices. Duis volutpat nunc sit amet'),('Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere');
INSERT INTO "Tipo" (descripcion) VALUES ('urna convallis erat, eget tincidunt dui augue eu'),('Aenean massa. Integer vitae nibh. Donec est mauris,'),('quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper'),('lacinia at, iaculis quis, pede. Praesent eu dui.'),('aliquet vel, vulputate eu, odio. Phasellus at augue'),('nulla. In tincidunt congue turpis. In condimentum. Donec'),('non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas'),('ligula consectetuer rhoncus. Nullam velit dui, semper et,'),('molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim.'),('gravida sagittis. Duis gravida. Praesent eu nulla at');
INSERT INTO "Tipo" (descripcion) VALUES ('at pede. Cras vulputate velit eu sem. Pellentesque'),('Nunc mauris elit, dictum eu, eleifend nec, malesuada'),('sodales. Mauris blandit enim consequat purus. Maecenas libero'),('velit. Sed malesuada augue ut lacus. Nulla tincidunt,'),('magna a tortor. Nunc commodo auctor velit. Aliquam'),('orci. Phasellus dapibus quam quis diam. Pellentesque habitant'),('Sed eget lacus. Mauris non dui nec urna'),('ad litora torquent per conubia nostra, per inceptos'),('accumsan convallis, ante lectus convallis est, vitae sodales'),('commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,');
INSERT INTO "Tipo" (descripcion) VALUES ('ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit'),('consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),('ipsum leo elementum sem, vitae aliquam eros turpis'),('quis urna. Nunc quis arcu vel quam dignissim'),('orci luctus et ultrices posuere cubilia Curae; Phasellus'),('tincidunt vehicula risus. Nulla eget metus eu erat'),('dictum placerat, augue. Sed molestie. Sed id risus'),('dictum. Phasellus in felis. Nulla tempor augue ac'),('neque venenatis lacus. Etiam bibendum fermentum metus. Aenean'),('nisi a odio semper cursus. Integer mollis. Integer');
INSERT INTO "Tipo" (descripcion) VALUES ('malesuada vel, convallis in, cursus et, eros. Proin'),('ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.'),('non, feugiat nec, diam. Duis mi enim, condimentum'),('Vestibulum accumsan neque et nunc. Quisque ornare tortor'),('purus mauris a nunc. In at pede. Cras'),('egestas rhoncus. Proin nisl sem, consequat nec, mollis'),('nascetur ridiculus mus. Proin vel nisl. Quisque fringilla'),('nunc id enim. Curabitur massa. Vestibulum accumsan neque'),('aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod'),('ac, fermentum vel, mauris. Integer sem elit, pharetra');
INSERT INTO "Tipo" (descripcion) VALUES ('Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,'),('diam. Proin dolor. Nulla semper tellus id nunc'),('ultrices, mauris ipsum porta elit, a feugiat tellus'),('eros. Nam consequat dolor vitae dolor. Donec fringilla.'),('ante dictum cursus. Nunc mauris elit, dictum eu,'),('consectetuer mauris id sapien. Cras dolor dolor, tempus'),('eu dolor egestas rhoncus. Proin nisl sem, consequat'),('ut dolor dapibus gravida. Aliquam tincidunt, nunc ac'),('enim. Suspendisse aliquet, sem ut cursus luctus, ipsum'),('sed turpis nec mauris blandit mattis. Cras eget');
INSERT INTO "Tipo" (descripcion) VALUES ('blandit viverra. Donec tempus, lorem fringilla ornare placerat,'),('primis in faucibus orci luctus et ultrices posuere'),('Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.'),('Maecenas iaculis aliquet diam. Sed diam lorem, auctor'),('libero et tristique pellentesque, tellus sem mollis dui,'),('montes, nascetur ridiculus mus. Proin vel nisl. Quisque'),('torquent per conubia nostra, per inceptos hymenaeos. Mauris'),('lectus pede, ultrices a, auctor non, feugiat nec,'),('hendrerit neque. In ornare sagittis felis. Donec tempor,'),('Maecenas iaculis aliquet diam. Sed diam lorem, auctor');

INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (10,'sapien. Cras dolor dolor, tempus',58),(2,'purus gravida sagittis. Duis gravida.',49),(1,'Integer aliquam adipiscing lacus. Ut',80),(7,'sed pede. Cum sociis natoque',99),(6,'Aliquam erat volutpat. Nulla facilisis.',48),(3,'ac mattis velit justo nec',7),(10,'magnis dis parturient montes, nascetur',67),(9,'eu, odio. Phasellus at augue',67),(6,'lacus. Mauris non dui nec',1),(7,'semper auctor. Mauris vel turpis.',33);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (1,'enim commodo hendrerit. Donec porttitor',42),(7,'auctor. Mauris vel turpis. Aliquam',67),(6,'Quisque fringilla euismod enim. Etiam',55),(8,'convallis in, cursus et, eros.',79),(7,'sed pede nec ante blandit',12),(9,'lorem, sit amet ultricies sem',2),(1,'Aliquam erat volutpat. Nulla dignissim.',17),(7,'est. Mauris eu turpis. Nulla',36),(3,'felis orci, adipiscing non, luctus',33),(2,'aliquet nec, imperdiet nec, leo.',23);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (1,'nonummy ut, molestie in, tempus',31),(7,'torquent per conubia nostra, per',32),(5,'pede, ultrices a, auctor non,',64),(3,'cursus a, enim. Suspendisse aliquet,',83),(6,'tincidunt. Donec vitae erat vel',43),(5,'diam lorem, auctor quis, tristique',24),(1,'est. Nunc ullamcorper, velit in',87),(8,'Mauris non dui nec urna',45),(8,'ante, iaculis nec, eleifend non,',49),(10,'ipsum dolor sit amet, consectetuer',49);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (1,'luctus. Curabitur egestas nunc sed',96),(4,'vitae nibh. Donec est mauris,',1),(9,'ut, sem. Nulla interdum. Curabitur',86),(1,'diam vel arcu. Curabitur ut',13),(8,'non, bibendum sed, est. Nunc',47),(10,'Nulla semper tellus id nunc',20),(7,'interdum. Sed auctor odio a',86),(2,'eu neque pellentesque massa lobortis',5),(6,'metus. In nec orci. Donec',50),(7,'eu enim. Etiam imperdiet dictum',9);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (3,'mi tempor lorem, eget mollis',71),(7,'aliquet, sem ut cursus luctus,',2),(3,'consequat dolor vitae dolor. Donec',30),(4,'justo eu arcu. Morbi sit',86),(2,'dolor elit, pellentesque a, facilisis',49),(6,'pede. Praesent eu dui. Cum',33),(6,'sollicitudin commodo ipsum. Suspendisse non',13),(9,'mus. Donec dignissim magna a',4),(5,'facilisis vitae, orci. Phasellus dapibus',93),(4,'id enim. Curabitur massa. Vestibulum',48);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (6,'Donec tempus, lorem fringilla ornare',56),(5,'aliquet, metus urna convallis erat,',90),(8,'urna. Vivamus molestie dapibus ligula.',16),(5,'leo. Vivamus nibh dolor, nonummy',8),(5,'volutpat. Nulla facilisis. Suspendisse commodo',89),(9,'eget metus eu erat semper',56),(2,'conubia nostra, per inceptos hymenaeos.',45),(2,'vel arcu. Curabitur ut odio',98),(7,'erat semper rutrum. Fusce dolor',26),(10,'ultricies ligula. Nullam enim. Sed',85);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (7,'ut, pharetra sed, hendrerit a,',32),(8,'et, rutrum eu, ultrices sit',28),(10,'bibendum sed, est. Nunc laoreet',70),(9,'id, ante. Nunc mauris sapien,',11),(3,'Donec nibh enim, gravida sit',12),(1,'dolor elit, pellentesque a, facilisis',31),(2,'tortor. Integer aliquam adipiscing lacus.',25),(7,'ipsum non arcu. Vivamus sit',76),(10,'ornare tortor at risus. Nunc',12),(1,'arcu. Vivamus sit amet risus.',37);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (8,'placerat eget, venenatis a, magna.',95),(9,'sem semper erat, in consectetuer',92),(1,'lobortis. Class aptent taciti sociosqu',96),(10,'ut lacus. Nulla tincidunt, neque',66),(9,'Donec porttitor tellus non magna.',31),(3,'risus a ultricies adipiscing, enim',35),(3,'elit, a feugiat tellus lorem',16),(5,'quam a felis ullamcorper viverra.',18),(3,'rhoncus. Proin nisl sem, consequat',96),(4,'Phasellus nulla. Integer vulputate, risus',27);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (5,'Aliquam auctor, velit eget laoreet',28),(7,'Nullam scelerisque neque sed sem',89),(9,'Suspendisse tristique neque venenatis lacus.',84),(5,'tristique pellentesque, tellus sem mollis',65),(1,'nulla. Donec non justo. Proin',28),(6,'dolor, nonummy ac, feugiat non,',49),(8,'et netus et malesuada fames',92),(2,'a, enim. Suspendisse aliquet, sem',41),(3,'eu arcu. Morbi sit amet',87),(6,'Etiam gravida molestie arcu. Sed',89);
INSERT INTO "Inmueble " (idTipo,direccion,owner) VALUES (10,'egestas rhoncus. Proin nisl sem,',56),(8,'eu, euismod ac, fermentum vel,',84),(1,'Nam ligula elit, pretium et,',67),(3,'ad litora torquent per conubia',67),(9,'justo nec ante. Maecenas mi',99),(2,'adipiscing. Mauris molestie pharetra nibh.',98),(8,'tincidunt. Donec vitae erat vel',46),(9,'blandit enim consequat purus. Maecenas',90),(10,'tincidunt aliquam arcu. Aliquam ultrices',12),(10,'Suspendisse commodo tincidunt nibh. Phasellus',52);

INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (39,23,2),(28,47,8),(13,29,2),(34,74,6),(52,43,10),(53,45,1),(72,35,1),(91,27,1),(30,73,9),(84,67,6);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (56,15,3),(25,75,1),(75,13,1),(70,60,1),(2,17,10),(87,17,5),(38,70,3),(76,19,9),(92,8,9),(8,60,4);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (87,49,5),(31,78,10),(21,11,1),(30,95,4),(10,54,2),(1,37,7),(87,64,4),(19,4,10),(58,50,6),(80,58,5);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (46,52,7),(44,61,6),(97,84,10),(79,92,9),(62,38,3),(80,41,7),(11,68,4),(42,42,7),(16,82,5),(68,42,9);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (75,94,1),(93,49,2),(11,31,8),(51,81,10),(3,15,10),(29,71,2),(8,77,9),(35,57,6),(66,29,5),(60,42,1);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (71,32,10),(48,97,9),(31,58,8),(80,2,2),(35,41,4),(11,20,10),(21,99,3),(86,61,6),(5,40,7),(27,14,6);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (32,93,5),(66,100,5),(79,97,10),(26,58,6),(55,81,2),(15,6,2),(87,42,9),(39,87,7),(72,86,5),(35,15,5);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (25,6,1),(28,88,3),(93,58,9),(84,72,4),(79,80,10),(95,32,2),(27,98,6),(29,100,4),(36,29,1),(50,85,3);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (27,83,6),(63,39,1),(92,94,3),(71,83,7),(65,59,10),(52,39,6),(23,19,7),(65,75,4),(40,65,7),(31,6,4);
INSERT INTO "Operaciones" (idCliente,idInmueble,tipo) VALUES (93,18,3),(71,71,6),(31,85,3),(12,19,7),(60,89,1),(56,13,6),(92,82,7),(99,91,1),(15,18,9),(36,93,5);

INSERT INTO "Caracteristicas " (descripcion) VALUES ('vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at'),('gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa'),('Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,'),('pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi.'),('nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in'),('mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed'),('tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh'),('libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et,'),('convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum'),('quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('pretium neque. Morbi quis urna. Nunc quis arcu vel quam'),('in sodales elit erat vitae risus. Duis a mi fringilla'),('ornare sagittis felis. Donec tempor, est ac mattis semper, dui'),('elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non'),('Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue'),('in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris'),('Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae,'),('justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,'),('condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus'),('sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In'),('Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus'),('a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),('ultrices a, auctor non, feugiat nec, diam. Duis mi enim,'),('ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam'),('nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque,'),('vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.'),('elementum sem, vitae aliquam eros turpis non enim. Mauris quis'),('scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis'),('sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis,');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,'),('purus mauris a nunc. In at pede. Cras vulputate velit'),('volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean'),('Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.'),('quis diam luctus lobortis. Class aptent taciti sociosqu ad litora'),('eget mollis lectus pede et risus. Quisque libero lacus, varius'),('egestas nunc sed libero. Proin sed turpis nec mauris blandit'),('porttitor interdum. Sed auctor odio a purus. Duis elementum, dui'),('euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut,'),('Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros.'),('hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer,'),('metus vitae velit egestas lacinia. Sed congue, elit sed consequat'),('mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.'),('fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed'),('Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,'),('sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed'),('enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare'),('fames ac turpis egestas. Fusce aliquet magna a neque. Nullam'),('et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat,');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.'),('semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices'),('nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae'),('non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat'),('in faucibus orci luctus et ultrices posuere cubilia Curae; Donec'),('varius orci, in consequat enim diam vel arcu. Curabitur ut'),('est, congue a, aliquet vel, vulputate eu, odio. Phasellus at'),('ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla'),('dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.'),('ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at'),('nunc. Quisque ornare tortor at risus. Nunc ac sem ut'),('dui, in sodales elit erat vitae risus. Duis a mi'),('ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac'),('a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),('Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),('magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.'),('eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec'),('aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non'),('ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('sodales purus, in molestie tortor nibh sit amet orci. Ut'),('tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer'),('nibh. Donec est mauris, rhoncus id, mollis nec, cursus a,'),('ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam'),('commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,'),('bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna'),('magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.'),('amet nulla. Donec non justo. Proin non massa non ante'),('vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.'),('luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem'),('vitae sodales nisi magna sed dui. Fusce aliquam, enim nec'),('Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),('tellus id nunc interdum feugiat. Sed nec metus facilisis lorem'),('Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,'),('eros nec tellus. Nunc lectus pede, ultrices a, auctor non,'),('sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam'),('a purus. Duis elementum, dui quis accumsan convallis, ante lectus'),('molestie. Sed id risus quis diam luctus lobortis. Class aptent'),('iaculis enim, sit amet ornare lectus justo eu arcu. Morbi');
INSERT INTO "Caracteristicas " (descripcion) VALUES ('Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,'),('ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.'),('lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc'),('consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim'),('non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,'),('arcu. Curabitur ut odio vel est tempor bibendum. Donec felis'),('lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.'),('euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate'),('conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien'),('sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus');

INSERT INTO "Tipo_Cambio" (descripcion) VALUES ('vel'),('lacus.'),('Sed'),('commodo'),('risus'),('egestas.'),('at,'),('euismod'),('mattis'),('turpis');
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('051114',38,1),('060415',86,9),('171014',60,7),('140516',60,8),('080615',70,7),('300515',62,8),('010615',73,7),('150115',100,2),('060515',15,9),('100815',87,2);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('021115',10,7),('120415',15,6),('010716',10,6),('270316',86,1),('121014',88,2),('200516',4,9),('300915',42,4),('150914',67,4),('280315',73,9),('270815',31,2);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('261014',9,2),('131115',88,1),('090216',89,6),('050816',55,6),('251014',56,3),('020615',46,6),('240914',79,9),('090115',57,2),('261115',68,5),('240715',64,10);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('040616',94,10),('100816',41,8),('200615',83,10),('260914',56,1),('050415',70,8),('021215',5,6),('160915',2,9),('120515',40,7),('011014',4,6),('270815',31,8);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('260315',55,5),('100216',68,2),('241015',45,5),('110616',22,9),('170515',58,5),('130516',23,3),('170316',63,4),('270715',38,10),('090715',102,5),('111115',63,7);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('190216',89,1),('211114',59,2),('160116',32,5),('110615',25,8),('210516',104,1),('301014',43,8),('110815',46,6),('140116',101,2),('130914',68,9),('220715',50,10);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('240515',42,6),('181114',74,5),('301014',100,1),('200516',31,8),('100315',72,5),('150816',13,7),('291115',32,6),('271115',41,5),('130915',96,2),('220215',57,8);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('290716',96,10),('270215',56,6),('220914',102,5),('290715',90,2),('030215',25,4),('131015',28,4),('080215',81,3),('270615',105,4),('160115',47,1),('140516',84,5);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('070716',1,9),('060715',97,1),('180415',102,4),('211015',66,6),('220616',59,1),('260416',71,5),('140515',70,6),('311014',1,6),('290316',58,1),('290516',53,8);
INSERT INTO "Cambio" (fecha,valorActual,idTipo_Cambio) VALUES ('180615',20,2),('230615',54,10),('020515',89,6),('290416',55,8),('200616',90,5),('300515',80,3),('210116',13,3),('070315',92,8),('150914',61,7),('181015',66,10);

INSERT INTO "Precio" (idInmueble,idCambio) VALUES (2,4),(9,2),(8,5),(4,5),(6,5),(7,6),(8,6),(8,1),(2,9),(9,10);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (10,10),(2,8),(2,3),(9,4),(9,3),(4,4),(8,1),(1,8),(4,5),(3,4);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (7,9),(8,6),(10,1),(9,4),(6,1),(8,5),(6,1),(3,6),(4,4),(4,10);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (5,9),(7,4),(6,3),(4,1),(8,8),(9,4),(7,1),(2,7),(2,7),(5,2);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (2,9),(3,10),(5,6),(2,3),(1,6),(8,1),(3,3),(3,9),(5,2),(8,5);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (5,5),(10,4),(9,7),(1,2),(3,1),(6,7),(4,2),(4,2),(7,5),(4,5);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (1,4),(6,8),(6,10),(10,2),(1,1),(3,7),(3,4),(3,8),(8,6),(2,10);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (3,4),(5,9),(10,8),(2,6),(10,7),(5,1),(1,8),(6,7),(1,4),(9,4);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (6,2),(1,4),(3,4),(3,7),(4,1),(7,3),(2,10),(5,3),(1,6),(1,7);
INSERT INTO "Precio" (idInmueble,idCambio) VALUES (3,1),(1,5),(9,6),(1,2),(4,5),(5,7),(9,5),(7,4),(2,8),(7,5);

INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (9,40170,2,3,3),(5,21028,9,9,5),(4,43266,1,7,9),(6,44452,10,8,3),(9,7444,1,7,7),(1,30659,9,10,1),(3,14882,5,2,10),(4,18212,1,7,7),(9,26460,3,1,5),(1,1034,7,6,4);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (6,8487,4,8,6),(10,1336,7,7,10),(10,6095,4,7,8),(8,17757,2,6,1),(2,12174,9,5,8),(2,29802,3,7,10),(8,17671,10,7,7),(1,16010,5,6,2),(7,2347,4,4,6),(4,2360,9,7,6);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (4,22513,9,2,8),(8,11657,10,2,1),(10,47836,4,3,9),(2,1115,9,10,8),(4,9337,2,10,9),(6,31479,10,5,10),(5,13874,4,1,7),(10,40044,7,8,6),(9,30307,3,9,5),(2,16071,4,2,3);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (2,24555,2,7,8),(6,33139,3,1,5),(10,1487,2,3,9),(1,7499,3,5,6),(10,42132,4,6,8),(1,26700,2,9,9),(3,30761,9,9,6),(10,901,10,5,7),(2,22696,7,7,1),(7,10158,9,4,2);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (1,25982,3,1,6),(10,11412,9,7,2),(8,6504,9,2,8),(7,37289,10,6,6),(3,19653,5,5,5),(5,9721,8,10,8),(2,34578,1,9,10),(4,25833,6,2,4),(1,39525,7,4,9),(2,22362,8,2,9);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (6,47550,8,1,5),(5,46498,5,1,7),(9,26790,7,3,10),(3,13645,5,2,2),(4,28986,3,8,3),(4,25958,6,8,8),(4,26596,4,10,7),(10,2677,2,5,8),(10,28729,4,3,8),(7,5054,7,6,5);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (2,2387,4,1,10),(10,47804,2,4,7),(7,16225,8,10,8),(2,34923,7,10,8),(10,25832,8,9,10),(2,4601,8,6,4),(2,47037,5,1,1),(2,7353,5,5,6),(5,41166,3,9,3),(2,31862,10,4,9);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (6,44815,2,1,5),(3,37816,7,1,4),(8,45060,5,5,7),(5,38298,6,1,9),(7,9077,7,10,7),(7,7676,1,4,7),(2,930,4,6,1),(10,40404,2,1,4),(7,16701,9,1,10),(4,45575,2,2,5);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (8,1106,5,4,3),(10,33712,7,6,7),(8,19381,4,10,10),(3,4388,9,5,9),(10,11249,6,5,7),(2,40695,7,8,6),(3,31325,2,4,5),(1,810,9,4,5),(5,11370,10,4,7),(6,18486,3,3,6);
INSERT INTO "Pagos" (idPagos,importe,numOp,idOperacion,idCambio) VALUES (10,36425,1,6,10),(4,28096,6,3,4),(3,11846,9,9,5),(3,7136,9,6,7),(9,23759,1,6,2),(9,44306,10,1,3),(7,35689,9,9,6),(9,27367,4,9,6),(8,15510,2,5,6),(10,48286,4,1,4);

INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (6,3,'290615'),(10,10,'291115'),(9,3,'221115'),(6,9,'150515'),(3,9,'161014'),(3,12,'290415'),(4,9,'150716'),(4,7,'131214'),(2,6,'250515'),(2,7,'240616');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (6,5,'291115'),(1,5,'020915'),(3,10,'161215'),(2,12,'051115'),(9,4,'271015'),(2,5,'050516'),(3,5,'021114'),(5,4,'020914'),(5,5,'110816'),(6,5,'160716');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (2,7,'020316'),(3,2,'200216'),(8,6,'180316'),(4,7,'080516'),(10,4,'180815'),(8,5,'200316'),(6,11,'160416'),(5,3,'260615'),(4,9,'311014'),(7,4,'110815');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (5,10,'110914'),(6,2,'200914'),(2,9,'100616'),(6,2,'100116'),(7,12,'100115'),(7,12,'050716'),(3,5,'211014'),(4,7,'180415'),(7,10,'110615'),(10,4,'130616');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (4,4,'151014'),(2,7,'040914'),(10,1,'230914'),(2,8,'200515'),(3,1,'211015'),(5,5,'300315'),(7,3,'140315'),(4,12,'290315'),(7,9,'211215'),(6,11,'050915');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (6,10,'010115'),(3,5,'231214'),(2,7,'281214'),(5,5,'170716'),(5,5,'280914'),(5,5,'120215'),(2,11,'250716'),(5,10,'250914'),(10,9,'230914'),(10,1,'120914');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (10,10,'180915'),(4,8,'230715'),(6,10,'300716'),(7,9,'250116'),(1,10,'080316'),(5,1,'110116'),(5,7,'060515'),(9,11,'011214'),(6,7,'060116'),(7,8,'191115');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (4,11,'260616'),(9,2,'241015'),(6,10,'220616'),(9,11,'031114'),(8,3,'270316'),(6,1,'090415'),(1,4,'181015'),(10,12,'051115'),(10,11,'181115'),(9,8,'280915');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (6,2,'190914'),(4,1,'120616'),(2,8,'140914'),(2,12,'300515'),(1,10,'210215'),(3,4,'180516'),(6,12,'260515'),(3,5,'241114'),(1,7,'090415'),(5,2,'300416');
INSERT INTO "Pagos" (Pagos_idPagos,mes,fecha) VALUES (2,5,'021015'),(5,3,'100315'),(5,12,'120116'),(7,12,'141215'),(5,5,'011015'),(10,12,'110416'),(7,3,'141215'),(1,3,'250216'),(7,12,'240416'),(3,10,'180914');

