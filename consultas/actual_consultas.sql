--1. Consulta para Obtener los Hoteles con Mayor Número de Reservas
SELECT h.Nombre_hotel, COUNT(r.Numero_reservacion) AS Total_Reservas
FROM Hoteles h
JOIN Habitaciones hab ON h.Cedula_juridica = hab.cedula_juridica
JOIN Reservas r ON hab.Numero_habitacion = r.Numero_habitacion
GROUP BY h.Nombre_hotel
ORDER BY Total_Reservas DESC;

--2. Consulta para Contar Cuántas Habitaciones Disponibles Hay en un Hotel
--Específico en una Fecha Dada
SELECT COUNT(hab.Numero_habitacion) AS Habitaciones_Disponibles
FROM Habitaciones hab
JOIN Hoteles h ON hab.cedula_juridica = h.Cedula_juridica
LEFT JOIN Reservas r ON hab.Numero_habitacion = r.Numero_reservacion
WHERE h.Nombre_hotel = "Jardin de Lourdes"
 AND (r.Numero_reservacion IS NULL OR r.Fecha_reservacion <> "2024-03-10");

--3. Consulta para Buscar Hoteles por Nombres
SELECT *
FROM Hoteles
WHERE Nombre_hotel LIKE '%Jardin%';

--4. Consulta para Buscar Hoteles Cuya Ubicación Comienza con un Texto
--Específico
SELECT *
FROM Hoteles
WHERE Ubicacion LIKE 'Rica%';

-- 5. Consulta para Buscar Hoteles Cuya Ubicación Termina con un Texto
--Específico
SELECT *
FROM Hoteles
WHERE Ubicacion LIKE '%a';

--6. Consulta para Obtener las Reservas de un Cliente Realizadas por Email en
--el Mes Anterior
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

 


