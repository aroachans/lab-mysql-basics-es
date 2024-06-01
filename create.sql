USE lab_mysql;
CREATE TABLE Coches (
    VIN VARCHAR(20) not null Primary key,
    Fabricante VARCHAR(20),
    Modelo VARCHAR(20),
    Año INT,
    Color VARCHAR(20)
);

CREATE TABLE Vendedores (
    vendedor_id INT not null Primary key,
    Nombre VARCHAR(20),
    Tienda VARCHAR(5)
);

CREATE TABLE Clientes (
    Client_id int not null AUTO_INCREMENT Primary key,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Tlf INT, -- Asumiendo que el teléfono es un número entero
    Email VARCHAR(30),
    Direccion VARCHAR(20),
    Ciudad VARCHAR(20),
    Provincia VARCHAR(20),
    Pais VARCHAR(200),
    CodigoPostal int
);

CREATE TABLE Facturas (
    Factura_id INT not null AUTO_INCREMENT Primary key,
    Fecha timestamp,
    Coche VARCHAR(20),
    Cliente INT,
    Vendedor INT, -- Cambiado de "int" a "INT"
    foreign key(Coches) references Coches(VIN),
    foreign key(Clientes) references Clientes(Client_id),
    foreign key(Vendedores) references Vendedores(vendedor_id)
);
