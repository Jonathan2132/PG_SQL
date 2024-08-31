
SELECT * from doctors;



BEGIN;
savepoint edad;
UPDATE doctors SET age = 1
WHERE id_doctors = 2;

ROLLBACK to savepoint edad;

commit;
ROLLBACK;

ROLLBACK to savepoint edad;










BEGIN;

-- Establecer un SAVEPOINT
SAVEPOINT my_savepoint;

-- Realizar algunas operaciones
INSERT INTO empleados (nombre, puesto) VALUES ('Juan Pérez', 'Desarrollador');
INSERT INTO departamentos (nombre) VALUES ('Recursos Humanos');

-- Si ocurre un error, puedes hacer un rollback al SAVEPOINT
ROLLBACK TO SAVEPOINT my_savepoint;

-- O puedes seguir adelante y hacer COMMIT
COMMIT;