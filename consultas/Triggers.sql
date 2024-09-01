
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

