CREATE TABLE cliente(
	razonSocial varchar(40),
	cuil varchar(12),
	PRIMARY KEY (cuil)
);

CREATE TABLE telefonoCliente(
	cuilCliente varchar(12),
	numero varchar(16),
	PRIMARY KEY (cuilCliente),
	FOREIGN KEY (cuilCliente) REFERENCES cliente(cuil)
);

CREATE TABLE direccionCliente(
	cuilCliente varchar(12),
	calle varchar(30),
	numero varchar(6),
	localidad varchar(30),
	PRIMARY KEY (cuilCliente),
	FOREIGN KEY (cuilCliente) REFERENCES cliente(cuil)
);

CREATE TABLE pedido(
	cuilCliente varchar(12),
	pedidoId serial,
	fechaPedido date,
	PRIMARY KEY (pedidoId),
	FOREIGN KEY (cuilCliente) REFERENCES cliente(cuil)
);

CREATE TABLE tipo(
	tipoProducto serial,
	nombre varchar(20),
	PRIMARY KEY (tipoProducto)
);

CREATE TABLE producto(
	productoId serial,
	nombre varchar(30),
	descripcion varchar (30),
	tipoProducto int,
	PRIMARY KEY (productoId),
	FOREIGN KEY (tipoProducto) REFERENCES tipo(tipoProducto)
);

CREATE TABLE empleado(
	dni varchar(12),
	nombre varchar(12),
	apellido varchar(20),
	PRIMARY KEY (dni)
);

CREATE TABLE camion(
	camionId serial,
	matricula varchar(10),
	PRIMARY KEY (camionId)
);

CREATE TABLE camionEmpleado(
	dniEmpleado varchar(12),
	camionId serial,
	FOREIGN KEY (dniEmpleado) REFERENCES empleado(dni),
	FOREIGN KEY (camionId) REFERENCES camion(camionId)
);

CREATE TABLE maquina(
	maquinaId serial,
	contador int,
	PRIMARY KEY (maquinaId)
);

CREATE TABLE insumo(
	insumoId serial,
	descripcion varchar(20),
	PRIMARY KEY (insumoId)
);

CREATE TABLE precio(
	precio money,
	PRIMARY KEY (precio)
);

CREATE TABLE productoPrecio(
	precio money,
	productoId serial,
	fechaPrecio date,
	FOREIGN KEY (precio) REFERENCES precio(precio),
	FOREIGN KEY (productoId) REFERENCES producto(productoId)
);

CREATE TABLE pedidoProducto(
	pedidoId serial,
	productoId serial,
	precio money,
	cantidad int,
	FOREIGN KEY (pedidoId) REFERENCES pedido(pedidoId),
	FOREIGN KEY (productoId) REFERENCES producto(productoId),
	FOREIGN KEY (precio) REFERENCES precio(precio)
);

CREATE TABLE pedidoEmpleado(
	pedidoId serial,
	dniEmpleado varchar(12),
	FOREIGN KEY (pedidoId) REFERENCES pedido(pedidoId),
	FOREIGN KEY (dniEmpleado) REFERENCES empleado(dni)
	
);

CREATE TABLE unidadesVendidas(
	fecha date,
	maquinaId serial,
	unidadesVendidas int,
	PRIMARY KEY (fecha),
	FOREIGN KEY (maquinaId) REFERENCES maquina(maquinaId)

);

CREATE TABLE service(
	maquinaId serial,
	dniEmpleado varchar(12),
	fechaService date,
	observacionesGenerales varchar(60),
	FOREIGN KEY (dniEmpleado) REFERENCES empleado(dni),
	FOREIGN KEY (maquinaId) REFERENCES maquina(maquinaId)
);

CREATE TABLE factura(
	nroFactura varchar(10),
	pedidoId serial,
	PRIMARY KEY (nroFactura),
	FOREIGN KEY (pedidoId) REFERENCES pedido(pedidoId)
);

CREATE TABLE chequeo(
	chequeoId serial,
	descripcion varchar(30),
	PRIMARY KEY (chequeoId)
);

CREATE TABLE chequeoService(
	chequeoId serial,
	fechaService date,
	nota varchar(99),
	FOREIGN KEY (chequeoId) REFERENCES chequeo(chequeoId),
	FOREIGN KEY (fechaService) REFERENCES service(fechaService)
	
);

