

-- CREATE TRIGGER Actualizar_disponibilidad_habitaciones
-- BEFORE INSERT ON Reservas 
-- FOR EACH ROW
-- BEGIN 
--    UPDATE Habitaciones set Disponibilidad_habitaciones = '0' where `Numero_habitacion` = new.`Numero_habitacion`;
-- END:

DELIMITER //

-- Implementar un trigger que actualice automáticamente la disponibilidad de habitaciones cuando se realice una reserva 
-- --o se cancele una existente.
CREATE TRIGGER ActualizarDisponibilidadReservas
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    -- Ejemplo de lógica para actualizar la disponibilidad (puede ser un campo adicional en la tabla Habitaciones)
    UPDATE Habitaciones
    SET Disponibilidad_habitaciones = '0'
    WHERE Numero_reservacion = NEW.Numero_reservacion;
END //

CREATE TRIGGER ActualizarDisponibilidadCancelacion
AFTER DELETE ON Reservas
FOR EACH ROW
BEGIN
    -- Utiliza 'Número_Reservación' en lugar de 'ID_Habitación'
    UPDATE Habitaciones
    SET Disponibilidad_habitaciones = '1'
    WHERE Numero_Reservacion = OLD.Numero_Reservacion;
END //


call AGREGAR_RESERVA (90,"2024-10-23",3,6)

DELIMITER ;

















-- Prueba
CALL AGREGAR_RESERVA(1, "2023-03-31",2,5,"11");
SELECT * FROM reservas;
SELECT * FROM habitaciones

-- Borrar los datos ingresados
-- DELETE FROM reservas where `Numero_reservacion` = 20;

-- Borrar trigger 
-- DROP TRIGGER Actualizar_disponibilidad_habitaciones

