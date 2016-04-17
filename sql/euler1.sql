-- Euler1 in SQL

WITH euler1 AS (
    select SUM(lvl) from (
		select LEVEL lvl from dual
		where MOD(LEVEL,3)=0 or MOD(LEVEL,5)=0
		connect by LEVEL < 1000))
        
select * from euler1