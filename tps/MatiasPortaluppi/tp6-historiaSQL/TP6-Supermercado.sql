/**********************TP: Supermercado*************************************************/
/**********************Integrantes: Alvarado, Nicolas***********************************/
/***********************************Portaluppi, Matias**********************************/
/***************************************************************************************/

CREATE TABLE proveedores{
	proveedoresId serial,
	precio money,
	PRIMARY KEY  (proveedoresId)
};

CREATE TABLE producto{
	productoId serial,
	descripcion varchar(40),
	PRIMARY KEY (productoId)
};

CREATE TABLE productoProveedores{
	fecha date,
	cantidad int,
	precio money,
	productoId serial,
	proveedoresId serial,
	PRIMARY KEY (fecha),
	FOREIGN KEY (proveedoresId) REFERENCES proveedores(proveedoresId),
	FOREIGN KEY (productoId) REFERENCES producto(productoId)
};

CREATE TABLE precioComprado{
	productoId serial,
	precioVenta money,
	fecha date,
	PRIMARY KEY (precioVenta),
	FOREIGN KEY (productoId) REFERENCES producto(productoId)
};

CREATE TABLE stock{
	productoId serial,
	cantidad int,
	FOREIGN KEY (productoId) REFERENCES producto(productoId),
	PRIMARY KEY (cantidad)
};

CREATE TABLE ticket{
	fecha date,
	num int,
	PRIMARY KEY (num)
};

CREATE TABLE precioTicket{
	num	int,
	precioVenta money,
	cantidad int,
	FOREIGN KEY (num) REFERENCES ticket(num),
	FOREIGN KEY (precioVenta) REFERENCES precioComprado(precioVenta)
};

CREATE TABLE empleado{
	empleadoId int,
	dni varchar(10),
	nombre varchar(20),
	direccion varchar(30),
	telefono varchar(15),
	PRIMARY KEY (empleadoId)
};

CREATE TABLE empleadoTicket{
	empleadoId int,
	num int,
	cantidad int,
	FOREIGN KEY (empleadoId) REFERENCES empleado(empleadoId),
	FOREIGN KEY (num) REFERENCES ticket(num)
};

CREATE TABLE cajero{
	cajeroId int,
	dni varchar(10),
	nombre varchar(20),
	direccion varchar(30),
	telefono varchar(15),
};

CREATE TABLE empleadoCajero{
	empleadoId int,
	cajeroId int,
	horaEntrada time,
	horaSalida time,
	FOREIGN KEY (empleadoId) REFERENCES empleado(empleadoId),
	FOREIGN KEY (cajeroId) REFERENCES cajero(cajeroId)
};
