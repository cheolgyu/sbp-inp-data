/*
    두점으로 y=mx+b 구하기
*/
select y3 ,qu.price  --,ROW_NUMBER() OVER( order BY qu.price  ) AS ROW_NUM
from
(
	select 
		((m*(x2+1))+b)::integer  as y3 
	from (
		select x2  --2-x1 as run, y2-y1 as rise
			,round((y2-y1 )/( x2-x1)::numeric ,2 )as m 
			,round((y2-y1 )/( x2-x1)::numeric ,2 )*x2 *(-1) + y2 as b 
		from  (
				select count(*) as x1 from hist.price_stock where code = '000020'   and p_date <=20210621
			)x1 ,(
				select count(*) as x2 from hist.price_stock where code = '000020'   and p_date <=20210629
			)x2,
			(
				select count(*) as y1 from utils.quote_unit where market = 1   and price <= 14350
			)y1 ,(
				select count(*) as y2 from utils.quote_unit where market = 1   and price <= 15600
			)y2

	)t
)t , utils.quote_unit qu
where qu.market = 1  offset 6115  limit 1
;


