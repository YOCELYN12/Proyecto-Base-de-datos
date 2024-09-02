

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


-- Triggers:
-- -Un trigger es un objeto de base de datos que se ejecuta automáticamente en respuesta a un evento
-- específico, como la inserción, actualización o eliminación de datos en una tabla.
-- -Los triggers se utilizan para garantizar la integridad de los datos, aplicar reglas de negocio y automatizar tareas repetitivas.
-- Los triggers nos sirven para:
-- -Mantenimiento de la integridad de los datos.
-- -Automatizacion de tareas
-- Sintaxis:
-- CREATE TRIGGER nombre_trigger
-- {BEFORE | AFTER} {INSERT | UPDATE | DELETE}
-- ON nombre_tabla
-- [FOR EACH ROW]
-- BEGIN cuerpo del trigger
-- END;
-- Ejemplo; CREATE TRIGGER
-- actualizar_fecha_modificacion
-- after update
-- on clientes
-- for each row
-- Begin
--   undate clientes set fecha_ultima_modificacion = NOW() WHERE id = NEW.id;
-- END;

