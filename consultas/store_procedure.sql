-- Estructura de procesos almacenados, poniendo el delimitador, datos de entrada
--P = parametro 
-- Begin = que tiene que hacer

--Store Procedures para poder agregar reservas.
CREATE PROCEDURE AGREGAR_RESERVA(IN P_Num_reservacion INT, IN P_date DATE, IN P_time INT, IN P_ID INT,IN P_Numero_habitacion INT)
BEGIN 
    INSERT INTO Reservas(Numero_reservacion, Fecha_reservacion, Tiempo_reservacion, ID_usuario,Numero_habitacion) VALUES (P_Num_reservacion, P_date, P_time, P_ID,P_Numero_habitacion);
END ;

-- reserva
Call AGREGAR_RESERVA(02, "2023-10-25", 2,2);
CALL AGREGAR_RESERVA(08,"2023-10-10",1,3);
CALL AGREGAR_RESERVA(12,"2023-09-08",4,4);
CALL AGREGAR_RESERVA(45, "2023-09-08",1,5);
CALL AGREGAR_RESERVA(05, "2023-10-22",2,6);
CALL AGREGAR_RESERVA(10, "2023-02-02",2,7);

SELECT * FROM reservas




-- Para borrar el store procedures
-- DROP PROCEDURE DISPONIBILIDAD_HABITACIONES;
CALL DISPONIBILIDAD_HABITACIONES("2024-08-28");
-- CREATE Procedure AGREGAR_CLIENTE(IN P_Identificacion VARCHAR, IN P_Date DATE , IN P_Dias INT, IN P_Hotel VARCHAR)
-- BEGIN
--     INSERT INTO Clientes(Num_cedula, Fecha_reservacion, Dias_reservados, Nombre_hotel) VALUES ( P_Identificacion, P_Date,P_Dias, P_Hotel);
-- END ;
-- comente por que me tira un error

-- Store Procedures para consultar la disponibilidad de habitaciones por fecha.

CREATE PROCEDURE DISPONIBILIDAD_HABITACIONES(IN Fecha_consultar DATE)
BEGIN
    SELECT COUNT(*) AS NumeroDeReservasDisponibles
    FROM reservas
    WHERE DATE_ADD(Fecha_reservacion, INTERVAL Tiempo_reservacion DAY) < Fecha_consultar;
END;



-- Store Procedures para calcular la ocupacion de un hotel en un rango de fechas
CREATE PROCEDURE DIPONIBILIDAD_HOTELES(IN )