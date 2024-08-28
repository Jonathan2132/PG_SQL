CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    salario NUMERIC DEFAULT 30000,  -- Valor predeterminado para salario
    fecha_ingreso VARCHAR(13) DEFAULT 'new'  -- Valor predeterminado para fecha_ingreso
);