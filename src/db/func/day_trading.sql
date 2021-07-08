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
    SELECT S.CODE,C.NAME,d.market, AVG(hps.L2H) AS AVG_L2H, STDDEV(hps.L2H) AS STD_L2H
    FROM COMPANY.STATE S
    LEFT JOIN COMPANY.DETAIL D ON S.CODE = D.CODE
    LEFT JOIN COMPANY.CODE C ON D.CODE = C.CODE
    LEFT JOIN HIST.PRICE_STOCK hps ON C.CODE = HPS.CODE
    ,(
    SELECT to_char(pi.updated - '3 day'::interval , 'YYYYMMDD')::integer  as start_date
      FROM public.info pi
      WHERE pi.name='updated'
    )TB_T
    WHERE 1=1
    AND S.STOP IS FALSE 
    and hps.vol > 0
    and hps.l2h is not null
    AND HPS.P_DATE >= TB_T.start_date
    GROUP BY  S.CODE,C.CODE,D.CODE,HPS.CODE
  ) T
  ORDER BY T.AVG_L2H DESC,  T.STD_L2H DESC
  ;
  ---------------------------------------------------

  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------



