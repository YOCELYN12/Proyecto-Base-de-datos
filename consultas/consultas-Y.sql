--1. Consulta para obtener los hoteles con mayor número de reservas. 
<<<<<<< HEAD
-- Utilizamos select Count Retorna cantidad de registros de la tabla reservas.numero de reservacion de resultados que cumplen
-- con la condición usamos AS para darle un alias a las columnas de la tabla reservas 
-- relacionando las tablas Hoteles y reservas ambas con cedulas juridicas osea mismo valores y con el group by agrupamos los registros
SELECT COUNT(reservas.`Tiempo_reservacion`) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
GROUP BY reservas.Numero_reservacion;
=======

SELECT Cedula_juridica, COUNT (Cedula_juridica) AS Numero_de_reservas 
from habitaciones
JOIN habitaciones on habitaciones.Cedula_juridica = habitaciones. Cedula_juridica
JOIN reservas ON habitaciones.Numero_habitacion = reservas.Numero_reservacion
GROUP BY `Hoteles`.`Nombre_hotel`
ORDER BY Numero_de_reservas DESC;


WHERE Cedula_juridica IN(
    SELECT Cedula_juridica FROM habitaciones WHERE Disponibilidad_habitaciones = 1
)

CALL AGREGAR_RESERVA("2024-09-01",3,5,7)




SELECT * FROM HOTELES;
SELECT *  FROM reservas;
SELECT * FROM habitaciones;











-- SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
-- INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
-- GROUP BY reservas.Numero_reservacion;

-- CALL `AGREGAR_RESERVA`(80,"2023-02-23", 5,4,"20","251-338-5987");
-- SELECT * FROM reservas;
-- SELECT * FROM hoteles;
-- SELECT * FROM HOTELES

-- ALTER TABLE reservas
-- ADD COLUMN cedula_juridica VARCHAR(100),
-- ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;

>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16

ALTER TABLE reservas
ADD COLUMN cedula_juridica VARCHAR(100),
ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;
--  ya altere la tabla

alter table reservas
ADD COLUMN Numero_Habitacion Varchar(100),
ADD FOREIGN KEY Numero_habitacion(Numero_habitacion) REFERENCES habitaciones(numero_habitacion) ON DELETE CASCADE



-- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.

-- Utilizamos select Count Retorna cantidad de registros de la tabla habitaciones llamando la columna Disponibilidad de habitaciones y brindamos la fecha que queremos 
SELECT COUNT (Disponibilidad_habitaciones) FROM habitaciones WHERE '2023-03-23' and Disponibilidad_habitaciones = 1

SELECT * FROM hoteles
 
-- 3.Consulta para buscar hoteles por nombre.
-- seleccionamos de hoteles donde el hotel contenga "este texto"
SELECT * FROM Hoteles WHERE Nombre_hotel= "Dreams Lodge Orosi";


-- 4. Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE 'Carta%'; 


-- 5. Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica'; --Funciona 


<<<<<<< HEAD
--6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
-- seleccionamos el correo de la tabla Usuarios y la columna fecha de reservacion de la tabla reservas 
-- de usuarios  
=======
-- --6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16
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
<<<<<<< HEAD
INNER JOIN Hoteles ON Hoteles.Cedula_juridica = reservas.cedula_juridica
GROUP BY Hoteles.Cedula_juridica;  --no funciona
=======
INNER JOIN Hoteles ON `Hoteles`.`Cedula_juridica` = reservas.cedula_juridica
GROUP BY `Hoteles`.`Cedula_juridica`;

>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16


--9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.
SELECT Hoteles.Nombre_hotel FROM Hoteles
JOIN Habitaciones ON Hoteles.Cedula_juridica = Habitaciones.cedula_juridica
INNER JOIN Reservas ON Habitaciones.Numero_reservacion = reservas.Numero_reservacion 
<<<<<<< HEAD
AND Reservas.Fecha_reservacion > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)   -- no funciona
 

=======
AND Reservas.Fecha_reservacion > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16
