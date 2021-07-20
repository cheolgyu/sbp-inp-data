-- 장마감 전 실행.
CREATE OR REPLACE FUNCTION  public.before_closing()
 RETURNS void AS
 $$
BEGIN

 -- code  
--------------------
-- insert  meta.opening
--------------------
insert into meta.opening (dt,yyyy,mm,dd)
select dt
   , substring(dt::text,1,4)::numeric as yy
   , substring(dt::text,5,2)::numeric as mm
   , substring(dt::text,7,2)::numeric as dd
from (
	select max(dt) as dt
    from  HIST.price hp
) t on conflict do nothing ; 


END;
$$
LANGUAGE plpgsql;
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
-- 장마감 후 실행.
CREATE OR REPLACE FUNCTION  public.after_closing()
 RETURNS void AS
 $$
BEGIN

 -- code  

--------------------
-- insert  project.func_lines
--------------------
select 1 from project.func_lines();
--------------------
-- insert  project.func_monthly
--------------------
select 1 from project.func_monthly();
--------------------
--------------------
-- update  public.info
--------------------
UPDATE public.info SET  updated= now() WHERE name = 'updated'
--------------------

END;
$$
LANGUAGE plpgsql;