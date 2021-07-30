
/*
1. 계절별 오르는 종목 찾기
1.1 거래량 기준 봉우리가 하나인 종목 찾기.
*/
/*
1.1

목표: 
    거래량 그래프 모양이 하나의 봉우리로 된 종목 찾기
    max 거래량의 x에 해당하는 월 구하기
    ex: 손오공 4월 : 거래량 최대

    고정1. 
        어떤 데이터든 최고와 최저와 평균과 중앙값이 존재.
    고정2.
        x축은 무조건 12개 12개월임.
    변동1.
        y의 값.== 거래량.

    찾는방법
        1. 종목을 월별 평균,최고,최소,합으로 집계를 낸다.
        2. 종목의 12개월의 평균 거래량을 구한다.
        3. 12개월 평균 거래량 보다 큰 월의 수를 구한다.
        4. 평균거래량보다 큰 월의 수가 5개 이하면 굿이다.
            ex 손오공은 3개나온다.
        5. 3개나온 손오공은 234 월로 특정된다. 
        5-.1 이렇게 x가(월)일정한 순서가 있어야된다.
        
    찾은 다음.
        5. 해당종목을 월별 테이블에 저장한다. 
        5.1. 종목코드만 저장한다.
        5.2. 이유는 최저거래량이 매수시점은 아니기 때문이다.
        
        

    종목별로 순서를 정하기 위해서 .
        전체 대비 상위평균의 퍼센트 구하기?

    보여줄때 원형 차트로 전체 거래량을 보여주는데
    월별 몇퍼센트가 거래됬는지 보여주기. 굿
    + 정확도== 차이 .차이가 큰것 평균대비 차이가 큰것.



손오공
	거래량으로 보면 5.5 일전후로 많이 거래가되었음. 
	그러므로 거래량 기준 분산을 구해보기.

	기준값: 
		평균:
		중앙값:



*/


;
/*
기존 쿼리 전체 데이터: 26초


*/



---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
CREATE OR REPLACE FUNCTION  project.func_monthly()
  RETURNS void AS
  $$
  BEGIN
  -- code  
  ---------------------------------------------------
  truncate table project.tb_monthly_peek cascade;
  
  INSERT INTO project.tb_monthly_peek( code_id, is_peek, peek, peek_range, peek_percent, list)
    SELECT * from project.func_monthly_peek_list();
  ---------------------------------------------------
  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------
select * from project.func_monthly();

---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
CREATE OR REPLACE FUNCTION  project.func_monthly_peek_list()
  RETURNS table (
      code_id integer,
	    is_peek boolean,
      peek numeric, 
      peek_range numeric[], 
      peek_percent numeric, 
      list json
  ) AS
  $$
  DECLARE
	  res boolean  := false;
  BEGIN
  -- code  
  ---------------------------------------------------
    return query 
with tb as (
        select * from hist.vol t 
      ) 
      , tb_code_total as ( select tb.code_id, avg(tb.vol),sum(tb.vol) from tb group by tb.code_id)
      ,tb_month_per as( 
		  select  tb.code_id, tb.dt_m, round(utils.get_percent(tb.vol, tb_code_total.sum),2) 
		  from tb left join  tb_code_total on tb.code_id = tb_code_total.code_id  )
     , tb_month_per_agg as( 
		 select  t.code_id,JSON_AGG(json_build_object(t.dt_m, t.round)) as agg 
		 from tb_month_per t
		 where t.dt_m is not null 
	 	 group by t.code_id )
	 , tb_over_month as ( 
		 select tb.code_id, tb.dt_m 
		 from tb left join  tb_code_total on tb.code_id = tb_code_total.code_id 
		 where tb.vol > tb_code_total.avg )
	  , tb_over_month_agg as ( 
		  select t.code_id, array_agg(t.dt_m::integer) as agg, max(t.dt_m), count(t.dt_m) 
		  from tb_over_month t
		group by t.code_id
	  )
SELECT
	tmp.code_id ,
    project.func_monthly_rules(tomg.agg) AS is_peek,
    tomg.max :: numeric AS peek,
    tomg.agg :: numeric [ ] AS peek_range,
    --tomg.count AS peek_range_cnt,
    tmp.round :: numeric AS peek_percent,
    tmpg.agg AS list
FROM
	tb_month_per tmp 
	left join tb_month_per_agg tmpg on tmp.code_id = tmpg.code_id
	left join tb_over_month_agg tomg on tmp.code_id = tomg.code_id
	
WHERE
    tmp.dt_m = tomg.max
    AND ( tomg.count <= 4 and tomg.count >= 3)
    ;
  ---------------------------------------------------
  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------
select * from project.func_monthly_peek_list();
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------

CREATE OR REPLACE FUNCTION  project.func_monthly_rules( m integer[] )
  RETURNS boolean AS
  $$
  DECLARE
  	i integer := 0;
	len integer;
	res boolean  := false;
  BEGIN
  -- code  
  ---------------------------------------------------
  len := array_length(m, 1);
  if len > 2 and len < 5 then
 	FOR i IN 1..len 	
	LOOP
		 
	 	if i < len then
			if m[i]+1 = m[i+1] then
				res := true;
			ELSIF   m[i] = 12 and m[i+1]= 1 then
				res := true;
			ELSE 
				res := false;
				exit;
			end if;
		end if;
		
	END LOOP;
  end if;
	

  ---------------------------------------------------
	return res;
  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------
select * from (
    select * from project.func_monthly_rules(array[1,2,3])
        union all
    select * from project.func_monthly_rules(array[12,1,2])
        union all
    select * from project.func_monthly_rules(array[11,12,1])
)t;
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
---------------------------------------------------
/*
v.0
with t as (
	SELECT CODE,
			MM,
			AVG(VOL) C
		FROM hist.PRICE_STOCK
		WHERE 1 = 1
			AND CODE = '066910'
		GROUP BY CODE,
			MM
		ORDER BY MM ASC
) 
,a as ( select avg(t.c) from t )
, c as ( select count(*) from t,a where t.c > a.avg )
, m as ( select mm::integer from t,a where t.c > a.avg  order by mm)
, m_agg as ( select array_agg(m.mm) agg from m)
select public.monthly_rules(m_agg.agg)  from m_agg

v.0.1
with t as (
        SELECT CODE,
            MM,
            sum(VOL) C
          FROM hist.PRICE_STOCK
          WHERE 1 = 1
            --AND CODE = '066910'
          GROUP BY CODE,
            MM
          ORDER BY MM ASC
      ) 
      ,a as ( select avg(t.c),sum(t.c) from t )
      ,tp as( select  t.mm, round(public.get_percent(t.c, a.sum),2) from t,a )
      ,tp_agg as( select  JSON_AGG(json_build_object(tp.mm, tp.round)) as agg from tp where mm is not null  )
      , c as ( select count(*) from t,a where t.c > a.avg )
      , m as ( select mm::integer from t,a where t.c > a.avg  order by mm)
      , m_agg as ( select array_agg(m.mm) as agg, max(mm)  from m)
      select 
        public.monthly_rules(m_agg.agg) as is_peek
        ,m_agg.max::numeric as peek
        ,m_agg.agg::numeric[] as peek_list
        ,tp.round::numeric as peek_percent
        ,tp_agg.agg as list
      from m_agg, tp, tp_agg
      where tp.mm = m_agg.max
		


v1.1.2

with tb as (
        SELECT hp.CODE_id,
            mo.MM,
            sum(hp.VOL) as cnd_var -- condition_var
          FROM  hist.price hp left join meta.opening mo on hp.dt = mo.dt
          WHERE 1 = 1
            --AND CODE_id = 2
          GROUP BY CODE_id,MM
      ) 
      , total as ( select avg(cnd_var),sum(cnd_var) from tb group by tb.code_id )
      ,tb_month_per as( select  tb.mm, round(public.get_percent(tb.cnd_var, total.sum),2) from tb, total )
      ,tb_month_per_agg as( select  JSON_AGG(json_build_object(tb_month_per.mm, tb_month_per.round)) as agg from tb_month_per where mm is not null  )
      , tb_over_month as ( select mm from tb, total where tb.cnd_var > total.avg )
      , tb_over_month_agg as ( select array_agg(mm::integer) as agg, max(mm), count(mm)from tb_over_month)
      select 
        public.monthly_rules(tb_over_month_agg.agg) as is_peek
        ,tb_over_month_agg.max::numeric as peek
        ,tb_over_month_agg.agg::numeric[] as peek_range
		,tb_over_month_agg.count as peek_range_cnt
        ,tb_month_per.round::numeric as peek_percent
        ,tb_month_per_agg.agg as list
      from tb_over_month_agg, tb_month_per, tb_month_per_agg
      where tb_month_per.mm = tb_over_month_agg.max
	  and tb_over_month_agg.count <= 4
	  limit 10


v1.2.1 
  + meta.dt_m 참조
  
with tb as (
        SELECT hp.CODE_id,
            hp.dt_m,
            sum(hp.VOL) as cnd_var -- condition_var
          from  meta.opening mo left join hist.price hp  on mo.mm = hp.dt_m
          WHERE 1 = 1 
          AND CODE_id = 2
          GROUP BY CODE_id,dt_m
      ) 
      , total as ( select avg(cnd_var),sum(cnd_var) from )
      ,tb_month_per as( select  tb.dt_m, round(public.get_percent(tb.cnd_var, total.sum),2) from tb, total )
      ,tb_month_per_agg as( select  JSON_AGG(json_build_object(tb_month_per.dt_m, tb_month_per.round)) as agg from tb_month_per where dt_m is not null  )
      , tb_over_month as ( select dt_m from tb, total where tb.cnd_var > total.avg )
      , tb_over_month_agg as ( select array_agg(dt_m::integer) as agg, max(dt_m), count(dt_m) from tb_over_month)
      select 
        public.monthly_rules(tb_over_month_agg.agg) as is_peek
        ,tb_over_month_agg.max::numeric as peek
        ,tb_over_month_agg.agg::numeric[] as peek_range
		    ,tb_over_month_agg.count as peek_range_cnt
        ,tb_month_per.round::numeric as peek_percent
        ,tb_month_per_agg.agg as list
      from tb_over_month_agg, tb_month_per, tb_month_per_agg
      where tb_month_per.dt_m = tb_over_month_agg.max
	  and tb_over_month_agg.count <= 4
	  limit 10

v1.2.2
  + hist.vol 생성

with tb as (
        select * from hist.vol order by code_id, dt_m
      ) 
      , tb_code_total as ( select code_id, avg(vol),sum(vol) from tb group by code_id)
      ,tb_month_per as( 
		  select  tb.code_id, tb.dt_m, round(utils.get_percent(tb.vol, tb_code_total.sum),2) 
		  from tb left join  tb_code_total on tb.code_id = tb_code_total.code_id  )
     , tb_month_per_agg as( 
		 select  code_id,JSON_AGG(json_build_object(tb_month_per.dt_m, tb_month_per.round)) as agg 
		 from tb_month_per 
		 where dt_m is not null 
	 	 group by code_id )
	 , tb_over_month as ( 
		 select tb.code_id, tb.dt_m 
		 from tb left join  tb_code_total on tb.code_id = tb_code_total.code_id 
		 where tb.vol > tb_code_total.avg )
	  , tb_over_month_agg as ( 
		  select code_id, array_agg(dt_m::integer) as agg, max(dt_m), count(dt_m) 
		  from tb_over_month
		group by code_id
	  )
SELECT
	tmp.code_id,
    PUBLIC .monthly_rules(tomg.agg) AS is_peek,
    tomg.max :: numeric AS peek,
    tomg.agg :: numeric [ ] AS peek_range,
    tomg.count AS peek_range_cnt,
    tmp.round :: numeric AS peek_percent,
    tmpg.agg AS list
FROM
	tb_month_per tmp 
	left join tb_month_per_agg tmpg on tmp.code_id = tmpg.code_id
	left join tb_over_month_agg tomg on tmp.code_id = tomg.code_id
	
WHERE
    tmp.dt_m = tomg.max
    AND tomg.count <= 4
LIMIT
    10        
*/
