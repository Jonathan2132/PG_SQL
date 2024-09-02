DO $$

DECLARE
contenedor RECORD;
curso_p CURSOR for SELECT name from doctors;

BEGIN

OPEN curso_p;
FETCH curso_p into contenedor;
RAISE NOTICE 'name:%',contenedor.name;

FETCH curso_p into contenedor;
RAISE NOTICE 'name:%',contenedor.name;

FETCH curso_p into contenedor;
RAISE NOTICE 'name:%',contenedor.name;

FETCH curso_p into contenedor;
RAISE NOTICE 'name:%',contenedor.name  ||' '|| '111';

END;





$$

---------------------------------------------------------------------

CREATE or REPLACE FUNCTION bbbb() RETURNS REFCURSOR
AS
$$

DECLARE 

curso_n CURSOR for SELECT name from doctors;
conter REFCURSOR;

BEGIN
open curso_n;

FETCH curso_n into conter;
RETURN conter as l;






END;





$$ LANGUAGE PLPGSQL;

SELECT bbbb()

















CREATE or REPLACE FUNCTION bbbbbb() RETURNS REFCURSOR
AS
$$

DECLARE 

curso_n CURSOR for SELECT name from doctors;
conter RECORD;
bu int := 0;

BEGIN
open curso_n;

while bu < 10
loop
bu := bu+1;

FETCH curso_n into conter;
raise notice 'name :%',conter.name;

end loop;






END;





$$ LANGUAGE PLPGSQL;

SELECT bbbbbb()