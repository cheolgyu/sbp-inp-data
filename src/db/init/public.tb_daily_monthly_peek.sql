
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
;
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

CREATE OR REPLACE FUNCTION  public.monthly_rules( m integer[] )
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
    select * from public.monthly_rules(array[1,2,3])
        union all
    select * from public.monthly_rules(array[12,1,2])
        union all
    select * from public.monthly_rules(array[11,12,1])
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
CREATE OR REPLACE FUNCTION  public.is_one_peek(inp_code text)
  RETURNS table (
      is_peek boolean,
      peek numeric, 
      peek_list numeric[], 
      peek_percent numeric, 
      list json
  ) AS
  $$
  DECLARE
	  res boolean  := false;
  BEGIN
  -- code  
  ---------------------------------------------------
    return query with t as (
        SELECT CODE,
            MM,
            sum(VOL) C
          FROM hist.PRICE_STOCK
          WHERE 1 = 1
            AND CODE = inp_code
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
    ;
  ---------------------------------------------------
  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------
select * from public.is_one_peek( '066910');

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
CREATE OR REPLACE FUNCTION  public.daily_monthly_peek( )
  RETURNS void AS
  $$
  DECLARE
	  r RECORD;
    r2 RECORD;
    chk boolean;
  BEGIN
  -- code  
  ---------------------------------------------------
  truncate table public.tb_daily_monthly_peek cascade;
  
  FOR r IN  select code  from company.code order by code 
    LOOP
       EXECUTE format( 'select * from public.is_one_peek(%L) ',r.code) into r2 ;
        RAISE NOTICE 'Iterator: %', r2 ;
        if r2.is_peek = true then
           INSERT INTO public.tb_daily_monthly_peek(
            code, peek, peek_list, peek_percent, list)
            VALUES (r.code, r2.peek, r2.peek_list, r2.peek_percent, r2.list);
        end if;
    END LOOP;
  ---------------------------------------------------
  END;
  $$
  LANGUAGE plpgsql;

  ----------------------------------------
select * from public.daily_monthly_peek();


