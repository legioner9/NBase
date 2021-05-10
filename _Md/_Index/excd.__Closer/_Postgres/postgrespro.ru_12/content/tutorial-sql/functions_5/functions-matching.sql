select substring('foobar' from '%#"o_b#"%' for '#'); --  oob
select substring('foobar' from '#"o_b#"%' for '#'); --  NULL

select substring('foobar' from 'o.b'); --oob
select substring('foobar' from 'o(.)b'); --  o

select regexp_replace('foobarbaz', 'b..', 'X');
--fooXbaz
select regexp_replace('foobarbaz', 'b..', 'X', 'g');
--fooXX
select regexp_replace('foobarbaz', 'b(..)', 'X\1Y', 'g');
--fooXarYXazY

SELECT regexp_match('foobarbequebaz', 'bar.*que');
--  regexp_match
-- --------------
--  {barbeque}
-- (1 row)

SELECT regexp_match('foobarbequebaz', '(bar)(beque)');
--  regexp_match
-- --------------
--  {bar,beque}
-- (1 row)

SELECT regexp_matches('foobarbequebazilbarfbonk', '(b[^b]+)(b[^b]+)', 'g');
--  regexp_matches
-- ----------------
--  {bar,beque}
--  {bazil,barf}
-- (2 rows)

SELECT rege FROM regexp_split_to_table('the quick brown fox jumps over the lazy dog', '\s+') AS rege;
--   rege
-- -------
--  the
--  quick
--  brown
--  fox
--  jumps
--  over
--  the
--  lazy
--  dog
-- (9 rows)