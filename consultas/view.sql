--Crear una vista que muestre un reporte de las reservas realizadas en el día actual.

CREATE VIEW reservas_realizadas AS
SELECT Fecha_reservacion, Tiempo_reservacion
FROM Reservas
WHERE Fecha_reservacion = CURDATE();

SELECT * FROM reservas_realizadas;

SELECT * FROM reservas

call `AGREGAR_RESERVA`(40,"2024-08-30",10,2,"10","222-338-5978")