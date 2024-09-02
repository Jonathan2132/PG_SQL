SELECT pppp()
CREATE or REPLACE FUNCTION pppp() RETURNS TABLE(nam VARCHAR(50) ) 
AS
$$

BEGIN


RETURN query select name from doctors;
end;




$$ LANGUAGE PLPGSQL;