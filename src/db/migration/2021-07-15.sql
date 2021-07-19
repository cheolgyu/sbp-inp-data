/*
스키마 
    meta 생성
        테이블생성
            meta.code

table추가
    public.tb_code

칼럼수정
    hist.price_stock(code) -> meta.code(id) 참조하기

단타 수정
    기존 table -> view
    바뀜 function
    function으로 바꾸면 2초가 더 느려짐;;;;
    api 에서 조회해서 써야될듯


*/
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
----------- meta
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

-----------------------meta.code
INSERT INTO meta.code (code,code_type)
select code ,t.id
from  company.code,(select id from  meta.config where upper_code='code_type' and code='stock')  t
    order by code asc
on conflict do nothing; 

INSERT INTO meta.code (code,code_type)
select t1.code ,t2.id
from  
	(select code from  meta.config where upper_code='market_type' )  t1
	,(select id from  meta.config where upper_code='code_type' and code='market')  t2
order by code asc;

-----------------------meta.opening
insert into meta.opening (dt,yyyy,mm,dd)
   select p_date
   , substring(p_date::text,1,4)::numeric as yy
   , substring(p_date::text,5,2)::numeric as mm
   , substring(p_date::text,7,2)::numeric as dd
    from  HIST.PRICE_STOCK HPS 
    group by p_date 
    order by p_date asc
on conflict do nothing; 

-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
----------- hist
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

---------------------------------------------- 
---------------------------------------------- 
----------------------------------------------  
-----------------------hist.price
  /*
INSERT 0 1799469
Query returned successfully in 1 min 21 secs.
INSERT 0 1799469
Query returned successfully in 1 min 26 secs.

-- with dt_y, dt_m, dt_q4
INSERT 0 1799469
Query returned successfully in 2 min 36 secs.

  */
--stock
insert into hist.price
    (code_id, dt, dt_y, dt_m, dt_q4, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select dt from meta.opening  where dt = hps.p_date)
    , substring(p_date::text,1,4)::numeric
    , substring(p_date::text,5,2)::numeric
    , (
       select   case  
            when substring(p_date::text,5,2)::numeric  < 4 then 1 
            when substring(p_date::text,5,2)::numeric < 7 then 2  
            when substring(p_date::text,5,2)::numeric < 10 then 3 
            else 4 end as q4
    )
	, op, hp, lp, cp, vol, fb_rate, o2c, l2h
FROM hist.price_stock hps ;
--market
insert into hist.price
    (code_id, dt, dt_y, dt_m, dt_q4, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select dt from meta.opening  where dt = hps.p_date)
    , substring(p_date::text,1,4)::numeric
    , substring(p_date::text,5,2)::numeric
    , (
       select   case  
            when substring(p_date::text,5,2)::numeric  < 4 then 1 
            when substring(p_date::text,5,2)::numeric < 7 then 2  
            when substring(p_date::text,5,2)::numeric < 10 then 3 
            else 4 end as q4
    )
	, op, hp, lp, cp, vol, fb_rate, o2c, l2h
FROM hist.price_market hps ;

---------------------------------------------- 
---------------------------------------------- 
----------------------------------------------  
-----------------------hist.rebound

  /*
INSERT 0 3810292
Query returned successfully in 4 min 48 secs.

-- with dt_y, dt_m, dt_q4
INSERT 0 3810292
Query returned successfully in 7 min 22 secs.

  */
--stock
insert into hist.rebound
    (code_id, price_type, x1, y1, x2,  y2, x_tick, y_minus, y_percent)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select id from meta.config  where upper_code='price_type' and code=hps.g_type )
	, (select dt from meta.opening  where dt = hps.x1)
	, y1
	, (select dt from meta.opening  where dt = hps.x2)
	, y2, x_tick, y_minus, y_percent
FROM hist.bound_stock hps ;

--market
insert into hist.rebound
    (code_id, price_type, x1, y1, x2,   y2, x_tick, y_minus, y_percent)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select id from meta.config  where upper_code='price_type' and code=hps.g_type )
	, (select dt from meta.opening  where dt = hps.x1)
	, y1
	, (select dt from meta.opening  where dt = hps.x2)
	, y2, x_tick, y_minus, y_percent
FROM hist.bound_market hps ;

---------------------------------------------- 
---------------------------------------------- 
----------------------------------------------  
----------------------- hist.vol
INSERT INTO hist.vol(
	code_id, dt_m, vol)
	SELECT HP.CODE_ID,
		HP.DT_M,
		SUM(HP.VOL) AS CND_VAR
	FROM HIST.PRICE HP
	WHERE 1 = 1
	GROUP BY CODE_ID,DT_M	;
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
----------- public.tb_code
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------

--stock
INSERT INTO public.tb_code (code_id, code,code_type,name,market_type,stop)
select 
	mc.id
    , mc.code
    , mc.code_type
	, cc.name
	, (select c.id from meta.config c where c.upper_code='market_type' and c.code = cd.market) as market_type
	,cs.stop
    from  company.code cc 
		left join meta.code mc  on cc.code= mc.code 
		left join company.detail cd  on cc.code= cd.code 
		left join company.state cs  on cc.code= cs.code 
	
    order by cc.code asc
on conflict do nothing; 
--market
INSERT INTO public.tb_code (code_id, code,code_type,name,market_type,stop)
select 
    mc.id
    , mc.code
    , mc.code_type
	, (select name from meta.config c where  c.code = mc.code) as name
	, (select id from meta.config c where  c.code = mc.code) as market_type
	, true
    from  meta.code mc
		where mc.code_type = (select c.id from meta.config c where c.code='market' )
    order by market_type asc
on conflict do nothing; 

