
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

INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) 
VALUES ("3-0270-0071", "2023-12-25", 3, "Wyndham Escazu");
INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel)
 VALUES ("1-1331-0637", "2023-09-8", 4, "Escazu Resident"),
("1-310-225", "2023-12-20", 3, "Monte Real");

INSERT INTO Clientes(Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel)
 VALUES ("1-0258-3785", "2023-10-15", 2, "Terrazas del Caribe"),
("1-12750278", "2023-09-8", 1, "Sheraton"),
(" 1-1241-987", "2023-10-22", 2, "Wyndham Tamarindo"),
("1-2043-0162", "2023-02-02", 4, "Jardin de Lourdes");


<<<<<<<<< Temporary merge branch 1

INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel)
 VALUES ("1-1331-0637", "2023-09-8", 4, "Escazu Resident"),
("1-310-225", "2023-12-20", 3, "Monte Real");
=========
>>>>>>>>> Temporary merge branch 2


-- Eliminar un cliente con un store procedures(Wyndham Escazu)
-- INSERT INTO Usuarios (ID_usuario,Nombre, Apellido,Correo_electronico, ID_cliente, ID_Admin)
--  VALUES ( 1,'Jose','Vargas', 'jjvargas@gmail.com',1,1);

INSERT INTO Usuarios(ID_usuario,Nombre, Apellido,Correo_electronico, ID_cliente, ID_Admin)
 VALUES (2,"Maria", "Sandoval","marias@gmail.com",4,1),
 (3,"Luis", "Hernandez", "Imhernandez@gmail.com",1,1),
 (4,"Marta","Quiros", "mquiros@gmail.com",2,1),
 (5,"Ester", "Ramirez", "ester@gmail.com",5,1),
 (6, "Marcos", "Barrientos", "mm@gmail.com",6,1),
 (7,"Alexander", "Mena", "amena@gmail.com",7,1),
 (8,"Javier", "Solis", "jsolis@gmail.com",6,1);

INSERT INTO Administradores(Nombre, Apellido, Email) 
VALUES ("Javier", "Solis", "jsolis@gmail.com"); --Eliminar 1 administrador



