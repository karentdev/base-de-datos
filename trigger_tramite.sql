CREATE OR REPLACE FUNCTION actualizar_cliente()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL
  AS
$$
DECLARE
BEGIN

  UPDATE cliente SET cliente_tramite = 'SI' WHERE cliente_id = NEW.cliente_id;
  RETURN NEW;

END;
$$

CREATE OR REPLACE TRIGGER actualizar_cliente
  AFTER INSERT
  ON TRAMITE
  FOR EACH ROW
  EXECUTE PROCEDURE actualizar_cliente();