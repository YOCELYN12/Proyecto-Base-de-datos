--Crear una vista que muestre un reporte de las reservas realizadas en el día actual.

CREATE VIEW reservas_realizadas AS
SELECT Fecha_reservacion, Tiempo_reservacion
FROM Reservas
WHERE Fecha_reservacion = CURDATE();

SELECT * FROM reservas_realizadas;


-- Vistas que son:
-- -Es una tabla
-- virtual, su contenido esta definido por una consulta.
-- Sintaxis:
-- CREATE VIEW nombre_de_la_vista AS
-- SELECT columna1, columna2, ...
-- FROM tabla
-- WHERE condición;
-- Ventajas:
-- -Protegen la informacion, restringuiendo el acceso de los usuarios y limitando la cantidad de datos para mostrar.
-- -Son mas eficientes que las tablas fisicas para almacenar datos, ya que solo utiliza datos ya creados de otras tablas.
-- Desventajas:
-- -Son mas complidas de mantener y actualizar
-- -No se pueden indexar