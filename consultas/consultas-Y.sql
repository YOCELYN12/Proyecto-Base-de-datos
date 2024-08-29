--1. Consulta para obtener los hoteles con mayor número de reservas. 
SELECT COUNT(reservas.numero_reservacion) AS cantidad_reservas,hoteles.Nombre_hotel FROM reservas
INNER JOIN hoteles on reservas.cedula_juridica = hoteles.Cedula_juridica
GROUP BY reservas.Numero_reservacion;

SELECT COUNT ()


-- ALTER TABLE reservas
-- ADD COLUMN cedula_juridica VARCHAR(100),
-- ADD FOREIGN KEY cedula_juridica(cedula_juridica) REFERENCES hoteles(cedula_juridica) ON DELETE CASCADE;
 
-- SELECT * from Reservas;
-- SELECT * FROM hoteles;


-- 2.Consulta para contar cuántas habitaciones disponibles hay en un hotel específico en una fecha dada.
-- SELECT 







-- 3.Consulta para buscar hoteles por nombre.
SELECT * FROM Hoteles WHERE Nombre_hotel= "Dreams Lodge Orosi";
-- 4. Consulta para buscar hoteles cuya ubicación comienza con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE 'Carta%';

-- 5. Consulta para buscar hoteles cuya ubicación termina con un texto específico.
SELECT * FROM Hoteles WHERE Ubicacion LIKE '%Rica';


-- --6. Consulta para obtener las reservas de un cliente (por email) realizadas en el mes anterior.

SELECT usuarios.Correo_electronico, reservas.Fecha_reservacion FROM usuarios
INNER JOIN clientes ON clientes.ID_clientes = usuarios.ID_cliente
INNER JOIN reservas ON reservas.ID_usuario = usuarios.ID_usuario
WHERE reservas.Fecha_reservacion = MONTH(CURRENT_DATE - INTERVAL 1 MONTH) AND usuarios.Correo_electronico = "marias@gmail.com"

SELECT usuarios.Correo_electronico, reservas.Fecha_reservacion FROM usuarios
INNER JOIN clientes ON clientes.ID_clientes = usuarios.ID_cliente
INNER JOIN reservas ON reservas.ID_usuario = usuarios.ID_usuario

-- SELECT * FROM clientes;

-- SELECT * FROM reservas;




--7. Consulta para calcular el promedio de reservas diarias en un hotel.



--8. Consulta para identificar el hotel con la mayor ocupación en el mes anterior.



--9. Consulta para listar los hoteles que tienen habitaciones disponibles pero no han sido reservadas en el último mes.