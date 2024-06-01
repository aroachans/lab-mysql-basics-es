-- Inserción en la tabla Coche
INSERT INTO Coche (VIN, Fabricante, Modelo, Año, Color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gris');
----- aqui vemos que hay una entrada duplicada, el modelo es el culpable


-- Inserción en la tabla Cliente
INSERT INTO Cliente (Client_id, Nombre, Apellido, Tlf, Email, Direccion, Ciudad, Provincia, Pais, CodigoPostal) VALUES
(10001, 'Pablo', 'Picasso', '+34636176382', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', 28045),
(20001, 'Abraham', 'Lincoln', '+13059077086', '-', '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', 33130),
(30001, 'Napoleón', 'Bonaparte', '+33179754000', '-', '40 Rue du Colisée', 'París', 'Île-de-France', 'Francia', 75008);

-- Inserción en la tabla Vendedor
INSERT INTO Vendedor (Vendedor_id, Nombre, Tienda) VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlín'),
(00004, 'Gail Forcewind', 'París'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Ciudad de México'),
(00007, 'Walter Melon', 'Ámsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

-- Inserción en la tabla Factura
INSERT INTO Factura (Factura_id, Fecha, Coche, Cliente, Vendedor) VALUES
(0, '2018-08-22', '3K096I98581DHSNUP', 10001, 3),
(1, '2018-12-31', 'HKNDGS7CU31E9Z7JW', 10001, 5),
(2, '2019-01-22', 'ZM8G7BEUQZ97IH46V', 20001, 7);
