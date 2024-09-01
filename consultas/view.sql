--Crear una vista que muestre un reporte de las reservas realizadas en el día actual.

CREATE VIEW reservas_realizadas AS
SELECT Fecha_reservacion, Tiempo_reservacion
FROM Reservas
WHERE Fecha_reservacion = CURDATE();

SELECT * FROM reservas_realizadas;

<<<<<<< HEAD

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
=======
-- Se manda a llamar el procedure para poder ingresar un dato de prueba, para comprobar el funcionamiento de la view
CALL AGREGAR_RESERVA("2024-09-01",2,4,5);
>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16
