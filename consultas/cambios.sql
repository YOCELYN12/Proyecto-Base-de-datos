
DROP DATABASE Hotelogix;

CREATE DATABASE Hotelogix;

USE Hotelogix;


-- Creacion de todas las tablas, con sus llaves foraneas

CREATE TABLE Clientes(ID_clientes INT AUTO_INCREMENT PRIMARY KEY, Num_cedula VARCHAR(20), Fecha_reservacion DATE, Dias_reservados INT, Nombre_hotel VARCHAR(30));
CREATE TABLE Administradores(ID_admin INT AUTO_INCREMENT PRIMARY KEY, Nombre varchar(20), Apellido VARCHAR(20), Email VARCHAR(30));
CREATE TABLE Usuarios (ID_usuario int PRIMARY KEY, Nombre VARCHAR(100), Apellido VARCHAR(100), Correo_electronico VARCHAR(255), ID_cliente INT, ID_Admin INT,FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_clientes), FOREIGN KEY (ID_Admin) REFERENCES Administradores(ID_Admin));
CREATE TABLE Reservas (Numero_reservacion INT PRIMARY KEY, Fecha_reservacion DATE NOt NULL, Tiempo_reservacion INT NOT NULL, ID_usuario INT, Foreign Key (ID_usuario) REFERENCES Usuarios(ID_usuario));
CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT, FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion));
CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, cedula_juridica varchar(100), Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Numero_reservacion) REFERENCES Reservas(Numero_reservacion));


-- Pruebas de que las tablas existen
SELECT * FROM Clientes;
 SELECT * FROM Administradores;
SELECT * FROM Usuarios;
SELECT * FROM Reservas;
SELECT * FROM habitaciones;
SELECT * FROM hoteles;


-- INGRESO DE INFORMACION
-- DROP TABLE Clientes;
-- DROP TABLE Usuarios;
-- DROP TABLE Reservas;
-- DROP TABLE Administradores;
INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ("3-0270-0071", "2023-12-25", 3, "Wyndham Escazu");
INSERT INTO Clientes(Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ("1-0258-3785", "2023-10-15", 2, "Terrazas del Caribe"),
("1-12750278", "2023-09-8", 1, "Sheraton"),
(" 1-1241-987", "2023-10-22", 2, "Wyndham Tamarindo"),
("1-2043-0162", "2023-02-02", 4, "Jardin de Lourdes");
-- Eliminar un cliente con un store procedures(Wyndham Escazu)

-- Ingreso Informacion tabla Administradores
INSERT INTO Administradores( Nombre, Apellido, Email) VALUES ("Javier", "Solis", "jsolis@gmail.com");
INSERT INTO Administradores( Nombre, Apellido, Email) VALUES ("Jessica", "Madriz", "jmadriz@gmail.com");


--Informacion habitaciones
INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("22", "200-8970-3967",02, "28", "Habitacion doble deluxe"),
("11", "101-2569-9874", 08,"10" ,"Habitacion doble deluxe"),
("10", "251-338-5987", 12,"10" ,"Habitacion sencilla"),
("15", "222-338-5978", 45, "50", "Habitacion Deluxe"),
("20","200-330-6678", 5, "3","Habitacion Deluxe"),
("1","111-4240-654", 2, "0", "Habitacion sencilla");

--Informacion Hoteles

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion) 
VALUES ('200-8970-3967','Entrada Hotel Azania 450 metros directo manteniendo la derecha ',60000, 'Terrazas del Caribe Hotel',02),
('101-2569-9874', 'Cartago Cartago Costa Rica', 15000,'Dreams Lodge Orosi',08),
('251-338-5987', 'Calle Los Cedros, 10202 San Rafael Costa Rica',75000, 'Escazu Resident',12),
('222-338-5978', 'Route 27 350 mts West Multiplaza  10203 San Jose Costa Rica',95000,'Sheraton San Jose Hoten,Costa Rica',45),
('200-330-6678','200 metro al este y 800 metros al norte del Banco Nacionaaal de Tamarindo 00011 Tamarindo Costa Rica',81000, 'Wyndham Tamarindo',05),
('111-4240-654', '2800 km al Sur del Restaurante Changai Piedades de Santa Ana',50000, 'Jardin de Lourdes',02);

