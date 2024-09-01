-- Eliminacion de la base de datos
DROP DATABASE Hotelogix; 


-- Creacion  de la base de datos. 
CREATE DATABASE Hotelogix;

-- Se le indica que base de datos se va a utilizar
USE Hotelogix;

-- Creacion de todas las tablas, con sus llaves foraneas

CREATE TABLE Clientes(ID_clientes INT AUTO_INCREMENT PRIMARY KEY, Num_cedula VARCHAR(20), Fecha_reservacion DATE, Dias_reservados INT, Nombre_hotel VARCHAR(30));
CREATE TABLE Administradores(ID_admin INT AUTO_INCREMENT PRIMARY KEY, Nombre varchar(20), Apellido VARCHAR(20), Email VARCHAR(30));
CREATE TABLE Usuarios (ID_usuario int PRIMARY KEY, Nombre VARCHAR(100), Apellido VARCHAR(100), Correo_electronico VARCHAR(255), ID_cliente INT, ID_Admin INT,FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_clientes), FOREIGN KEY (ID_Admin) REFERENCES Administradores(ID_Admin));
CREATE TABLE Reservas (Numero_reservacion INT PRIMARY KEY, Fecha_reservacion DATE NOt NULL, Tiempo_reservacion INT NOT NULL, ID_usuario INT, Foreign Key (ID_usuario) REFERENCES Usuarios(ID_usuario));
CREATE TABLE Hoteles (Cedula_juridica VARCHAR(100) PRIMARY KEY, Ubicacion VARCHAR(255), Tarifas INT, Nombre_hotel VARCHAR(255), Numero_reservacion INT, FOREIGN KEY (Numero_reservacion) REFERENCES Reservas(Numero_reservacion));
CREATE TABLE Habitaciones (Numero_habitacion VARCHAR(100) PRIMARY KEY, cedula_juridica varchar(100), Numero_reservacion Int, Disponibilidad_habitaciones VARCHAR(100), Tipo_habitacion VARCHAR(255), FOREIGN KEY(Numero_reservacion) REFERENCES Reservas(Numero_reservacion));


-- Consultas
SELECT * FROM Clientes;
SELECT * FROM Administradores;
SELECT * FROM Usuarios;
SELECT * FROM Reservas;
SELECT * FROM habitaciones;
SELECT * FROM hoteles;


INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion) 
VALUES ('200-8970-3967','Entrada Hotel Azania 450 metros directo manteniendo la derecha ',60000, 'Terrazas del Caribe Hotel',02)


INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion) 
VALUES ('251-338-5987', 'Calle Los Cedros, 10202 San Rafael Costa Rica',75000, 'Escazu Resident',12);

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion) 
VALUES ('222-338-5978', 'Route 27 350 mts West Multiplaza  10203 San Jose Costa Rica',95000,'Sheraton San Jose Hoten,Costa Rica',45);

INSERT INTO Hoteles (Cedula_juridica, Ubicacion, Tarifas, Nombre_hotel, Numero_reservacion) 
VALUES ('200-330-6678','200 metro al este y 800 metros al norte del Banco Nacionaaal de Tamarindo 00011 Tamarindo Costa Rica',81000, 'Wyndham Tamarindo',05);

,
('200-330-6678','200 metro al este y 800 metros al norte del Banco Nacionaaal de Tamarindo 00011 Tamarindo Costa Rica',81000, 'Wyndham Tamarindo',05),
('111-4240-654', '2800 km al Sur del Restaurante Changai Piedades de Santa Ana',50000, 'Jardin de Lourdes',02);



-- INGRESO DE DATOS A LAS TABLAS 

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

INSERT INTO Clientes( Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel)
 VALUES ("1-1331-0637", "2023-09-8", 4, "Escazu Resident"),
("1-310-225", "2023-12-20", 3, "Monte Real");

INSERT INTO Administradores(Nombre, Apellido, Email) 
VALUES ("Javier", "Solis", "jsolis@gmail.com"); 
INSERT INTO Administradores( Nombre, Apellido, Email) VALUES ("Jessica", "Madriz", "jmadriz@gmail.com");

INSERT INTO Administradores(Nombre, Apellido, Email) 
VALUES ("Javier", "Solis", "jsolis@gmail.com"); 


INSERT INTO Usuarios(ID_usuario,Nombre, Apellido,Correo_electronico, ID_cliente, ID_Admin)
 VALUES (3,"Luis", "Hernandez", "Imhernandez@gmail.com",1,1),
  (5,"Ester", "Ramirez", "ester@gmail.com",5,1),
 (6, "Marcos", "Barrientos", "mm@gmail.com",6,1),
 (7,"Alexander", "Mena", "amena@gmail.com",7,1),
 (8,"Javier", "Solis", "jsolis@gmail.com",6,1);


SELECT * FROM Habitaciones;
INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("22", "200-8970-3967",02, "28", "Habitacion doble deluxe");


INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("10", "251-338-5987", 12,"10" ,"Habitacion sencilla");




INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("15", "222-338-5978", 45, "50", "Habitacion Deluxe");

INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("20","200-330-6678", 5, "3","Habitacion Deluxe");


INSERT INTO Habitaciones (Numero_habitacion, cedula_juridica, Numero_reservacion, Disponibilidad_habitaciones, Tipo_habitacion)
VALUES ("1","111-4240-654", 2, "0", "Habitacion sencilla")

-- INSERT INTO habitaciones (Numero_habitacion,cedula_juridica,Numero_reservacion,Disponibilidad_habitacione,Tipo_habitacion) 
-- VALUES (40,111900999,32,0,"BLABLABLA")   Habitacion buena despues de hacer alter table de los store procedures

SELECT * from habitaciones;


-- ERROR Actualizacion de datos
-- Se actualizan los datos en la tabla habitaciones.
UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 10;
UPDATE Habitaciones SET Disponibilidad_habitaciones = 0 WHERE Disponibilidad_habitaciones = 50;
UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 3;
UPDATE Habitaciones SET Disponibilidad_habitaciones = 1 WHERE Disponibilidad_habitaciones = 28;


-- Actualizacion de datos pero de la tabla reservas
UPDATE reservas SET Numero_habitacion = 1 WHERE Numero_reservacion = 2;
UPDATE reservas SET Numero_habitacion = 10 WHERE Numero_reservacion = 12;
UPDATE reservas SET Numero_habitacion = 11 WHERE Numero_reservacion = 8;
UPDATE reservas SET Numero_habitacion = 15 WHERE Numero_reservacion = 45;
UPDATE reservas SET Numero_habitacion = 20 WHERE Numero_reservacion = 5;
UPDATE reservas SET Numero_habitacion = 22 WHERE Numero_reservacion = 2;
UPDATE reservas SET Numero_habitacion = 11 WHERE Numero_reservacion = 8;
UPDATE reservas SET Numero_habitacion =  WHERE Numero_reservacion = 10;

