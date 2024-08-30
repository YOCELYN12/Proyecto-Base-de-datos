
-- Implementar un trigger que actualice automáticamente la disponibilidad de habitaciones cuando se realice una reserva 
--o se cancele una existente.
CREATE TRIGGER Actualizar_disponibilidad_habitaciones
BEFORE INSERT ON Reservas 
FOR EACH ROW
BEGIN 
   UPDATE Habitaciones set Disponibilidad_habitaciones = '0' where `Numero_habitacion` = new.`Numero_habitacion`;
END:

-- Prueba
CALL AGREGAR_RESERVA(1, "2023-03-31",2,5,"11");


-- Borrar los datos ingresados
-- DELETE FROM reservas where `Numero_reservacion` = 20;

-- Borrar trigger 
-- DROP TRIGGER Actualizar_disponibilidad_habitaciones

