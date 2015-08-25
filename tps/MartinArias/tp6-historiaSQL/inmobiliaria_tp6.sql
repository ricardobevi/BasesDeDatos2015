-- Inmobiliria - Arias, Ramirez 7ºC - 25/08/2015
-- Importar en PostgreSQL
CREATE TABLE dueños(
	id_dueño SERIAL PRIMARY KEY,
	nombre VARCHAR (20),
	dni varchar (8),
	UNIQUE(id_dueño)
	);

CREATE TABLE propiedades(
	id_propiedades SERIAL PRIMARY KEY,
	id_client SERIAL REFERENCES dueño(id_dueño),
	id_preci SERIAL REFERENCES precio(id_precio),
	id_tip_prop SERIAL REFERENCES tipo_propiedades(id_tipo_prop),
	UNIQUE(id_propiedades)
	);

CREATE TABLE propiedades_precio(
	id_prop SERIAL REFERENCES propiedades(id_propiedades),
	id_preci SERIAL REFERENCES precio(id_precio),
	);

CREATE TABLE caracteristicas(
	id_caracteristicas SERIAL PRIMARY KEY,
	nombre VARCHAR (20),
	descripcion VARCHAR (500),
	UNIQUE(id_caracteristicas)
	);

CREATE TABLE caract_tipoprop(
	id_prop SERIAL REFERENCES propiedades(id_propiedades),
	id_tipo_prop SERIAL REFERENCES tipo_propiedades(id_tipo_prop),
	);

CREATE TABLE tipo_propiedades(
	id_tipo_prop SERIAL PRIMARY KEY,
	descripcion VARCHAR (500),
	UNIQUE(id_tipo_prop)
	);

CREATE TABLE precio(
	id_precio SERIAL PRIMARY KEY,
	valor VARCHAR (20),
	fecha DATE (10),
	UNIQUE(id_precio)
	);
