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

CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, Num_cedula Int, Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Num_cedula) REFERENCES Usuarios(Num_cedula), CONSTRAINT Numero_reservacion Foreign Key (Numero_reservacion) REFERENCES Reservas(Numero_reservacion))

SELECT * FROM Habitaciones

CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT,Numero_habitacion VARCHAR(100),  FOREIGN KEY (Numero_habitacion) REFERENCES Habitaciones(Numero_habitacion),FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion))

-- Drop Table Hoteles;

SELECT * FROM Hoteles;

CREATE TABLE Administradores (ID INT PRIMARY KEY, Nombre VARCHAR(255), Email VARCHAR(255),Cedula_juridica VARCHAR(100), FOREIGN KEY (Cedula_juridica) REFERENCES Hoteles(Cedula_juridica))

SELECT *FROM Administradores

ALTER TABLE Administradores add COLUMN Apellido VARCHAR(100) NOT NULL;
USE Hotelogix;
SELECT * FROM Usuarios;

INSERT INTO Usuarios (Num_cedula, Nombre, Correo_electronico, Apellido) VALUES (1310225, 'Jose', 'jjvargas@gmail.com', 'Vargas'), (102583785, 'Maria', 'marias@gmail.com', 'Sandoval') ;
INSERT INTO Usuarios (Num_cedula, Nombre, Correo_electronico, Apellido) VALUES (102583785, 'Maria', 'marias@gmail.com', 'Sandoval'), (302700071, 'Luis', 'Imhernandez@gmail.com', 'Hernandez'), (113310637, 'Marta', 'mquiros@gmail.com', 'Quiros'), (112750278,'Ester', 'ester@gmail.com','Ramirez'), (11241987, 'Marcos', 'mm@gmail.com','Barrientos'), (120430162, 'Alexander', 'amena@gmail.com', 'Mena')
