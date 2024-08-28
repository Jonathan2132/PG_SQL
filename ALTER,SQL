ALTER TABLE patient
add COLUMN id_doctors INT NOT NULL
;
--- recuerda anadir la columna primero
ALTER TABLE patient
add CONSTRAINT id_doctors
FOREIGN key(id_doctors) REFERENCES doctors(id_doctors)
;





-- Agregar una columna
ALTER TABLE empleados
ADD COLUMN fecha_nacimiento DATE;

-- Eliminar una columna
ALTER TABLE empleados
DROP COLUMN fecha_nacimiento;

-- Renombrar una columna
ALTER TABLE empleados
RENAME COLUMN salario TO sueldo;

-- Modificar el tipo de dato de una columna
ALTER TABLE empleados
ALTER COLUMN sueldo TYPE DECIMAL(10,2);

-- Agregar una restricción de clave primaria
ALTER TABLE empleados
ADD CONSTRAINT pk_empleados PRIMARY KEY (id_empleado);

-- Eliminar una restricción de clave primaria
ALTER TABLE empleados
DROP CONSTRAINT pk_empleados;

-- Renombrar la tabla
ALTER TABLE empleados
RENAME TO trabajadores;

-- Cambiar el nombre de la tabla
ALTER TABLE trabajadores
RENAME TO personal;
