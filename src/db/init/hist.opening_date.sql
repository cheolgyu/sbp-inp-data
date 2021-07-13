

CREATE TABLE IF NOT EXISTS hist.opening_date (
    "dt" numeric(8, 0),
	PRIMARY KEY(dt)
) ;

-- 기존 데이터 적용용 쿼리
insert into hist.opening_date (dt)
   select p_date
    from  HIST.PRICE_STOCK HPS 
    group by p_date 
    order by p_date asc;