-- use Hoteles;

-- Create Table Hoteles(Cedula_Juridica INT PRIMARY KEY, Numero_habitacion INT, Numero_reservacion INT, Ubicacion VARCHAR(255), Tarifas INT, Nombre VARCHAR(255));

-- SELECT * FROM Hoteles

-- drop 




CREATE DATABASE Hotelogix;

USE Hoteles;

CREATE TABLE Usuarios (Num_cedula int PRIMARY key, Nombre VARCHAR(100), Correo_electronico VARCHAR(255));
SELECT * FROM Usuarios



-- CREATE TABLE Administradores(ID INT PRIMARY KEY, Nombre VARCHAR(100), correo_electronico varchar(100), CONSTRAINT cédula_jurídica FOREIGN KEY (cedula_juridica) REFERENCES Hoteles(cedula_juridica));
-- CREATE TABLE Hoteles