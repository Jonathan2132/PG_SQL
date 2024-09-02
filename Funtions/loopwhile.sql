DO $$

DECLARE
dato1 int := 10;
dato2 int := 0;

BEGIN




while dato1 > dato2

loop
dato2 := dato2+1;
raise notice 'hola';


END loop;




END;

$$



EXIT;



DO $$
DECLARE
    dato1 int := 10000;
    dato2 int := 1;
    rec RECORD;
BEGIN
    -- Loop through each row returned by the query
    FOR rec IN 
        SELECT id_doctors 
        FROM doctors
    LOOP
        dato2 := dato2 + 1;
        RAISE NOTICE 'id_doctors: %', rec.id_doctors;
    END LOOP;
END;








DO $$

DECLARE 
i RECORD;
BEGIN


FOR i in select id_doctors,name FROM doctors

loop
raise notice 'id_doctors: %',i;
END loop;




END;




$$ LANGUAGE PLPGSQL;

-------------------------------------------
DO $$

DECLARE 
    i RECORD;
BEGIN
    FOR i IN SELECT id_doctors, name FROM doctors
    LOOP
        RAISE NOTICE 'id_doctors: %, name: %', i.id_doctors, i.name;
    END LOOP;
END;

$$ LANGUAGE plpgsql;
