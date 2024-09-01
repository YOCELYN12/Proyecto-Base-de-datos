--Crear un índice en una columna específica (por ejemplo, la columna de ubicación en la tabla de Hoteles) para optimizar las consultas. Explicar por qué se eligió esa tabla y columna.
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16
--Elegimos la tabla Hoteles  y la columna Ubicacion en especifico ya que nos optimizarian las consultas.
-- Por ejemplo si se usa con frecuencia consultas por ubicacion en una base de datos:
-- comúnmente se buscan hoteles en una ubicación específica, el índice permitirá que estas búsquedas se realicen más rápidamente.
-- en bases de datos muy grandes las busquedas sin indices pueden ser muy lentas.
<<<<<<< HEAD
-- Mejora la eficiencia en operaciobes de agregacion  como COUNT, SUM AVG en la columna de Ubicacion el indice nos puede ayudar a que estas operaciones 
--sean mas rapidas.

=======
-- Mejora la eficiencia en operaciobes de agregacion  como COUNT, SUM AVG en la columna de Ubicacion el indice nos puede ayudar a que estas operaciones
-- sean mas rapidas.
>>>>>>> b23a83f235b9895367ec8fb971bf44550890cc16
CREATE INDEX idx_ubicacion ON Hoteles(Ubicacion);
-- creacion de indice (se llama al indice) ON Tabla(Columna).
=======
CREATE INDEX idx_ubicacion ON Hoteles(Ubicacion);
>>>>>>> 91668f607864c043e706fbae0538262e31a281a6
