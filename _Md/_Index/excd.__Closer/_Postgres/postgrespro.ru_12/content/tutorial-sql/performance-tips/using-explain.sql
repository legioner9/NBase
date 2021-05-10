explain
select *
from pg_proc;
--                         QUERY PLAN
-------------------------------------------------------------
--       Seq Scan on pg_proc  (cost=0.00..108.65 rows=2965 width=709)


SELECT relpages, reltuples FROM pg_class WHERE relname = 'pg_proc';

-- relpages 79,reltuples 2965
