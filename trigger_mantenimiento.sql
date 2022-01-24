CREATE OR REPLACE FUNCTION actualizar_iglesia()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
BEGIN

  UPDATE iglesia SET iglesia_estado = 'MANTENIMIENTO' WHERE iglesia_id = NEW.iglesia_id;
  RETURN NEW;

END;
$$

CREATE OR REPLACE TRIGGER actualizar_iglesia
  AFTER INSERT
  ON MANTENIMIENTO
  FOR EACH ROW
  EXECUTE PROCEDURE actualizar_iglesia();