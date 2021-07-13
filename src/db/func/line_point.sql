----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------

--  select 1 from public.update_lines();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE or replace FUNCTION public.update_lines()
 RETURNS void AS $$
declare
    row record;
	count integer;
	x1 integer;
	x2 integer;
	x3 integer;
	y1 integer;
	y2 integer;
	y3 integer;
	y3_price integer;
	arr_g_type  TEXT[]  :=  array['open','close','low','high'];
	g_type TEXT;   
BEGIN
 -- code get
	FOR row in 
		select c.code ,c.name, case when d.market ='KOSPI' THEN 1 ELSE 2 END AS MARKET_NUM ,d.market 
		from company.code c 
			left join company.detail d on c.code= d.code 
			left join company.state s on c.code=s.code 
		where s.stop is false
		order by code asc
	loop
		FOREACH g_type IN ARRAY arr_g_type
		LOOP
			EXECUTE format(' SELECT * FROM  public.get_xy(%L ,%L) ', row.code, g_type ) INTO count, x1 ,y1 ,x2 ,y2;
			IF x1 != null then
				EXECUTE format(' SELECT * FROM  public.get_x3_y3(%L ,%L    ,%L ,%L ,%L ,%L ) ', row.code ,row.MARKET_NUM   ,x1 ,y1 ,x2 ,y2 ) INTO x3 ,y3;
				IF y3 > 0 then
					EXECUTE format(' SELECT * FROM  public.convert_y3(%L ,%L ) ', row.MARKET_NUM ,y3 ) INTO y3_price;
					EXECUTE format(' SELECT * FROM  public.update_tb_daily_line( %L,%L,  %L ,%L ,%L ,%L ,%L ,%L) ', row.code ,g_type ,x1 ,y1 ,x2 ,y2 ,x3 ,y3_price ) ;
				END IF;
			END IF;
		END LOOP;
 
		
		
	end loop;	
  
END;  $$
LANGUAGE plpgsql;
-- select 1 from public.update_lines();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- public.tb_daily_line 업데이트
-- 
--  select 1 from public.update_tb_daily_line();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION  public.update_tb_daily_line(
	inp_code text,  inp_g_type text 
	,x1 integer  ,y1 integer ,x2 integer ,y2  integer,x3 integer ,y3  integer)
 RETURNS void AS
 $$
BEGIN

 -- code  
--------------------
EXECUTE format('INSERT INTO public.tb_daily_line(
	code,  g_type, x1, y1, x2, y2, x3, y3)
	VALUES (%L, %L,
	%L, %L, %L, %L, %L, %L) on CONFLICT ("code","g_type") DO UPDATE  
	SET  x1=%L, y1=%L, x2=%L, y2=%L, x3=%L, y3=%L ;
	 ', inp_code, inp_g_type
	,x1   ,y1  ,x2  ,y2  ,x3  ,y3 
	,x1   ,y1  ,x2  ,y2  ,x3  ,y3  
	) 
; 
--------------------

-------------
END;
$$
LANGUAGE plpgsql;
--select * from public.update_tb_daily_line('000020','ss',1,2,3,4,5,6);



----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- 점 두개 찾기 g_type에 따라 
-- hist.bound의 마지막 2개
--  select public.get_xy();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION  public.get_xy(inp_code text, inp_g_type text )
 RETURNS TABLE (count integer  ,x1 integer  ,y1 integer ,x2 integer ,y2  integer ) AS
 $$
declare
    r record;
	x1 integer;
	x2 integer;
	y1 integer;
	y2 integer;
	count integer := 0;
BEGIN

 -- code  
--------------------
FOR r in 
		SELECT t.X2 AS X, t.Y2 AS Y
			FROM HIST.BOUND_STOCK t
			WHERE t.CODE = inp_code
			AND t.G_TYPE = inp_g_type
			ORDER  BY t.X1 DESC
			limit 2 
LOOP
	--------------------
	IF count = 1 THEN
		x1 := r.x ;
		y1 := r.y ;
	END IF ;

	IF count = 0 THEN
		x2 := r.x ;
		y2 := r.y ;
	END IF ;
	--------------------
	select count+1 into count;
END LOOP;
--------------------

RETURN QUERY select count, x1,y1,x2,y2;
-------------
END;
$$
LANGUAGE plpgsql;
--select * from public.get_xy('000020','low');

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- price to coordinates
--  select public.get_x3_y3();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION  public.get_x3_y3(
  inp_code text ,inp_market integer
  ,inp_x1 integer, inp_y1 integer
  ,inp_x2 integer, inp_y2 integer
  )
 RETURNS TABLE (x3 integer, y3 integer) AS
 $$
declare
	x integer;
	y integer; 
BEGIN
 -- code  
RETURN QUERY
	select (inp_x2+1 )::integer as x3, ((m*(x2+1))+b)::integer  as y3  
	from (		
		select x2
			,round((y2-y1 )/( x2-x1)::numeric ,2 )as m 
			,round((y2-y1 )/( x2-x1)::numeric ,2 )*x2 *(-1) + y2 as b 
		from  (	
				select count(*) as x1 from hist.price_stock where code = inp_code   and p_date <= inp_x1
			)x1 ,(
				select count(*) as x2 from hist.price_stock where code = inp_code  and p_date <= inp_x2
			)x2,
			(
				select count(*) as y1 from utils.quote_unit where market = inp_market   and price <= inp_y1
			)y1 ,(
				select count(*) as y2 from utils.quote_unit where market = inp_market  and price <= inp_y2
			)y2
	)t;

END;
$$
LANGUAGE plpgsql;
-- select * from  public.get_x3_y3('000020',1, 20210621,14350  ,20210629,15600 );
----------------------------------------

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- price to coordinates
--  select public.convert_y3();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION  public.convert_y3( inp_market integer , inp_y integer  )
 RETURNS TABLE ( price integer) AS
 $$
declare
	x integer;
	y integer; 
BEGIN
 -- code  
RETURN QUERY
	select qu.price 
		from  utils.quote_unit qu
		where qu.market = inp_market  offset inp_y  limit 1 ;

END;
$$
LANGUAGE plpgsql;
--select * from  public.convert_y3(1, 20210621  );
----------------------------------------



