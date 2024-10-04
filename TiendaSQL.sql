DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;

CREATE TABLE Cargo (
	idCargo INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR (45) NOT NULL
);

CREATE TABLE Categoria (
	idCategoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR (45) NOT NULL
);

CREATE TABLE Usuario (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombres VARCHAR (45) NOT NULL,
	Apellidos VARCHAR(45) NOT NULL,
    Telefono INT NOT NULL, 
    Direccion VARCHAR (45) NOT NULL,
    idCargo INT NOT NULL,
    FOREIGN KEY (idCargo) REFERENCES Cargo(idCargo)
);

CREATE TABLE Alimento (
	idAlimento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR (45) NOT NULL,
	Cantidad INT NOT NULL, 
    Precio INT NOT NULL, 
    Descripcion VARCHAR (45) NOT NULL,
    Tipo VARCHAR (45) NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE Juguete (
	idJuguete INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR (45) NOT NULL,
    Precio INT NOT NULL, 
    Descripcion VARCHAR (45) NOT NULL,
    Tipo VARCHAR (45) NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE Inventario (
	idInventario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Nombre VARCHAR (45) NOT NULL,
    Cantidad INT NOT NULL, 
    idUsuario INT NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(id),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE Producto (
	idProducto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Informacion VARCHAR (45) NOT NULL,
    Producto VARCHAR (45) NOT NULL,
    idInventario INT NOT NULL, 
    idUsuario INT NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idInventario) REFERENCES Inventario(idInventario),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(id),
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria)
);

CREATE TABLE Factura (
	idFactura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	Fecha TIMESTAMP NOT NULL,
    Detalle VARCHAR (45) NOT NULL,
    idProducto INT NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES Producto(idProducto)
);