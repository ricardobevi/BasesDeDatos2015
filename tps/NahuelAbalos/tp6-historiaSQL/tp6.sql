--Abalos Nahuel
--Ruscitto Damian

Create table Proveedores (
id integer,
calle varchar(30),
localidad varchar(30),
numero integer(5),
razonSocial varchar(50),
dniCuil varchar(12),
descripcion varchar(50),
constraint id primary key(id)
);

Create table Productos (
codigo integer,
id_precio integer,
descripcion varchar(50),
constraint codigo primary key(codigo)
);

Create table Proveedores-Producto (
cod_prov integer,
precio integer,
fecha date,
id_proveedor integer,
id_prodcuto,
constraint cod_prov primary key(cod_prov)
foreign key (id_proveedor) references Proveedores(id)
foreign key (id_producto) references Productos(codigo)
);

Create table Pedidos (
cod integer,
numero integer,
constraint cod primary key(cod)
foreign key (id_proveedor) references Proveedores(id)
foreign key (id_producto) references Productos(codigo)
);

Create table Precios (
codigo integer,
precio integer,
fecha date,
cod_producto integer,
constraint codigo primary key(codigo)
foreign key (cod_producto) references Prodcutos(codigo)
);

Create table precios_pedidos (
cod_pedido integer,
precio integer,
constraint cod_pedido primary key(cod_pedido)
constraint precio primary key(precio)
foreign key (precio) references Precios(codigo)
foreign key (cod_pedido) references pedidosClientes(id_pedido)
);

Create table pedidosClientes (
id_pedido integer,
descuento integer,
constraint id_pedido primary key(id_pedido)
foreign key (descuento) references Descuento(Porcentaje)
);

Create table clientes_pedidos (
codigo_pedido integer,
id_cli integer
constraint codigo_pedido primary key(codigo_pedido)
constraint id_cli primary key(id_cli)
foreign key (codigo_pedido) references pedidosClientes(id_pedido)
foreign key (id_cli) references Clientes(codigo)
);

Create table Descuento (
porcentaje integer,
constraint porcentaje primary key(porcentaje)
);

Create table clientesMayoristas (
id_cliente integer,
nombre varchar(30),
apellido varchar(30),
DNI varchar(12),
constraint id_cliente primary key(id_cliente)
);

Create table clientesMinoristas (
id_cliente integer,
nombre varchar(30),
apellido varchar(30),
DNI varchar(12),
constraint id_cliente primary key(id_cliente)
);
