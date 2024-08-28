-- Estructura de procesos almacenados, poniendo el delimitador, datos de entrada
--P = parametro 
-- Begin = que tiene que hacer


CREATE PROCEDURE AGREGAR_RESERVA(IN P_Num_reservacion INT, IN P_date DATE, IN P_time INT, IN P_ID INT)
BEGIN 
    INSERT INTO Reservas(Numero_reservacion, Fecha_reservacion, Tiempo_reservacion, ID_usuario) VALUES (P_Num_reservacion, P_date, P_time, P_ID);
END  ;

-- reserva
Call AGREGAR_RESERVA(1, "2023-10-25", 3, 1);

