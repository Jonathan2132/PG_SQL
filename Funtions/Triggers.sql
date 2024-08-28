CREATE OR REPLACE FUNCTION log_employee_insert() 
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO audit_log (event_type, employee_id, changed_at)
    VALUES ('INSERT', NEW.id, NOW());
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;



CREATE TRIGGER employee_insert_trigger
AFTER INSERT ON employees
FOR EACH ROW
EXECUTE FUNCTION log_employee_insert();










--- trigger con if 
CREATE OR REPLACE FUNCTION log_employee_insert() 
RETURNS TRIGGER AS $$
BEGIN
    -- Verificar si la posición es 'Manager'
    IF NEW.position = 'Manager' THEN
        INSERT INTO audit_log (event_type, employee_id, changed_at)
        VALUES ('INSERT', NEW.id, NOW());
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;




-- declare
CREATE OR REPLACE FUNCTION log_employee_insert() 
RETURNS TRIGGER AS $$
DECLARE
    -- Declarar una variable para almacenar un mensaje
    log_message TEXT;
BEGIN
    -- Inicializar la variable con un mensaje predeterminado
    log_message := 'New employee added';

    -- Comprobar si el nombre del empleado contiene la palabra 'Special'
    IF NEW.name ILIKE '%Special%' THEN
        log_message := 'Special employee added';
    END IF;

    -- Insertar en la tabla audit_log con el mensaje
    INSERT INTO audit_log (event_type, employee_id, message, changed_at)
    VALUES ('INSERT', NEW.id, log_message, NOW());

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
