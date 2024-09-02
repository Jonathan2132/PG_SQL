SELECT * FROM customers
WHERE country IN ('Germany', 'France', 'UK');

SELECT * FROM customers
WHERE country NOT IN ('Germany', 'France', 'UK');

--- chequea si estan en la columna a difencia de = puede usar muchas al mismo tiempo sin tener que usar or 