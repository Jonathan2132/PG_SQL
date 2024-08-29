En PostgreSQL, CONSTRAINT es una palabra clave que se utiliza para definir reglas y restricciones en las tablas de la base de datos. Estas restricciones ayudan a garantizar la integridad y coherencia de los datos almacenados en la base de datos. Aquí hay algunas razones para usar CONSTRAINT en PostgreSQL:

Integridad de los Datos:

PRIMARY KEY: Asegura que cada fila en una tabla tenga un identificador único.
FOREIGN KEY: Mantiene la integridad referencial entre tablas, asegurando que los valores en una columna coincidan con los valores en la columna de una tabla relacionada.
UNIQUE: Garantiza que los valores en una columna o un conjunto de columnas sean únicos en la tabla.



ALTER TABLE empleados
ADD CONSTRAINT pk_empleados PRIMARY KEY (id_empleado);

-- Eliminar una restricción de clave primaria
ALTER TABLE empleados
DROP CONSTRAINT pk_empleados;