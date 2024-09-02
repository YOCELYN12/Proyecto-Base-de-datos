--1. Consulta para obtener los hoteles con mayor número de reservas.
SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas, hoteles.Nombre_hotel
FROM reservas
    INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
GROUP BY
    reservas.Numero_reservacion;

SELECT `Numero_reservacion`
FROM Reservas

select Nombre_hotel
from Hoteles
WHERE Nombre_hotel LIKE "%Rica"

SELECT * from hoteles

SELECT * FROM clientes

ALTER TABLE reservas
ADD COLUMN cedula_juridica VARCHAR(100),
ADD FOREIGN KEY cedula_juridca (cedula_juridica) REFERENCES hoteles (cedula_juridica) ON DELETE CASCADE;

-- ALTER TABLE reservas
-- ADD COLUMN Numero_habitacion VARCHAR(100),
-- ADD FOREIGN KEY Numero_habitacion(Numero_habitacion) REFERENCES Habitaciones(Numero_habitacion) ON DELETE CASCADE;

SELECT * from reservas;

SELECT * FROM hoteles;


-- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.
SELECT COUNT(Disponibilidad_habitaciones) FROM habitaciones WHERE "2023-03-23" and `Disponibilidad_habitaciones`= 1


-- 3.Consulta para buscar hoteles por nombre.
SELECT Nombre_hotel, Tarifas,Ubicacion FROM Hoteles WHERE Nombre_hotel = "Dreams Lodge Orosi";

-- 4.Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT Ubicacion FROM Hoteles WHERE ubicacion LIKE "Carta%";

--5.Consulta para buscar hoteles cuya ubicación termina con un texto específico.

SELECT Ubicacion FROM Hoteles WHERE ubicacion LIKE "%Rica";

--6.Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT usuarios.Correo_electronico, reservas.Fecha_reservacion 
FROM usuarios
INNER JOIN Clientes ON clientes.ID_clientes = usuarios.ID_cliente
INNER JOIN reservas ON reservas.ID_usuario = usuario.ID_usuario


--7.Consulta para calcular el promedio de reservas diarias en un hotel.
SELECT 

SELECT AVG(Fecha_reservacion) FROM reservas  WHERE `Fecha_reservacion`> 2;
-- 8.Consulta para identificar el hotel con la mayor ocupación en el mes anterior.
SELECT MAX(Fecha_reservacion) FROM reservas WHERE `Fecha_reservacion`> 2;

--9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes-

SELECT Hoteles.Numero_habitacion , Reservas.`Fecha_reservacion`

SELECT  Clientes.Nombre, reservas.Fecha_reservacion
FROM Clientes.Nombre INNER JOIN reservas.`Tiempo_reservacion`


SELECT * FROM Reservas;

SELECT * FROM hoteles

SELECT `Tarifas`
FROM Hoteles 
WHERE `Tarifas`<20000;

SELECT `Tiempo_reservacion`
FROM reservas
WHERE `Tiempo_reservacion`<2;