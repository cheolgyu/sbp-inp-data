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
 perform 1
    from information_schema.tables 
    where table_name = 'tb_daily_day_trading';
    if found then
        execute format('truncate public.tb_daily_day_trading');
    end if;
  insert into public.tb_daily_day_trading (code,name, market, std)
   select code, name , market, std from  public.get_day_trading();

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
CREATE OR REPLACE FUNCTION  public.get_day_trading()
 RETURNS TABLE (code text, name text, market text, std numeric) AS
 $$
BEGIN
 -- code  
RETURN QUERY
 WITH CODE AS
  (SELECT C.CODE,
          C.NAME,
   d.market
   FROM COMPANY.STATE S
   LEFT JOIN COMPANY.DETAIL D ON S.CODE = D.CODE
   LEFT JOIN COMPANY.CODE C ON S.CODE = C.CODE
   WHERE S.STOP IS FALSE --and d.stock_type ='보통주'
 ), tb_info AS
  (
	SELECT to_char(pi.updated - '7 day'::interval , 'YYYYMMDD')::integer  as start_date
   FROM public.info pi
   WHERE pi.name='updated'
 ),
     C_STD AS -- 종목별 표준편차

  (SELECT hps.CODE,
          STDDEV(L2H) AS STD
   FROM HIST.PRICE_STOCK hps, tb_info t
   WHERE 1 = 1
     AND P_DATE > t.start_date
   GROUP BY hps.CODE), ALL_STOCK AS -- 전체종목 표준편차

  (SELECT STDDEV(T.STD) AS STD
   FROM
     (SELECT t.STD
      FROM C_STD t )T)
SELECT C.code,c.name,c.market,
       CS.STD
FROM CODE C
LEFT JOIN C_STD CS ON C.CODE = CS .CODE,
                      ALL_STOCK A_STD
WHERE 1 = 1
  AND CS.STD > A_STD.STD
ORDER BY CS.STD DESC ;


END;
$$
LANGUAGE plpgsql;

----------------------------------------



