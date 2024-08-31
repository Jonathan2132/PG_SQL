DO $$

DECLARE
dato1 int := 10;
dato2 int := 0;

BEGIN




for i in dato1

loop
dato2 := dato2+1;
raise notice 'hola';


END loop;




END;

$$



EXIT;