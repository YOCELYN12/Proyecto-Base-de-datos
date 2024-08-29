-- Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE 'Carta%';


-- Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica';


-- Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.
SELECT COUNT EMAIL FROM clientes WHERE Fecha_reservacion 

SELECT * FROM clientes