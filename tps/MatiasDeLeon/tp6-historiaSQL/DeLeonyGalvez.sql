// Matias Ezequiel De Leon y Alejo Galvez
CREATE  TABLE Productos{
  idProductos serial,
  nombre VARCHAR(25),
  PRIMARY KEY (idProductos)
};


CREATE  TABLE Precio{
  idPrecio serial,
  costo money,
  fecha date,
  Productos_idProductos serial,
  PRIMARY KEY (idPrecio),
  FOREIGN KEY (Productos_idProductos) REFERENCES Productos(idProductos)
};


CREATE  TABLE Usuarios{
  idUsuarios serial,
  domicilio VARCHAR(30),
  username VARCHAR(45),
  contraseña VARCHAR(15),
  PRIMARY KEY (idUsuarios)
};


CREATE  TABLE CarritoCompras{
  idCarrito serial,
  tipo VARCHAR(45),
  estado VARCHAR(45),
  fecha DATE,
  hora TIME,
  Usuarios_idUsuarios serial,
  PRIMARY KEY (idCarrito),
  FOREIGN KEY (Usuarios_idUsuarios) REFERENCES Usuarios(idUsuarios)
};

CREATE  TABLE Sucursales{
  idSucursales serial ,
  domicilio VARCHAR(45),
  PRIMARY KEY (idSucursales) 
};

CREATE  TABLE Descuentos{
  idDescuentos serial,
  tipo VARCHAR(10),
  descuento VARCHAR(15),
  PRIMARY KEY (idDescuentos)
};

CREATE  TABLE CarritoCompras_has_Precio{
  Carrito de compras_idCarrito serial,
  Precio_idPrecio serial,
  cantidad INT,
  FOREIGN KEY (`Carrito de compras_idCarrito` ) REFERENCES CarritoCompras(idCarrito)
  FOREIGN KEY (Precio_idPrecio) REFERENCES Precio (idPrecio)
};

CREATE  TABLE Carrito de compras_has_Descuentos{
  CarritoCompras_idCarrito serial,
  Descuentos_idDescuentos INT,
  FOREIGN KEY (Carritocompras_idCarrito) REFERENCES Carritocompras(idCarrito)
  FOREIGN KEY (Descuentos_idDescuentos) REFERENCES Descuentos(idDescuentos)
};

CREATE  TABLE CarritoCompras_has_Sucursales{
   Carrito de compras_idCarrito` INT NOT NULL ,
   Sucursales_idSucursales` INT NOT NULL ,
   FOREIGN KEY (Carrito de compras_idCarrito) REFERENCES Carrito de compras(idCarrito)
   FOREIGN KEY (Sucursales_idSucursales) REFERENCES Sucursales(idSucursales)

