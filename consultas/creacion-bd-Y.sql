-- use Hoteles;

-- Create Table Hoteles(Cedula_Juridica INT PRIMARY KEY, Numero_habitacion INT, Numero_reservacion INT, Ubicacion VARCHAR(255), Tarifas INT, Nombre VARCHAR(255));

-- CREATE TABLE Administradores(ID INT PRIMARY KEY, Nombre VARCHAR(100), correo_electronico varchar(100), CONSTRAINT cédula_jurídica FOREIGN KEY (cedula_juridica) REFERENCES Hoteles(cedula_juridica));
-- CREATE TABLE Hoteles

-- SELECT * FROM Hoteles


CREATE DATABASE Hotelogix;

USE Hotelogix;

CREATE TABLE Usuarios (Num_cedula int PRIMARY key, Nombre VARCHAR(100), Correo_electronico VARCHAR(255));
SELECT * FROM Usuarios

ALTER TABLE Usuarios ADD COLUMN Apellido VARCHAR(100) NOT NULL;

 CREATE TABLE Reservas (Numero_reservacion INT PRIMARY KEY, Num_cedula INT, Fecha_reservacion DATE NOT NULL, Tiempo_reservacion TIME NOT NULL, CONSTRAINT Num_cedula Foreign Key (Num_cedula) REFERENCES Usuarios(Num_cedula))

SELECT * FROM Reservas;
ALTER table Reservas MODIFY COLUMN Tiempo_reservacion Int

CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, Num_cedula Int, Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Num_cedula) REFERENCES Usuarios(Num_cedula), CONSTRAINT Numero_reservacion Foreign Key (Numero_reservacion) REFERENCES Reservas(Numero_reservacion))

SELECT * FROM Habitaciones

CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT,Numero_habitacion VARCHAR(100),  FOREIGN KEY (Numero_habitacion) REFERENCES Habitaciones(Numero_habitacion),FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion))

-- Drop Table Hoteles;

SELECT * FROM Hoteles;

CREATE TABLE Administradores (ID INT PRIMARY KEY, Nombre VARCHAR(255), Email VARCHAR(255),Cedula_juridica VARCHAR(100), FOREIGN KEY (Cedula_juridica) REFERENCES Hoteles(Cedula_juridica))

SELECT * FROM Administradores

ALTER TABLE Administradores add COLUMN Apellido VARCHAR(100) NOT NULL;
USE Hotelogix;
SELECT * FROM Usuarios;

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

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion, Numero_habitacion) 
VALUES ('101253967','100m Sur y 300m Este de Parque Central de la Fortuna 21007 Fortuna Costa Rica', 30 000, 'Hotel Monte Real',22,'25'),
('20089703967','Entrada Hotel Azania 450 metros directo manteniendo la derecha ',60000, 'Terrazas del Caribe Hotel',02,'40'),
('10125699874', 'Cartago Cartago Costa Rica', 15000,'Dreams Lodge Orosi',08, '15'),
('2513385987', 'Calle Los Cedros, 10202 San Rafael Costa Rica',75000, 'Escazu Resident',12,'17'),
('2223385978', 'Route 27 350 mts West Multiplaza  10203 San Jose Costa Rica',95000,'Sheraton San Jose Hoten,Costa Rica',45,'60'),
('2003306678','200 metro al este y 800 metros al norte del Banco Nacionaaal de Tamarindo 00011 Tamarindo Costa Rica',81000, 'Wyndham Tamarindo',05,'70'),
('1114240654', '2800 km al Sur del Restaurante Changai Piedades de Santa Ana',50000, 'Jardin de Lourdes',02,'06')