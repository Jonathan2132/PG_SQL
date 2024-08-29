CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE
);


En PostgreSQL, la restricción UNIQUE se utiliza para asegurar
 que los valores en una columna o combinación de columnas sean 
 únicos en la tabla, es decir, no se permitan duplicados. Esto 
 es útil para mantener la integridad de los datos y
 evitar entradas redundantes.