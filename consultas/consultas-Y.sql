--1. Consulta para obtener los hoteles con mayor número de reservas. 
SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
GROUP BY reservas.Numero_reservacion;


-- SELECT * FROM HOTELES
-- ALTER TABLE reservas
-- ADD COLUMN cedula_juridica VARCHAR(100),
-- ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;

-- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.
SELECT COUNT (Disponibilidad_habitaciones) FROM habitaciones WHERE '2023-03-23' and Disponibilidad_habitaciones = 1

 
-- 3.Consulta para buscar hoteles por nombre.
SELECT * FROM Hoteles WHERE Nombre_hotel= "Dreams Lodge Orosi";


-- 4. Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE 'Carta%';


-- 5. Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica';


-- --6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT usuarios.Correo_electronico, reservas.Fecha_reservacion FROM usuarios
INNER JOIN clientes ON clientes.ID_clientes = usuarios.ID_cliente
INNER JOIN reservas ON reservas.ID_usuario = usuarios.ID_usuario


--7. Consulta para calcular el promedio de reservas diarias en un hotel.
SELECT AVG(reservas_diarias) AS promedio_reservas_diarias
FROM (
    SELECT Fecha_reservacion, COUNT(*) AS reservas_diarias
    FROM Reservas
    INNER JOIN Hoteles ON Hoteles.cedula_juridica = Reservas.cedula_juridica
    WHERE Hoteles.Nombre_hotel = 'Escazu Resident'
    GROUP BY Fecha_reservacion
) AS reservas_diarias;


--8. Consulta para identificar el hotel con la mayor ocupación en el mes anterior.

Select COUNT(reservas.cedula_juridica),hoteles.Nombre_hotel FROM reservas
INNER JOIN Hoteles ON `Hoteles`.`Cedula_juridica` = reservas.cedula_juridica
GROUP BY `Hoteles`.`Cedula_juridica`;



--9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.
SELECT Hoteles.Nombre_hotel FROM Hoteles
JOIN Habitaciones ON Hoteles.Cedula_juridica = Habitaciones.cedula_juridica
INNER JOIN Reservas ON Habitaciones.Numero_reservacion = reservas.Numero_reservacion 
AND Reservas.Fecha_reservacion > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)