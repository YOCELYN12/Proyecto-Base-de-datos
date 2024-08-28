-- use Hoteles;

-- Create Table Hoteles(Cedula_Juridica INT PRIMARY KEY, Numero_habitacion INT, Numero_reservacion INT, Ubicacion VARCHAR(255), Tarifas INT, Nombre VARCHAR(255));

-- CREATE TABLE Administradores(ID INT PRIMARY KEY, Nombre VARCHAR(100), correo_electronico varchar(100), CONSTRAINT cédula_jurídica FOREIGN KEY (cedula_juridica) REFERENCES Hoteles(cedula_juridica));
-- CREATE TABLE Hoteles

-- SELECT * FROM Hoteles

CREATE DATABASE Hotelogix;

USE Hotelogix;
CREATE TABLE Clientes(ID_clientes INT AUTO_INCREMENT PRIMARY KEY, Num_cedula VARCHAR(20), Fecha_reservacion DATE, Dias_reservados INT, Nombre_hotel VARCHAR(30));
SELECT * FROM Clientes;

INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ("3-0270-0071", "2023-12-25", 3, "Wyndham Escazu");

INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ("1-1331-0637", "2023-09-8", 4, "Escazu Resident"),
("1-310-225", "2023-12-20", 3, "Monte Real");

INSERT INTO Clientes(Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ("1-0258-3785", "2023-10-15", 2, "Terrazas del Caribe"),
("1-12750278", "2023-09-8", 1, "Sheraton"),
(" 1-1241-987", "2023-10-22", 2, "Wyndham Tamarindo"),
("1-2043-0162", "2023-02-02", 4, "Jardin de Lourdes");

INSERT INTO Administradores (Nombre, Apellido, Email)
VALUES ('Juan', 'Pérez', 'juan.perez@email.com');
CREATE TABLE Administradores(ID_admin INT AUTO_INCREMENT PRIMARY KEY, Nombre varchar(20), Apellido VARCHAR(20), Email VARCHAR(30));
CREATE TABLE Usuarios (ID_usuario int PRIMARY KEY, Nombre VARCHAR(100), Apellido VARCHAR(100), Correo_electronico VARCHAR(255), ID_cliente INT, ID_Admin INT,FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_clientes), FOREIGN KEY (ID_Admin) REFERENCES Administradores(ID_Admin));
SELECT * FROM Usuarios;

 --INSERT INTO Usuarios( ID_usuario, Nombre, Apellido, Correo_electronico, ID_cliente, ID_Admin) VALUES ()
 CREATE TABLE Reservas (Numero_reservacion INT PRIMARY KEY, Fecha_reservacion DATE NOt NULL, Tiempo_reservacion INT NOT NULL, ID_usuario INT, Foreign Key (ID_usuario) REFERENCES Usuarios(ID_usuario));

CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT, FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion));

CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, cedula_juridica varchar(100), Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Numero_reservacion) REFERENCES Reservas(Numero_reservacion));



INSERT INTO Usuarios ( ID_usuario,Nombre, Apellido,Correo_electronico, ID_cliente, ID_Admin) VALUES ( 1,'Jose','Vargas', 'jjvargas@gmail.com',1,1);

SELECT * FROM  Usuarios;
SELECT * FROM Reservas;
SELECT * FROM habitaciones

--Revisar
INSERT INTO Habitaciones (Numero_habitacion,Num_cedula,Numero_reservacion,Disponibilidad_habitaciones,Tipo_habitacion) 
VALUES ('18',1310225,22,'2','Habitacion doble'), 
('22',102583785,02,'5','Habitacion doble deluxe'),
('11',302700071,08,'10','Habitacion doble deluxe'),
('10',113310637,12,'12','Habitasion sencilla'),
('15',112750278,45,'50','Habitacion deluxe'),
('20',11241987,05,'3','Habitacion deluxe'),
('1',120430162,10,'0','Habitacion sencilla')

SELECT * FROM hoteles

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion, Numero_habitacion) 
VALUES (101253967, '100m Sur y 300m Este de Parque Central de la Fortuna,21007 Fortuna, Costa Rica', 30 000, 'Hotel Monte Real',)