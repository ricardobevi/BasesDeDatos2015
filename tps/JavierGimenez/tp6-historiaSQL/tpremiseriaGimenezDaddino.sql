create table clientes
(
ID_cliente INT NOT NULL,
Nombre VARCHAR,
Apellido VARCHAR,
DNI INT NOT NULL,
Num_cliente INT,
PRIMARY KEY(ID_cliente) 
)

CREATE TABLE viajes
(
ID_viaje INT NOT NULL,
destino VARCHAR,
fecha DATE,
lugar_salida VARCHAR,
ID_cliente INT NOT NULL,
PRIMARY KEY(ID_viaje),
FOREIGN KEY(ID_cliente) REFERENCES clientes(ID_cliente)
)

create table tipo_viaje
(
caracteristica VARCHAR,
ID_viaje INT NOT NULL,
FOREIGN KEY(ID_viaje) REFERENCES viajes(ID_viaje)
)

create table vehiculos
(
ID_vehiculos INT NOT NULL,
patente VARCHAR(6),
año INT,
modelo VARCHAR,
espacio VARCHAR,
peso INT,
ID_viaje INT,
PRIMARY KEY(ID_vehiculos),
FOREIGN KEY(ID_viaje) REFERENCES viajes(ID_viaje)
)

create table tipo_vehiculo
(
ID_vehiculos INT NOT NULL,
carga VARCHAR,
pasajero VARCHAR,
ID_chofer INT NOT NULL,
FOREIGN KEY (ID_vehiculos) REFERENCES vehiculos(ID_vehiculos),
FOREIGN KEY (ID_chofer) REFERENCES chofer(ID_chofer)
)

create table chofer
(
ID_chofer INT NOT NULL,
dni INT,
registro VARCHAR,
cedula VARCHAR,
seguro VARCHAR,
PRIMARY KEY (ID_chofer)
)

create table categoria
(
ID_chofer INT NOT NULL,
descripcion VARCHAR,
FOREIGN KEY(ID_chofer) REFERENCES chofer(ID_chofer)
)

create table calificado
(
ID_viaje INT NOT NULL,
puntaje INT,
opinion VARCHAR,
FOREIGN KEY (ID_viaje) REFERENCES viajes(ID_viaje)
)

create table reserva
(
ID_reserva INT NOT NULL,
ID_cliente INT,
descripcion VARCHAR,
ID_canal INT NOT NULL,
PRIMARY KEY(ID_reserva),
FOREIGN KEY (ID_cliente) REFERENCES clientes(ID_cliente),
FOREIGN KEY (ID_canal) REFERENCES canal_reserva(ID_canal) 
)

create table canal_reserva
(
ID_canal INT NOT NULL,
descripcion VARCHAR,
PRIMARY KEY(ID_canal)
)
