SELECT vendedor, SUM(cantidad) AS total_vendido
FROM ventas
GROUP BY vendedor
HAVING SUM(cantidad) > 100;


SELECT COUNT(*) AS total_empleados
FROM empleados
HAVING COUNT(*) > 100;

