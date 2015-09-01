/* tp1 Restaurante, Integrantes: Torres Lautaro y Palomeque Ezequiel */
CREATE TABLE clientes{
	clienteId serial,
	nombre varchar(30),
	telefono varchar(12)
	PRIMARY KEY (clienteId) 
};

CREATE TABLE pedido{
	pedidoId serial,
	precio money,
	clienteId serial,
	PRIMARY KEY (pedidoId),
	FOREIGN KEY (clienteId) REFERENCES clientes(clienteId)
};

CREATE TABLE mesas{
	mesasId serial,
	numero int,
	PRIMARY KEY (mesasId)
};

CREATE TABLE reserva{
	mesasId serial,
	clienteId serial,
	FOREIGN KEY (mesasId) REFERENCES mesas(mesasId),
	FOREIGN KEY (clienteId) REFERENCES clientes(clienteId)	
};

CREATE TABLE encuesta{
	descripcion varchar(60),
	clienteId serial,
	PRIMARY KEY (descripcion),
	FOREIGN KEY (clienteId) REFERENCES clientes(clienteId)
};

CREATE TABLE plato{
	platoId serial,
	descripcion varchar(80),
	nombre varchar(20),
	PRIMARY KEY (platoId)
};

CREATE TABLE platoPedidos{
	pedidoId serial,
	platoId serial,
	tInicio time,
	tFin time,
	FOREIGN KEY (pedidoId) REFERENCES pedido(pedidoId),
	FOREIGN KEY (platoId) REFERENCES plato(platoId)
};

CREATE TABLE ingrediente{
	ingredienteId serial,
	nombre varchar(20),
	PRIMARY KEY (ingredienteId)
};

CREATE TABLE platoIngrediente{
	cantidad int,
	platoId serial,
	ingredienteId serial,
	FOREIGN KEY (platoId) REFERENCES plato(platoId),
	FOREIGN KEY (ingredienteId) REFERENCES ingrediente(ingredienteId)
};

CREATE TABLE mozo{
mozoId serial,
PRIMARY KEY (mozoId)
};
CREATE TABLE deliveryBoy{
	id serial,
	patenteMoto varchar(15),
	PRIMARY KEY (id)
};
CREATE TABLE viaje{
	viajeId serial,
	patenteMoto varchar(15),
	PRIMARY KEY (viajeId),
	FOREIGN KEY (patenteMoto) REFERENCES deliveryBoy(patenteMoto)
};
CREATE TABLE delivery{
	pedidoId serial,
	precio money,
	viajeId serial,
	FOREIGN KEY pedidoId REFERENCES pedido(pedidoId),
	FOREIGN KEY viajeId REFERENCES viaje(viajeId)
	};
CREATE TABLE local{
	pedidoId serial,
	mesasId serial,
	mozoId serial,
	FOREIGN KEY pedidoId REFERENCES pedido(pedidoId),
	FOREIGN KEY mesasId REFERENCES mesas(mesasId),
	FOREIGN KEY mozoId REFERENCES mozo(mozoId)
};
}
