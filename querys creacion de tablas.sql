CREATE TABLE usuario(
  idusuario INT NOT NULL AUTO_INCREMENT,
  NombreCompleto VARCHAR(100) NOT NULL,
  UserName VARCHAR(30) NOT NULL,
  Contraseña VARCHAR(250) NOT NULL,
  Telefono VARCHAR(25) NOT NULL,
  Imagen VARCHAR(45) NOT NULL,
  idUserRol INT NOT NULL,
  PRIMARY KEY (`idusuario`),
    FOREIGN KEY fk_rol_id(idUserRol)
    REFERENCES rol(idRol)
    );

CREATE TABLE categoria(
  idcategoria INT NOT NULL AUTO_INCREMENT,
  NombreCategoria VARCHAR(100) NOT NULL,
  DescripcionCategoria VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idcategoria`)
    );
    
    
    CREATE TABLE producto(
  idProducto INT NOT NULL AUTO_INCREMENT,
  NombreProducto VARCHAR(35) NOT NULL,
  DescripcionProducto VARCHAR(100) NOT NULL,
  imagen1 VARCHAR(250) NOT NULL,
  imagen2 VARCHAR(250),
  imagen3 VARCHAR(250),
  video VARCHAR(250),
  idProductoCategoria INT NOT NULL,
  PRIMARY KEY (`idProducto`),
    FOREIGN KEY fk_categoria_id(idProductoCategoria)
    REFERENCES categoria(idcategoria)
    );

    CREATE TABLE compra(
  idCompra INT NOT NULL AUTO_INCREMENT,
  fecha DATE,
  Total double(4,2),
  idVendedor INT,
  idComprador INT NOT NULL,
  PRIMARY KEY (`idCompra`),
    FOREIGN KEY fk_comprador(idComprador)
    REFERENCES usuario(idusuario),
    FOREIGN KEY fk_vendedor(idVendedor)
    REFERENCES usuario(idusuario)
    );


   CREATE TABLE carrito(
  idCarrito INT NOT NULL AUTO_INCREMENT,
  idArticulo INT not null,
  idVenta INT,
  Cantidad int not null,
  PRIMARY KEY (`idCarrito`),
    FOREIGN KEY fk_articulo(idArticulo)
    REFERENCES producto(idProducto),
    FOREIGN KEY fk_compra(idVenta)
    REFERENCES compra(idCompra)
    );
    
    CREATE TABLE mensaje(
  idmensaje INT NOT NULL AUTO_INCREMENT,
  Contenido VARCHAR(300) NOT NULL,
  idCompraMensaje INT NOT NULL,
  idUserMensaje INT NOT NULL,
  PRIMARY KEY (`idmensaje`),
    FOREIGN KEY fk_compra_id(idCompraMensaje)
    REFERENCES compra(idCompra),
    FOREIGN KEY fk_user_id(idUserMensaje)
    REFERENCES usuario(idusuario)
    );



