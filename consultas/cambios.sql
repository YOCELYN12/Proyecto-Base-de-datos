-- use Hoteles;

-- Create Table Hoteles(Cedula_Juridica INT PRIMARY KEY, Numero_habitacion INT, Numero_reservacion INT, Ubicacion VARCHAR(255), Tarifas INT, Nombre VARCHAR(255));

-- CREATE TABLE Administradores(ID INT PRIMARY KEY, Nombre VARCHAR(100), correo_electronico varchar(100), CONSTRAINT cédula_jurídica FOREIGN KEY (cedula_juridica) REFERENCES Hoteles(cedula_juridica));
-- CREATE TABLE Hoteles

-- SELECT * FROM Hoteles

CREATE DATABASE Hotelogix;

USE Hotelogix;
CREATE TABLE Clientes(ID_clientes INT AUTO_INCREMENT PRIMARY KEY, Num_cedula VARCHAR(20), Fecha_reservacion DATE, Dias_reservados INT, Nombre_hotel VARCHAR(30));

CREATE TABLE Administradores(ID_admin INT AUTO_INCREMENT PRIMARY KEY, Nombre varchar(20), Apellido VARCHAR(20), Email VARCHAR(30));
CREATE TABLE Usuarios (ID_usuario int PRIMARY KEY, Nombre VARCHAR(100), Apellido VARCHAR(100), Correo_electronico VARCHAR(255), ID_cliente INT, ID_Admin INT,FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_clientes), FOREIGN KEY (ID_Admin) REFERENCES Administradores(ID_Admin));

 CREATE TABLE Reservas (Numero_reservacion INT PRIMARY KEY, Fecha_reservacion DATE NOt NULL, Tiempo_reservacion INT NOT NULL, ID_usuario INT, Foreign Key (ID_usuario) REFERENCES Usuarios(ID_usuario));

CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT, FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion));

CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, cedula_juridica varchar(100), Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Numero_reservacion) REFERENCES Reservas(Numero_reservacion));



INSERT INTO Usuarios (Num_cedula, Nombre, Correo_electronico, Apellido) VALUES (1310225, 'Jose', 'jjvargas@gmail.com', 'Vargas'), (102583785, 'Maria', 'marias@gmail.com', 'Sandoval') ;
INSERT INTO Usuarios (Num_cedula, Nombre, Correo_electronico, Apellido) VALUES (302700071, 'Luis', 'Imhernandez@gmail.com', 'Hernandez'), (113310637, 'Marta', 'mquiros@gmail.com', 'Quiros'), (112750278,'Ester', 'ester@gmail.com','Ramirez'), (11241987, 'Marcos', 'mm@gmail.com','Barrientos'), (120430162, 'Alexander', 'amena@gmail.com', 'Mena')


SELECT * FROM  Usuarios;
SELECT * FROM Reservas;
SELECT * FROM habitaciones

INSERT INTO Habitaciones (Numero_habitacion,Num_cedula,Numero_reservacion,Disponibilidad_habitaciones,Tipo_habitacion) 
VALUES ('18',1310225,22,'2','Habitacion doble'), 
('22',102583785,02,'5','Habitacion doble deluxe'),
('11',302700071,08,'10','Habitacion doble deluxe'),
('10',113310637,12,'12','Habitasion sencilla'),
('15',112750278,45,'50','Habitacion deluxe'),
('20',11241987,05,'3','Habitacion deluxe'),
('1',120430162,10,'0','Habitacion sencilla')

SELECT * FROM hoteles

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion, Numero_habitacion) VALUES (101253967, '100m Sur y 300m Este de Parque Central de la Fortuna,21007 Fortuna, Costa Rica', 30 000, 'Hotel Monte Real',)