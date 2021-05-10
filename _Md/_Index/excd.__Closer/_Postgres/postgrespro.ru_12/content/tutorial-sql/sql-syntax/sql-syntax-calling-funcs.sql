CREATE FUNCTION concat_lower_or_upper(a text, b text,
  uppercase boolean DEFAULT false)
RETURNS text
AS
$$
 SELECT CASE
        WHEN $3 THEN UPPER($1 || ' ' || $2)
        ELSE LOWER($1 || ' ' || $2)
        END;
$$
LANGUAGE SQL IMMUTABLE STRICT;

-- { Position handover in func }
SELECT concat_lower_or_upper('Hello', 'World', true); -- HELLO WORLD

-- { Named handover in func }
SELECT concat_lower_or_upper(a => 'Hello', uppercase => true , b => 'World');

-- { Mix ( position and named handover }
SELECT concat_lower_or_upper(a => 'Hello', b => 'World', uppercase => true);