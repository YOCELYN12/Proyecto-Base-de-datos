--1. Consulta para Obtener los Hoteles con Mayor Número de Reservas
SELECT h.Nombre_hotel, COUNT(r.Numero_reservacion) AS Total_Reservas
FROM Hoteles h
JOIN Habitaciones hab ON h.Cedula_juridica = hab.cedula_juridica
JOIN Reservas r ON hab.Numero_habitacion = r.Numero_habitacion
GROUP BY h.Nombre_hotel
ORDER BY Total_Reservas DESC;



--2. Consulta para Contar Cuántas Habitaciones Disponibles Hay en un Hotel Específico en una Fecha Dada
SELECT COUNT(hab.Numero_habitacion) AS Habitaciones_Disponibles
FROM Habitaciones hab
JOIN Hoteles h ON hab.cedula_juridica = h.Cedula_juridica
LEFT JOIN Reservas r ON hab.Numero_habitacion = r.Numero_reservacion
WHERE h.Nombre_hotel = "Jardin de Lourdes"
 AND (r.Numero_reservacion IS NULL OR r.Fecha_reservacion <> "2024-03-10");





--3. Consulta para Buscar Hoteles por Nombres
SELECT * FROM Hoteles WHERE Nombre_hotel LIKE '%Jardin%';








--4. Consulta para Buscar Hoteles Cuya Ubicación Comienza con un Texto
--Específico
SELECT * FROM Hoteles WHERE Ubicacion LIKE 'R%';




-- 5. Consulta para Buscar Hoteles Cuya Ubicación Termina con un Texto
--Específico
SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica';




--6. Consulta para Obtener las Reservas de un Cliente Realizadas por Email en el Mes Anterior
SELECT r.*
FROM Reservas r
JOIN Usuarios u ON r.ID_usuario = u.ID_usuario
JOIN Clientes c ON u.ID_cliente = c.ID_clientes
WHERE u.Correo_electronico = "mquiros@gmail.com"
 AND r.Fecha_reservacion BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
AND CURDATE();
SELECT * FROM Hoteles;
SELECT * FROM Reservas;





-- 7. Consulta para Calcular el Promedio de Reservas Diarias en un Hotel
SELECT h.Nombre_hotel, AVG(daily_reservations) AS Promedio_Reservas_Diarias
FROM (
    SELECT h.Nombre_hotel, r.Fecha_reservacion, COUNT(r.Numero_reservacion) AS daily_reservations
    FROM Reservas r
    JOIN Habitaciones hab ON r.Numero_reservacion = hab.Numero_habitacion
    JOIN Hoteles h ON hab.cedula_juridica = h.Cedula_juridica
    GROUP BY h.Nombre_hotel, r.Fecha_reservacion
) AS daily_stats
JOIN Hoteles h ON daily_stats.Nombre_hotel = h.Nombre_hotel
GROUP BY h.Nombre_hotel;






--8. Consulta para Identificar el Hotel con la Mayor Ocupación en el Mes
--Anterior
SELECT h.Nombre_hotel, COUNT (r.Numero_reservacion) AS Total_Reservas
FROM Reservas r
JOIN Habitaciones hab ON r.Numero_habitacion = hab.Numero_habitacion
JOIN Hoteles h ON hab.cedula_juridica = h.Cedula_juridica
WHERE r.Fecha_reservacion BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE()
GROUP BY h.Nombre_hotel
ORDER BY Total_Reservas DESC
LIMIT 1;

SELECT h.Nombre_hotel, COUNT(*) AS Total_Reservas
FROM Reservas r
JOIN Habitaciones hab ON r.Numero_habitacion = hab.Numero_habitacion
JOIN Hoteles h ON hab.cedula_juridica = h.Cedula_juridica
WHERE r.Fecha_reservacion BETWEEN '2024-08-01' AND '2024-09-01'
GROUP BY h.Nombre_hotel
ORDER BY Total_Reservas DESC
LIMIT 1;







-- 9. Consulta para Listar los Hoteles que Tienen Habitaciones Disponibles Pero
--No Han Sido Reservadas en el Último Mes
SELECT DISTINCT h.*
FROM Hoteles h
JOIN Habitaciones hab ON h.Cedula_juridica = hab.cedula_juridica
LEFT JOIN Reservas r ON hab.Numero_habitacion = r.Numero_reservacion
WHERE r.Numero_reservacion IS NULL
 OR r.Fecha_reservacion < DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
-- Estudirlo a fondo.
SELECT DISTINCT  * FROM hoteles
JOIN Habitaciones ON Hoteles.Cedula_juridica = Habitaciones.Cedula_juridica
LEFT JOIN Reservas ON habitaciones.Numero_habitacion = reservas.Numero_reservacion
WHERE Reservas.Numero_reservacion IS NULL
 OR Reservas.Fecha_reservacion < DATE_SUB(CURDATE(), INTERVAL 1 MONTH);


Message Naomy Sandi Quiros






















































































































-- --1. Consulta para obtener los hoteles con mayor número de reservas. 

-- -- Utilizamos select Count Retorna cantidad de registros de la tabla reservas.numero de reservacion de resultados que cumplen
-- -- con la condición usamos AS para darle un alias a las columnas de la tabla reservas 
-- -- relacionando las tablas Hoteles y reservas ambas con cedulas juridicas osea mismo valores y con el group by agrupamos los registros
-- SELECT COUNT(reservas.`Tiempo_reservacion`) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
-- INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
-- GROUP BY reservas.Numero_reservacion;


-- SELECT Cedula_juridica, COUNT (Cedula_juridica) AS Numero_de_reservas 
-- from habitaciones
-- JOIN habitaciones on habitaciones.Cedula_juridica = habitaciones. Cedula_juridica
-- JOIN reservas ON habitaciones.Numero_habitacion = reservas.Numero_reservacion
-- GROUP BY `Hoteles`.`Nombre_hotel`
-- ORDER BY Numero_de_reservas DESC;


-- WHERE Cedula_juridica IN(
--     SELECT Cedula_juridica FROM habitaciones WHERE Disponibilidad_habitaciones = 1
-- )

-- CALL AGREGAR_RESERVA("2024-09-01",3,5,7)


-- SELECT * FROM HOTELES;
-- SELECT *  FROM reservas;
-- SELECT * FROM habitaciones;











-- -- SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
-- -- INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
-- -- GROUP BY reservas.Numero_reservacion;

-- -- CALL `AGREGAR_RESERVA`(80,"2023-02-23", 5,4,"20","251-338-5987");
-- -- SELECT * FROM reservas;
-- -- SELECT * FROM hoteles;
-- -- SELECT * FROM HOTELES

-- -- ALTER TABLE reservas
-- -- ADD COLUMN cedula_juridica VARCHAR(100),
-- -- ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;


-- ALTER TABLE reservas
-- ADD COLUMN cedula_juridica VARCHAR(100),
-- ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;
-- -- ya altere la tabla




-- alter table reservas
-- ADD COLUMN Numero_Habitacion Varchar(100),
-- ADD FOREIGN KEY Numero_habitacion(Numero_habitacion) REFERENCES habitaciones(numero_habitacion) ON DELETE CASCADE



-- -- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.

-- -- Utilizamos select Count Retorna cantidad de registros de la tabla habitaciones llamando la columna Disponibilidad de habitaciones y brindamos la fecha que queremos 
-- SELECT COUNT (Disponibilidad_habitaciones) FROM habitaciones WHERE '2023-03-23' and Disponibilidad_habitaciones = 1

-- SELECT * FROM hoteles
 
-- -- 3.Consulta para buscar hoteles por nombre.
-- -- seleccionamos de hoteles donde el hotel contenga "este texto"
-- SELECT * FROM Hoteles WHERE Nombre_hotel= "Dreams Lodge Orosi";


-- -- 4. Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
-- SELECT * FROM Hoteles WHERE Ubicacion LIKE 'Carta%'; 


-- -- 5. Consulta para buscar hoteles cuya ubicación termina con un texto específico.
-- SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica'; --Funciona 


-- --6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
-- -- seleccionamos el correo de la tabla Usuarios y la columna fecha de reservacion de la tabla reservas 
-- -- de usuarios  

-- -- --6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.

-- SELECT usuarios.Correo_electronico, reservas.Fecha_reservacion FROM usuarios
-- INNER JOIN clientes ON clientes.ID_clientes = usuarios.ID_cliente
-- INNER JOIN reservas ON reservas.ID_usuario = usuarios.ID_usuario


-- --7. Consulta para calcular el promedio de reservas diarias en un hotel.
-- SELECT AVG(reservas_diarias) AS promedio_reservas_diarias
-- FROM (
--     SELECT Fecha_reservacion, COUNT(*) AS reservas_diarias
--     FROM Reservas
--     INNER JOIN Hoteles ON Hoteles.cedula_juridica = Reservas.cedula_juridica
--     WHERE Hoteles.Nombre_hotel = 'Escazu Resident'
--     GROUP BY Fecha_reservacion
-- ) AS reservas_diarias;








-- --8. Consulta para identificar el hotel con la mayor ocupación en el mes anterior.

-- Select COUNT(reservas.cedula_juridica),hoteles.Nombre_hotel FROM reservas

-- INNER JOIN Hoteles ON Hoteles.Cedula_juridica = reservas.cedula_juridica
-- GROUP BY Hoteles.Cedula_juridica;  --no funciona


-- INNER JOIN Hoteles ON `Hoteles`.`Cedula_juridica` = reservas.cedula_juridica
-- GROUP BY `Hoteles`.`Cedula_juridica`;


-- --9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.
-- SELECT Hoteles.Nombre_hotel FROM Hoteles
-- JOIN Habitaciones ON Hoteles.Cedula_juridica = Habitaciones.cedula_juridica
-- INNER JOIN Reservas ON Habitaciones.Numero_reservacion = reservas.Numero_reservacion 

-- AND Reservas.Fecha_reservacion > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)   -- no funciona
 
-- AND Reservas.Fecha_reservacion > DATE_SUB(CURDATE(), INTERVAL 1 MONTH)

