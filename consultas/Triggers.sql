
-- Implementar un trigger que actualice automáticamente la 
-- disponibilidad de habitaciones cuando se realice una reserva 
-- o se cancele una existente.
CREATE TRIGGER Actualizar_disponibilidad_habitaciones
AFTER UPDATE
ON Habitaciones
FOR EACH ROW
BEGIN 
   UPDATE Habitaciones set Disponibilidad_habitaciones = '0' where Numero_reservacion = new.Numero_reservacion;
END
 DROP TRIGGER Actualizar_disponibilidad_habitaciones

SELECT * from habitaciones
