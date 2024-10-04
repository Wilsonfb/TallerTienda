USE tienda;

INSERT INTO Cargo(Nombre) VALUES ('Gerente'), ('Empleado');

INSERT INTO Categoria(Nombre) VALUES ('Alimentos'), ('Juguetes');

INSERT INTO Usuario (id, Nombres, Apellidos, Telefono, Direccion, idCargo) VALUES
(1, 'Juan', 'Pérez', 10203040, 'Calle 123 #45-67', 1),
(2, 'Ana', 'Gómez', 20304050, 'Carrera 45 #67-89', 2),
(3, 'Luis', 'Martínez', 30405060, 'Avenida 10 #11-12', 2),
(4, 'Marta', 'López', 40506070, 'Calle 20 #30-40', 2),
(5, 'Carlos', 'Díaz', 50607080, 'Carrera 80 #90-100', 2);

INSERT INTO Alimento (idAlimento, Nombre, Cantidad, Precio, Descripcion, Tipo, idCategoria) VALUES
(1, 'Purina Pro Plan', 50, 20.00, 'Alimento seco para perros de alta calidad', 'Perro', 1),
(2, 'Royal Canin', 30, 25.00, 'Alimento especializado para gatos', 'Gato', 1),
(3, 'Hill’s Science Diet', 40, 30.00, 'Alimento nutritivo para perros y gatos', 'Ambos', 1),
(4, 'Blue Buffalo', 25, 22.00, 'Alimento natural para mascotas', 'Ambos', 1),
(5, 'Iams', 20, 18.00, 'Comida balanceada para perros', 'Perro', 1);


INSERT INTO Juguete (idJuguete, Nombre, Precio, Descripcion, Tipo, idCategoria) VALUES
(1, 'Pelota de goma', 5.00, 'Pelota resistente ideal para perros', 'Perro', 2),
(2, 'Ratón de juguete', 3.50, 'Ratón de felpa para gatos', 'Gato', 2),
(3, 'Cuerda para morder', 7.00, 'Cuerda durable para jugar y morder', 'Perro', 2),
(4, 'Disco volador', 8.00, 'Disco ligero para juegos al aire libre', 'Perro', 2),
(5, 'Rascador para gatos', 15.00, 'Rascador de cartón para mantener las uñas', 'Gato', 2);

INSERT INTO Inventario (idInventario, Nombre, Cantidad, idUsuario, idCategoria) VALUES
(1, 'Pelota de goma', 5, '3', 2),
(2, 'Royal Canin', 1, '1', 1),
(3, 'Cuerda para morder', 7, '5', 2),
(4, 'Disco volador', 3, '2', 2),
(5, 'Rascador para gatos', 1, '4', 1);

INSERT INTO Producto (idProducto, Informacion, Producto, idInventario, idUsuario, idCategoria) VALUES
(1, 'Alimento seco para perros', 'Croquetas de pollo Premium', 3, 2, 2),
(2, 'Arena para gatos', 'Arena aglomerante de maíz', 1, 4, 2),
(3, 'Juguete interactivo', 'Ratón de juguete con sonido', 4, 1, 2),
(4, 'Suplemento nutricional', 'Vitaminas para perros', 5, 3, 1),
(5, 'Cama para mascotas', 'Cama ortopédica para gatos', 2, 5, 2);

INSERT INTO Factura (idFactura, Fecha, Detalle, idProducto) VALUES
(1, '2024-10-01', 'Compra de alimentos para mascotas', 3),
(2, '2024-10-02', 'Compra de arena para gatos', 1),
(3, '2024-10-03', 'Compra de juguetes para perros', 5),
(4, '2024-10-04', 'Compra de suplementos nutricionales', 2),
(5, '2024-10-05', 'Compra de cama para mascotas', 4);