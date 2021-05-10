SELECT x,
  round(x::numeric) AS num_round,
  round(x::double precision) AS dbl_round
FROM generate_series(-3.5, 3.5, 1) as x;


create table people_serial
(
    height_cm numeric,
    height_in numeric ,
    field_serial SERIAL
);