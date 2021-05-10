-- U&"d\0061t\+000061" === 'data'
-- U&"d!0061t!+000061" UESCAPE '!'
select 'foo'
'bar'; -- foobar

--SELECT 'foo'      'bar'; -- error

select (3!)-2; -- 4

SELECT 3 OPERATOR(pg_catalog.+) 4; -- 7
