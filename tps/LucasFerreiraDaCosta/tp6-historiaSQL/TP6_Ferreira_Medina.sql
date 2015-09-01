/*Ferreira da Costa, Medina Martinez*/

CREATE TABLE alumno{
	dni varchar(8),
	apellido varchar(25),
	direccion varchar(25),
	telefono varchar(15),
	PRIMARY KEY (dni)
};

CREATE TABLE profesor{
	dni varchar(8),
	apellido varchar(25),
	direccion varchar(25),
	telefono varchar(15),
	PRIMARY KEY (dni)
};

CREATE TABLE curso{
	id varchar(3),
	descripcion varchar(50),
	costo money,
	fInicio date,
	fFin date,
	dniProfe varchar(8),
	PRIMARY KEY (id),
	FOREIGN KEY (dniProfe) REFERENCES profesor(dni)
};

CREATE TABLE unidades{
	id serial,
	descripcion varchar(50),
	idCurso varchar(3),
	PRIMARY KEY (id),
	FOREIGN KEY (idCurso) REFERENCES curso(id)
};

CREATE TABLE examen{
	id serial,
	nota int,
	fecha date,
	idUnid serial,
	dni varchar(8),
	PRIMARY KEY (id),
	FOREIGN KEY (idUnid) REFERENCES unidades(id),
	FOREIGN KEY (dni) REFERENCES alumno(dni)
};

CREATE TABLE material{
	id serial,
	descripcion varchar(50),
	PRIMARY KEY (id)
};

CREATE TABLE materialEstudio{
	id serial,
	idMaterial serial,
	idUnid serial,
	descripcion varchar(50),
	PRIMARY KEY (id),
	FOREIGN KEY (idUnid) REFERENCES unidades(id),
	FOREIGN KEY (idMaterial) REFERENCES material(idMaterial),
};
