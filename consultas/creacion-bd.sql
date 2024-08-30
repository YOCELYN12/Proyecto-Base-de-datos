
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




SELECT * FROM Usuarios

SELECT * FROM Reservas;

SELECT * FROM Hoteles;
INSERT INTO Reservas (Numero_reservacion, Num_cedula, Fecha_reservacion, Tiempo_reservacion) VALUES (22 ,1310225 , "2023-12-20", 3);
SELECT * FROM Hoteles;

INSERT INTO Reservas (Numero_reservacion, Num_cedula, Fecha_reservacion, Tiempo_reservacion) VALUES (2,102583785 , "2023-10-25", 2 ),
(8, 302700071 , "2023-10-10", 1),
(12, 113310637, " 2023-09-8", 4),
(45, 112750278, "2023-09-8",1),
(5, 11241987, "2023-10-22", 2 ),
(10, 120430162, "2023-02-02", 2);

SELECT * FROM Habitaciones;
SELECT * FROM Administradores;
INSERT INTO Administradores(ID, Nombre, Email, Cedula_juridica, Apellido) VALUES (1333999, "Jessica" , "jmadriz@gmail.com ","200-8970-3967", "Madriz" ),
( 3256987, "Javier", "jsolis@gmail.com","1-0125-3967", "Solis" ),
( 1333999, "Isabella", "isabellas@gmail.com ","251-338-5987", "Sandi" )
(2895789,"Rebeca", "isabellas@gmail.com", "Benamburg", )

