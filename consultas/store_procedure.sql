--Store Procedures para poder agregar reservas.
CREATE PROCEDURE AGREGAR_RESERVA( IN P_date DATE, IN P_time INT, IN P_Numero_habitacion INT, IN P_ID INT)
BEGIN 
    INSERT INTO Reservas(Fecha_reservacion,Tiempo_reservacion, Numero_habitacion, ID_usuario) VALUES (P_date, P_time,P_Numero_habitacion, P_ID);
END ;



-- Se llama el Store procedures para poder ingregar los datos
 Call AGREGAR_RESERVA("2023-10-25",2,1,2);
CALL AGREGAR_RESERVA("2023-10-10",1,2,3);
CALL AGREGAR_RESERVA("2023-09-08",4,3,4);
CALL AGREGAR_RESERVA("2023-09-08",1,4,1);
CALL AGREGAR_RESERVA("2023-10-22",2,5,6);
CALL AGREGAR_RESERVA("2023-02-02",2,6,5);




-- Store Procedures para consultar la disponibilidad de habitaciones por fecha.

DELIMITER //

CREATE PROCEDURE Disponibilidad_Habitaciones(
    IN p_Fecha DATE
)
BEGIN
    SELECT h.Numero_habitacion, h.Tipo_habitacion, ho.Nombre_hotel, h.Disponibilidad_habitaciones
    FROM Habitaciones h
    JOIN Hoteles ho ON h.cedula_juridica = ho.Cedula_juridica
    WHERE h.Disponibilidad_habitaciones = "1" 
    AND h.Numero_habitacion NOT IN (
        SELECT r.Numero_reservacion
        FROM Reservas r
        WHERE p_Fecha BETWEEN r.Fecha_reservacion AND DATE_ADD(r.Fecha_reservacion, INTERVAL r.Tiempo_reservacion DAY)
    );
END


CALL Disponibilidad_habitaciones("2024-08-28");
CALL DISPONIBILIDAD_HABITACIONES("2024-07-25");
CALL DISPONIBILIDAD_HABITACIONES("2024-09-01");




-- Delete from reservas WHERE Numero_reservacion = 28;
-- Delete from reservas WHERE Numero_reservacion = 29;
-- Delete from reservas WHERE Numero_reservacion = 30;
-- Delete from reservas WHERE Numero_reservacion = 31;


-- CREATE PROCEDURE DISPONIBILIDAD_HABITACIONES(IN Fecha_consultar DATE)
-- BEGIN
--     SELECT COUNT(*) AS NumeroDeReservasDisponibles
--     FROM reservas
--     WHERE DATE_ADD(Fecha_reservacion, INTERVAL Tiempo_reservacion DAY) < Fecha_consultar;
-- END;


-- DELIMITER //

-- CREATE PROCEDURE Agregar_reserva(
--     IN fecha_reservacion DATE,
--     IN numero_reservacion INT,
--     IN tiempo_reservacion INT,
--     IN id_usuario INT
-- )
-- BEGIN
--     INSERT INTO Reservas (Numero_reservacion, Fecha_reservacion, Tiempo_reservacion, ID_usuario)
--     VALUES (numero_reservacion, fecha_reservacion, tiempo_reservacion, id_usuario);
-- END //

-- DELIMITER ;