--Imperatori Alejandro
--Dastugue Matias

CREATE TABLE Cliente (
calle varchar(30),
localidad varchar(30),
numero integer,
nombre varchar(50),
telefono varchar (12),
dniCuil varchar(12),
apellido varchar(50),
PRIMARY KEY (dniCuil)
);

CREATE TABLE Promociones (
id integer, 
tipo varchar(30),
descripcion varchar (255),
PRIMARY KEY(id)
);

CREATE TABLE Promociones_Cliente (
id_promocion integer,
cliente_dniCuil varchar(12),
PRIMARY KEY (id_promocion,cliente_dniCuil),
FOREIGN KEY (id_promocion) references Promociones(id),
FOREIGN KEY (Cliente_dniCuil) references Cliente(dniCuil)
);

CREATE TABLE Tipos_factura (
id_tipo integer,
descripcion varchar(10),
PRIMARY KEY(id_tipo)
);

CREATE TABLE Facturas (
id_factura integer,
fecha date,
id_tipo_factura integer,
PRIMARY KEY(id_factura),
FOREIGN KEY(id_tipo_factura) references Tipos_factura(id_tipo)
);

CREATE TABLE Compras (
id_compra integer,
fecha date,
id_promocion integer,
cantidad integer,
id_factura integer,
PRIMARY KEY(id_compra),
FOREIGN KEY(id_promocion) references Promociones(id),
FOREIGN KEY(id_factura) references Facturas(id_factura)
);

CREATE TABLE Productos (
cod_producto integer,
descripcion varchar(50),
PRIMARY KEY(cod_producto)
);

CREATE TABLE Pedidos (
id_pedido integer,
precio_total money,
fecha date,
PRIMARY KEY(id_pedido)
);

CREATE TABLE Pedidos_Productos (
cod_producto integer,
id_pedido integer,
descripcion varchar(50),
PRIMARY KEY(cod_producto,id_pedido),
FOREIGN KEY(cod_producto) references Productos(cod_producto),
FOREIGN KEY(id_pedido) references Pedidos(id_pedido)
);

CREATE TABLE Precios_Venta (
id_precio_venta integer,
fecha date,
monto money,
PRIMARY KEY(id_precio_venta)
);

CREATE TABLE Precios_Venta_Productos (
cod_producto integer,
id_precio_venta integer,
PRIMARY KEY(cod_producto,id_precio_venta),
FOREIGN KEY(cod_producto) references Productos(cod_producto),
FOREIGN KEY(id_precio_venta) references Precios_Venta(id_precio_venta)
);

CREATE TABLE Proveedores (
cuit integer,
razon_social varchar(12),
calle varchar(20),
altura integer,
barrio varchar(20),
localidad varchar(20),
provincia varchar(20),
PRIMARY KEY(cuit)
);

CREATE TABLE Pedidos_Proveedor (
cuit_proveedor integer,
id_pedido integer,
PRIMARY KEY(cuit_proveedor,id_pedido),
FOREIGN KEY(cuit_proveedor) references Proveedores(cuit),
FOREIGN KEY(id_pedido) references Pedidos(id_pedido)
);

CREATE TABLE Precios_Compra (
id_precio_compra integer,
cuit_proveedor integer,
fecha date,
precio money,
PRIMARY KEY(id_precio_compra),
FOREIGN KEY(cuit_proveedor) references Proveedores(cuit)
);

CREATE TABLE Precio_Compra_Productos (
cod_producto integer,
id_precio_compra integer,
PRIMARY KEY(cod_producto,id_precio_compra),
FOREIGN KEY(cod_producto) references Productos(cod_producto),
FOREIGN KEY(id_precio_compra) references Precios_Compra(id_precio_compra)
);
