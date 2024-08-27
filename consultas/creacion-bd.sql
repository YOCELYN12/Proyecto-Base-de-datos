
-- use Hoteles;

-- CREATE DATABASE Hoteles;
-- CREATE TABLE Administradores(Nombre VARCHAR(100), ID INT PRIMARY KEY, correoelectronico varchar(100), cédulajurídica INT  );
-- SELECT * FROM Administradores;
-- alter table Administradores change column correoelectronico correo_electronico varchar(100) not null;
-- alter table Administradores change column cédulajurídica cédula_jurídica varchar(100) not null;

-- CREATE TABLE Usuarios(Nombre varchar(100), Cédula INT PRIMARY KEY NOT NULL, Correo_electrónico varchar(100), Número_reservación INT NOT NULL);
-- SELECT * FROM Usuarios



-- Drop DATABASE Hoteles;

-- SELECT * FROM Hoteles;




CREATE TABLE Usuarios(Nombre varchar(100), Cédula INT PRIMARY KEY NOT NULL, Correo_electrónico varchar(100), Número_reservación INT NOT NULL);
SELECT * FROM Usuarios

CREATE TABLE Reservas(Número_reservación INT PRIMARY KEY NOT NULL, Fecha_)
