//Salazar Facundo Martin y Edwin William Alvarez Zapata//

Create table personal (
		codigo_per integer,
		nombre varchar(30),
		tel integer,
		cel integer,
		mail varchar(20),
		direccion varchar(40),
		dni integer,
		primary key (codigo_per)
);

Create table pasajeros (
		dni integer,
		nombre varchar(30),
		tel integer,
		cel integer,
		mail varchar(20),
		direccion varchar(40),
		primary key (dni)
);

Create table aviones (
		codigo_avi integer,
		modelo varchar(35),
		año integer,
		primary key (codigo_avi)
);

Create table destino (
		codigo_des integer,
		nombre varchar(30),
		primary key (codigo_des)
);

Create table chequeos (
		codigo_che integer,
		codigo_avi integer,
		primary key (codigo_che),
		foreign key (codigo_avi)
			references aviones (codigo_avi)
);

Create table administracion (
		codigo_per integer,
		sector varchar (20),
		cargo varchar (20),
		primary key (codigo_per),
		foreign key (codigo_per)
			references personal (codigo_per)
);

Create table pilotos (
		codigo_per integer,
		rango varchar(20),
		primary key (codigo_per),
		foreign key (codigo_per)
			references personal (codigo_per)
);

Create table vuelos (
		codigo_vue integer,
		codigo_des integer,
		origen varchar (30),
		millas integer,
		primary key (codigo_vue),
		foreign key (codigo_des)
			references destino (codigo_des)
);

Create table vuelan (
		codigo_vue integer,
		codigo_per integer,
		piloto varchar (30),
		copiloto varchar (30),
		primary key (codigo_vue, codigo_per),
		foreign key (codigo_vue)
			references vuelos (codigo_vue),
		foreign key (codigo_per)
			references pilotos (codigo_per)
);

Create table viajan (
		codigo_vue integer,
		dni integer,
		asistencia varchar (2),
		primary key (codigo_vue, dni),
		foreign key (codigo_vue)
			references vuelos (codigo_vue),
		foreign key (dni)
			references pasajeros (dni)
);
