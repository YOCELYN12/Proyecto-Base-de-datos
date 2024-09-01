

-- CREATE TRIGGER Actualizar_disponibilidad_habitaciones
-- BEFORE INSERT ON Reservas 
-- FOR EACH ROW
-- BEGIN 
--    UPDATE Habitaciones set Disponibilidad_habitaciones = '0' where `Numero_habitacion` = new.`Numero_habitacion`;
-- END:

DELIMITER //

-- Implementar un trigger que actualice automáticamente la disponibilidad de habitaciones cuando se realice una reserva 
-- --o se cancele una existente.
DELIMITER//
CREATE TRIGGER ActualizarDisponibilidadReservas
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    -- Ejemplo de lógica para actualizar la disponibilidad (puede ser un campo adicional en la tabla Habitaciones)
    UPDATE Habitaciones
    SET Disponibilidad_habitaciones = '0'
    WHERE Numero_habitacion = NEW.Numero_habitacion;
END //



DELIMITER;
 drop Trigger ActualizarDisponibilidadReservas;

CALL AGREGAR_RESERVA("2024-08-01",2,6,5);
INSERT INTO reservas (Fecha_reservacion,Tiempo_reservacion,Numero_habitacion, ID_usuario)  
VALUES ("2024-08-01",2,6,5);

SELECT * from habitaciones;

SELECT * FROM reservas;
CALL 

CREATE TRIGGER ActualizarDisponibilidadCancelacion
AFTER DELETE ON Reservas
FOR EACH ROW
BEGIN
    -- Utiliza 'Número_Reservación' en lugar de 'ID_Habitación'
    UPDATE Habitaciones
    SET Disponibilidad_habitaciones = '1'
    WHERE Numero_habitacion = OLD.Numero_habitacion;
END //

DELIMITER ;


DELETE FROM reservas WHERE `Numero_reservacion`= 8


SELECT * from reservas;
SELECT * from habitaciones




drop Trigger ActualizarDisponibilidadReservas;
DROP TRIGGER ActualizarDisponibilidadCancelacion;

UPDATE reservas 


-- Borrar los datos ingresados
-- DELETE FROM reservas where `Numero_reservacion` = 20;

-- Borrar trigger 
-- DROP TRIGGER Actualizar_disponibilidad_habitaciones

