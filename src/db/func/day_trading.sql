/*

파일명: 단타
단타용 종목 찾기 


*/
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------

--  select * from update_day_trading();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE or replace FUNCTION update_day_trading()
 RETURNS void AS $$
BEGIN
 -- code get
 PERFORM 1
    from information_schema.tables 
    where table_name = 'tb_daily_day_trading';
    if found then
        execute format('truncate public.tb_daily_day_trading');
    end if;
  insert into public.tb_daily_day_trading (code,name, market,avg, std)
   select code, name , market, avg, std from  public.get_day_trading();
  
END;  $$
LANGUAGE plpgsql;
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------

--  select public.get_day_trading();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
--  DROP FUNCTION get_day_trading() ;
  CREATE OR REPLACE FUNCTION  public.get_day_trading()
  RETURNS TABLE (code text, name text, market text, avg numeric, std numeric) AS
  $$
  BEGIN
  -- code  
  RETURN QUERY
  ---------------------------------------------------
    SELECT *
  FROM
  (
    SELECT S.CODE,C.NAME,d.market, round(AVG(hps.L2H),2) AS AVG_L2H, round(coalesce(STDDEV(hps.L2H),0),2) AS STD_L2H
    FROM COMPANY.STATE S
    LEFT JOIN COMPANY.DETAIL D ON S.CODE = D.CODE
    LEFT JOIN COMPANY.CODE C ON D.CODE = C.CODE
    LEFT JOIN HIST.PRICE_STOCK hps ON C.CODE = HPS.CODE
    ,(select min(dt) from (select dt from hist.opening_date order by dt desc limit 3 )t )TB_T
    WHERE 1=1
    AND S.STOP IS FALSE 
    and hps.vol > 0
    and hps.l2h is not null
    AND HPS.P_DATE >= TB_T.min
    GROUP BY  S.CODE,C.CODE,D.CODE,HPS.CODE
  ) T
  ORDER BY T.STD_L2H asc,  T.AVG_L2H DESC 
  ;
  ---------------------------------------------------

  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------


----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------


-- 중앙값 구하기.

/*
SELECT median(AA)
FROM (
SELECT 1 AA UNION ALL
SELECT 2 UNION ALL
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5 UNION ALL
SELECT 6 UNION ALL
SELECT 7
) A ;
*/
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION _final_median(numeric[])
   RETURNS numeric AS
$$
   SELECT AVG(val)
   FROM (
     SELECT val
     FROM unnest($1) val
     ORDER BY 1
     LIMIT  2 - MOD(array_upper($1, 1), 2)
     OFFSET CEIL(array_upper($1, 1) / 2.0) - 1
   ) sub;
$$
LANGUAGE 'sql' IMMUTABLE;

CREATE AGGREGATE median(numeric) (
  SFUNC=array_append,
  STYPE=numeric[],
  FINALFUNC=_final_median,
  INITCOND='{}'
);

