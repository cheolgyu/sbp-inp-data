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
	x1 integer;
	x2 integer;
	x3 integer;
	y1 integer;
	y2 integer;
	y3 integer;
	arr_g_type  TEXT[]  :=  array['op','cp','lp','hp'];
BEGIN
 -- code get
	FOR row in 
		select c.code ,c.name, d.market
		from company.code c 
			left join company.detail d on c.code= d.code 
			left join company.state s on c.code=s.code 
		where s.stop is false
		order by code asc
	loop
		FOREACH g_type SLICE 1 IN ARRAY arr_g_type
		LOOP
			EXECUTE format(' SELECT * FROM  public.get_xy(%L ,%L) ', row.code, g_type ) INTO x1 ,y1 ,x2 ,y2;
			EXECUTE format(' SELECT * FROM  public.get_x3_y3(%L ,%L ,%L ,%L ,%L ,%L ,%L) ', row.code ,row.market ,x1 ,y1 ,x2 ,y2 ) INTO x3 ,y3;
			EXECUTE format(' SELECT * FROM  public.update_line_tb(%L ,%L ,%L ,%L ,%L ,%L ,%L ,%L) ', row.code ,row.market ,g_type ,x1 ,y1 ,x2 ,y2 ,x3 ,y3 ) ;
		END LOOP;
 
		
		
	end loop;	
	--  public.get_xy(code text) into x1,y2,x2,y2 
	--  public.get_x3_y3(code text) into x3 ,y3
	--  public.insert_point(code text) into x3 ,y3
  
END;  $$
LANGUAGE plpgsql;
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- 점 두개 찾기 g_type에 따라 
-- 저가 면 아래에서 나머지는 위에서 
--  select public.get_xy();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE OR REPLACE FUNCTION  public.get_xy(code text, g_type text )
 RETURNS TABLE (x1 integer  ,y1 integer ,x2 integer ,y2  integer ) AS
 $$
BEGIN
 -- code  
RETURN QUERY
 SELECT 1;

--------------------
select 
g_type, x2,y2
from hist.bound_stock
where code = '000020' and g_type ='low'
limit 90
--------------------
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
BEGIN
 -- code  
RETURN QUERY
	select (x2+1 )::integer as x3, ((m*(x2+1))+b)::integer  as y3 
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
-- select public.get_x3_y3('000020',1, 20210621,14350  ,20210629,15600 );
----------------------------------------



