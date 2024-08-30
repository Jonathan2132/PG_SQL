CREATE OR REPLACE FUNCTION ejemplo_if(valor INTEGER) RETURNS TEXT AS $$
BEGIN
    IF valor > 10 THEN
        RETURN 'El valor es mayor que 10';
    ELSIF valor = 10 THEN
        RETURN 'El valor es igual a 10';
    ELSE
        RETURN 'El valor es menor que 10';
    END IF;
END;
$$ LANGUAGE plpgsql;




DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM mi_tabla WHERE columna = 'valor') THEN
        RAISE NOTICE 'El valor existe';
    ELSE
        RAISE NOTICE 'El valor no existe';
    END IF;
END;
$$ LANGUAGE plpgsql;



SELECT ejemplo_if(15) AS lupita;