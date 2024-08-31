
SELECT age from doctors WHERE id_doctors = 2



DO $$
DECLARE
    valor INTEGER ;
BEGIN


SELECT age into valor from doctors WHERE id_doctors = 2;


    IF valor > 200 THEN
        RAISE NOTICE 'El valor es mayor que 10';
    ELSE
        RAISE NOTICE 'El valor es 10 o menos';
    END IF;

	
END;
$$;
