-- Eliminacion de la base de datos
DROP DATABASE Hotelogix; 






-- Creacion  de la base de datos. 
CREATE DATABASE Hotelogix;



-- Se le indica que base de datos se va a utilizar
USE Hotelogix;



-- Creacion de todas las tablas, con sus llaves foraneas
CREATE TABLE Clientes(ID_clientes INT AUTO_INCREMENT PRIMARY KEY, Num_cedula VARCHAR(20), Fecha_reservacion DATE, Dias_reservados INT);
CREATE TABLE Administradores(ID_admin INT AUTO_INCREMENT PRIMARY KEY, Nombre varchar(100), Apellido VARCHAR(100), Email VARCHAR(100));
CREATE TABLE Usuarios (ID_usuario int AUTO_INCREMENT PRIMARY KEY, Nombre VARCHAR(100), Apellido VARCHAR(100), Correo_electronico VARCHAR(255), ID_cliente INT, ID_Admin INT,FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_clientes), FOREIGN KEY (ID_Admin) REFERENCES Administradores(ID_Admin));
CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255));
CREATE TABLE Habitaciones (Numero_habitacion  INT AUTO_INCREMENT PRIMARY KEY, Cedula_juridica varchar(100), Disponibilidad_habitaciones BOOLEAN, Tipo_habitacion VARCHAR(255), FOREIGN KEY (cedula_juridica) REFERENCES Hoteles(cedula_juridica));
CREATE TABLE Reservas (Numero_reservacion INT AUTO_INCREMENT PRIMARY KEY, Fecha_reservacion DATE NOT NULL, Tiempo_reservacion INT NOT NULL, Numero_habitacion INT, ID_usuario INT, FOREIGN KEY (Numero_habitacion) REFERENCES Habitaciones(Numero_habitacion), Foreign Key (ID_usuario) REFERENCES Usuarios(ID_usuario));



-- DROP Table habitaciones;
-- DROP TABLE Reservas;
-- DROP TABLE hoteles;
-- DROP TABLE clientes;
-- Drop TABLE usuarios;
-- DROP TABLE administradores;


-- Consultas
SELECT * FROM Clientes;
SELECT * FROM Administradores;
SELECT * FROM Usuarios;
SELECT * FROM Reservas;
SELECT * FROM habitaciones;
SELECT * FROM hoteles;




-- INGRESO DE DATOS A LAS TABLAS 

INSERT INTO Clientes(Num_cedula, Fecha_reservacion, Dias_reservados) 
VALUES ("3-0270-0071", "2023-12-25", 3),
("1-0258-3785", "2023-10-15", 2),
("1-12750278", "2023-09-8", 1),
("1-1241-987", "2023-10-22", 2),
("1-2043-0162", "2023-02-02", 4),
("1-1331-0637", "2023-09-8", 4),
("1-310-225", "2023-12-20", 3),
("1-1331-0637", "2023-09-8", 4),
("1-310-225", "2023-12-20", 3);




INSERT INTO Administradores(Nombre, Apellido, Email) 
VALUES ("Javier", "Solis", "jsolis@gmail.com"),
("Jessica", "Madriz", "jmadriz@gmail.com");




INSERT INTO Usuarios(Nombre, Apellido,Correo_electronico, ID_cliente, ID_Admin)
 VALUES ("Maria", "Sandoval","marias@gmail.com",4,1),
 ("Luis", "Hernandez", "Imhernandez@gmail.com",1,1),
 ("Marta","Quiros", "mquiros@gmail.com",2,1),
 ("Ester", "Ramirez", "ester@gmail.com",5,1),
 ("Marcos", "Barrientos", "mm@gmail.com",6,1),
 ("Alexander", "Mena", "amena@gmail.com",7,1),
 ("Javier", "Solis", "jsolis@gmail.com",6,1);

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel) 
VALUES ('200-8970-3967','Entrada Hotel Azania 450 metros directo manteniendo la derecha ',60000, 'Terrazas del Caribe Hotel'),
('101-2569-9874', 'Cartago Cartago Costa Rica', 15000,'Dreams Lodge Orosi'),
('251-338-5987', 'Calle Los Cedros, 10202 San Rafael Costa Rica',75000, 'Escazu Resident'),
('222-338-5978', 'Route 27 350 mts West Multiplaza  10203 San Jose Costa Rica',95000,'Sheraton San Jose Hoten,Costa Rica'),
('200-330-6678','200 metro al este y 800 metros al norte del Banco Nacionaaal de Tamarindo 00011 Tamarindo Costa Rica',81000, 'Wyndham Tamarindo'),
('111-4240-654', '2800 km al Sur del Restaurante Changai Piedades de Santa Ana',50000, 'Jardin de Lourdes');

INSERT INTO Habitaciones (Disponibilidad_habitaciones,Tipo_habitacion,cedula_juridica)
VALUES ("0", "Habitacion doble deluxe","200-8970-3967"),
("1" ,"Habitacion doble deluxe","101-2569-9874"),
("0" ,"Habitacion sencilla","251-338-5987"),
("0", "Habitacion Deluxe","222-338-5978"),
("1","Habitacion Deluxe","200-330-6678"),
("0", "Habitacion sencilla","111-4240-654");


 --Ejecutar el store procedures antes de insertar los datos de la tabla hoteles

















-- drop Table habitaciones

-- INSERT INTO habitaciones (Numero_habitacion,cedula_juridica,Numero_reservacion,Disponibilidad_habitacioneS,Tipo_habitacion) 
-- VALUES (40,111900999,32,0,"BLABLABLA")

-- ERROR Actualizacion de datos
-- Se actualizan los datos en la tabla habitaciones.
-- UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 10;
-- UPDATE Habitaciones SET Disponibilidad_habitaciones = 0 WHERE Disponibilidad_habitaciones = 50;
-- UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 3;
-- UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 28;


-- -- Actualizacion de datos pero de la tabla reservas   PENDIENTE
-- UPDATE reservas SET Numero_habitacion = 1 WHERE Numero_reservacion = 2;
-- UPDATE reservas SET Numero_habitacion = 10 WHERE Numero_reservacion = 12;
-- UPDATE reservas SET Numero_habitacion = 11 WHERE Numero_reservacion = 8;
-- UPDATE reservas SET Numero_habitacion = 15 WHERE Numero_reservacion = 45;
-- UPDATE reservas SET Numero_habitacion = 20 WHERE Numero_reservacion = 5;
-- UPDATE reservas SET Numero_habitacion = 22 WHERE Numero_reservacion = 2;
-- UPDATE reservas SET Numero_habitacion = 11 WHERE Numero_reservacion = 8;
-- UPDATE reservas SET Numero_habitacion =  WHERE Numero_reservacion = 10;





