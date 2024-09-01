--Crear una vista que muestre un reporte de las reservas realizadas en el día actual.

CREATE VIEW reservas_realizadas AS
SELECT Fecha_reservacion, Tiempo_reservacion
FROM Reservas
WHERE Fecha_reservacion = CURDATE();

SELECT * FROM reservas_realizadas;

-- Se manda a llamar el procedure para poder ingresar un dato de prueba, para comprobar el funcionamiento de la view
CALL AGREGAR_RESERVA("2024-09-01",2,4,5);
