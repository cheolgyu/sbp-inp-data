-- 장마감 전 실행.
CREATE OR REPLACE FUNCTION  public.before_closing()
 RETURNS void AS
 $$
BEGIN

 -- code  
--------------------
-- insert  meta.opening
--------------------
insert into meta.opening (dt,yyyy,mm,dd,week,quarter)
  select 
     dt::numeric
   ,extract(YEAR from to_dt)::numeric as yy
   ,extract(MONTH from to_dt)::numeric as mm
   ,extract(DAY from to_dt)::numeric as dd
   ,extract(week from to_dt)::numeric as week
   ,extract(quarter from to_dt)::numeric as quarter

    from (
        select 
        max(dt) as dt,
        to_date(max(dt)::text , 'YYYYMMDD') to_dt
        from  HIST.price  
   ) t 
    on conflict do nothing ; 


END;
$$
LANGUAGE plpgsql;
