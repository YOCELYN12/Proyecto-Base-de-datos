--Crear una vista que muestre un reporte de las reservas realizadas en el día actual.

CREATE VIEW reservas_realizadas AS
SELECT Fecha_reservacion, Tiempo_reservacion
FROM Reservas
WHERE Fecha_reservacion = CURDATE();

SELECT * FROM reservas_realizadas;