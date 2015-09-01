-- Trabajo práctico nº6
-- Historia SQL
-- Teo Iovine
-- Sebastián de la Cruz





CREATE TABLE IF NOT EXISTS moldes (
  idMolde SERIAL NOT NULL,
  tipo ENUM('Plastico', 'Metal') NOT NULL,
  tipoMaquinaria VARCHAR(45) NOT NULL,
  stock INT NOT NULL,
  PRIMARY KEY (idMolde))

CREATE TABLE IF NOT EXISTS productos (
  idProducto SERIAL NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  Descripción TEXT NOT NULL,
  precio FLOAT NOT NULL,
  fkMolde INT NOT NULL,
  PRIMARY KEY (idProducto) ,
  CONSTRAINT id_molde
    FOREIGN KEY (fkMolde)
    REFERENCES moldes (idMolde))

CREATE TABLE IF NOT EXISTS baldosas (
  idBaldosa SERIAL NOT NULL,
  transito ENUM('bajo', 'medio', 'alto') NOT NULL,
   tipo VARCHAR(20) NOT NULL,
  PRIMARY KEY (idBaldosa) ,
  CONSTRAINT id_producto_baldosa
    FOREIGN KEY (idBaldosa)
    REFERENCES productos (idProducto))

CREATE TABLE IF NOT EXISTS azulejos (
  idAzulejo SERIAL NOT NULL,
  humedad ENUM('bajo', 'medio', 'alto') NOT NULL,
   tipo VARCHAR(20) NOT NULL,
  PRIMARY KEY (idAzulejo) ,
  CONSTRAINT id_producto_azulejo
    FOREIGN KEY (idAzulejo)
    REFERENCES productos (idProducto))

CREATE TABLE IF NOT EXISTS materiasPrima (
  idMateriaPrima SERIAL NOT NULL,
  nombre VARCHAR(20) NOT NULL,
  tipo ENUM('Piedras', 'Liquidos', 'Embolsados', 'Otros') NULL,
  PRIMARY KEY (idMateriaPrima) )

CREATE TABLE IF NOT EXISTS proveedor (
  idProveedor SERIAL NOT NULL,
  razonsocial VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  mail VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  PRIMARY KEY (idProveedor) )

CREATE TABLE IF NOT EXISTS molde_proveedor (
  idmolde_proveedor SERIAL NOT NULL,
  idMolde INT NOT NULL,
  idProveedor INT NOT NULL,
  fecha DATE NOT NULL,
  cant INT NOT NULL,
  precio FLOAT NOT NULL,
  PRIMARY KEY (idmolde_proveedor) ,
  CONSTRAINT molde_proveedor_molde_foreign
    FOREIGN KEY (idMolde)
    REFERENCES moldes (idMolde),
  CONSTRAINT molde_proveedor_proveedor_foreign
    FOREIGN KEY (idProveedor)
    REFERENCES proveedor (idProveedor))

CREATE TABLE IF NOT EXISTS materia_proveedor (
  idmateria_proveedor SERIAL NOT NULL,
  idMateria INT NOT NULL,
  idProveedor INT NOT NULL,
  fecha DATE NOT NULL,
  cant INT NOT NULL,
  precio FLOAT NOT NULL,
  PRIMARY KEY (idmateria_proveedor) ,
  CONSTRAINT materia_proveedor_materia_foreign
    FOREIGN KEY (idMateria)
    REFERENCES materiasPrima (idMateriaPrima),
  CONSTRAINT materia_proveedor_proveedor_foreign
    FOREIGN KEY (idProveedor)
    REFERENCES proveedor (idProveedor))

CREATE TABLE IF NOT EXISTS producto_materia (
  idproducto_materia INT NOT NULL,
  idProducto INT NOT NULL,
  idMaterial INT NOT NULL,
  cantidad FLOAT NOT NULL,
  unidad VARCHAR(45) NOT NULL,
  PRIMARY KEY (idproducto_materia) ,
  CONSTRAINT producto_materia_producto_foreign
    FOREIGN KEY (idProducto)
    REFERENCES productos (idProducto),
  CONSTRAINT producto_materia_materia_foreign
    FOREIGN KEY (idMaterial)
    REFERENCES materiasPrima (idMateriaPrima))

CREATE TABLE IF NOT EXISTS clientes (
  idClientes SERIAL NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  mail VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  PRIMARY KEY (idClientes) )

CREATE TABLE IF NOT EXISTS tipo_factura (
  idtipo_factura SERIAL NOT NULL,
  abr VARCHAR(2) NOT NULL,
  nombrefactura VARCHAR(45) NOT NULL,
  PRIMARY KEY (idtipo_factura))

CREATE TABLE IF NOT EXISTS pedidos (
  idpedidos SERIAL NOT NULL,
  estado VARCHAR(20) NOT NULL,
  fecha DATE NOT NULL,
  seña FLOAT NOT NULL,
  idcliente INT NOT NULL,
  tipofactura INT NOT NULL,
  PRIMARY KEY (idpedidos) ,
  CONSTRAINT pedidos_cliente_foreign
    FOREIGN KEY (idcliente)
    REFERENCES clientes (idClientes),
  CONSTRAINT pedidos_factura_foreign
    FOREIGN KEY (tipofactura)
    REFERENCES tipo_factura (idtipo_factura))

CREATE TABLE IF NOT EXISTS detalle_pedido (
  iddetalle_pedido SERIAL NOT NULL,
  idproducto INT NOT NULL,
  idpedido INT NOT NULL,
  PRIMARY KEY (iddetalle_pedido) ,
  CONSTRAINT detalle_pedido_producto_foreign
    FOREIGN KEY (idproducto)
    REFERENCES productos (idProducto),
  CONSTRAINT detalle_pedido_pedido_foreign
    FOREIGN KEY (idpedido)
    REFERENCES pedidos (idpedidos))

CREATE TABLE IF NOT EXISTS responsable (
  idresponsable INT NOT NULL,
  razon_social VARCHAR(45) NOT NULL,
  CUIT VARCHAR(18) NOT NULL,
  PRIMARY KEY (idresponsable) ,
  CONSTRAINT responsable_clientes_foreign
    FOREIGN KEY (idresponsable)
    REFERENCES clientes (idClientes))

CREATE TABLE IF NOT EXISTS monotributista (
  idmonotributista INT NOT NULL,
  razon_social VARCHAR(45) NOT NULL,
  cuit VARCHAR(18) NOT NULL,
  PRIMARY KEY (idmonotributista) ,
  CONSTRAINT monotributista_cliente_foreign
    FOREIGN KEY (idmonotributista)
    REFERENCES clientes (idClientes))

CREATE TABLE IF NOT EXISTS cliente_final (
  idcliente_final INT NOT NULL,
  dni VARCHAR(14) NOT NULL,
  nombre VARCHAR(25) NOT NULL,
  apellido VARCHAR(25) NOT NULL,
  PRIMARY KEY (idcliente_final) ,
  CONSTRAINT cliente_final_cliente_foreign
    FOREIGN KEY (idcliente_final)
    REFERENCES clientes (idClientes))

CREATE TABLE IF NOT EXISTS lotes (
  idlotes SERIAL NOT NULL,
  fecha DATE NOT NULL,
  cantidad INT NOT NULL,
  idproducto INT NOT NULL,
  PRIMARY KEY (idlotes) ,
  CONSTRAINT lotes_producto_foreign
    FOREIGN KEY (idproducto)
    REFERENCES productos (idProducto))

CREATE TABLE IF NOT EXISTS maquinarias (
  idmaquinarias SERIAL NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  tipo VARCHAR(20) NOT NULL,
  estado VARCHAR(20) NOT NULL,
  ultrevision DATE NOT NULL,
  PRIMARY KEY (idmaquinarias))

CREATE TABLE IF NOT EXISTS lote_maquinaria (
  idlote_maquinaria SERIAL NOT NULL,
  idlote INT NOT NULL,
  idmaquinaria INT NOT NULL,
  PRIMARY KEY (idlote_maquinaria, idlote, idmaquinaria) ,
  CONSTRAINT lote_maquinaria_lote_foreign
    FOREIGN KEY (idlote)
    REFERENCES lotes (idlotes),
  CONSTRAINT lote_maquinaria_maquinaria_foreign
    FOREIGN KEY (idmaquinaria)
    REFERENCES maquinarias (idmaquinarias))

CREATE TABLE IF NOT EXISTS operario (
  idoperario SERIAL NOT NULL,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  dni VARCHAR(15) NOT NULL,
  categoria VARCHAR(20) NOT NULL,
  sueldo FLOAT NOT NULL,
  PRIMARY KEY (idoperario))

CREATE TABLE IF NOT EXISTS maquinaria_operario (
  idmaquinaria_operario SERIAL NOT NULL,
  fecha DATE NOT NULL,
  idmaquinaria INT NOT NULL,
  idoperario INT NOT NULL,
  PRIMARY KEY (idmaquinaria_operario) ,
  CONSTRAINT maquinaria_operario_maquinaria_foreign
    FOREIGN KEY (idmaquinaria)
    REFERENCES maquinarias (idmaquinarias),
  CONSTRAINT maquinaria_operario_operario_foreign
    FOREIGN KEY (idoperario)
    REFERENCES operario (idoperario))
