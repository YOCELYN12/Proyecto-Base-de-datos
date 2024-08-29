--1. Consulta para obtener los hoteles con mayor número de reservas.
-- SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
-- INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
-- GROUP BY reservas.Numero_reservacion;

SELECT * FROM Reservas;
SELECT * from hoteles 

ALTER TABLE reservas
ADD COLUMN cedula_juridica VARCHAR(100),
ADD FOREIGN KEY cedula_juridca(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;

ALTER TABLE reservas
ADD COLUMN Numero_habitacion VARCHAR(100),
ADD FOREIGN KEY Numero_habitacion(Numero_habitacion) REFERENCES Habitaciones(Numero_habitacion) ON DELETE CASCADE;


SELECT * from reservas;
SELECT * FROM hoteles;
ALTER TABLE hoteles DROP FOREIGN KEY Numero_habitacion;
-- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.




-- 3.Consulta para buscar hoteles por nombre.
SELECT Nombre_hotel
FROM Hoteles WHERE `Nombre_hotel`=" ";

-- 4.Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT Ubicacion 
FROM Hoteles WHERE ubicacion LIKE "h%";


--5.Consulta para buscar hoteles cuya ubicación termina con un texto específico.



--6.Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.





--7.Consulta para calcular el promedio de reservas diarias en un hotel.





-- 8.Consulta para identificar el hotel con la mayor ocupación en el mes anterior.



--9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes
