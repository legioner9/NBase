
select t_key, t_city, t_adr
from (select kt.t_key, kt.t_city, kt.t_adr
      from table_t kt
      where kt.t_key > 3) as tkt;