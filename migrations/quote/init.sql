-- select * from  fluctuation_rate(4225, 6910);
DROP FUNCTION IF EXISTS "fluctuation_rate";
CREATE FUNCTION fluctuation_rate(
    -- 기준가격
    base_price integer ,
    -- 비교가격
    comparison_price  integer
    )
RETURNS TABLE (
    -- 대비
    contrast_price integer,
    -- 등락률
    fluctuation_rate numeric
    )  AS
$BODY$
DECLARE

BEGIN
    
    RETURN QUERY select  
        (comparison_price - base_price ) as  contrast_price  , 
        round((comparison_price - base_price )/ CAST ( base_price AS numeric ) * 100, 2 ) as fluctuation_rate ;
END;
$BODY$
LANGUAGE PLPGSQL;

-- 최고가 찾기
CREATE OR REPLACE FUNCTION last_high_date()
RETURNS INTEGER AS $$
DECLARE
 
    i INTEGER;
    i_date INTEGER;
    i_price INTEGER;
    j_date INTEGER;
    j_price INTEGER;
BEGIN
    i := 0;

    LOOP
        SELECT "Date", "ClosePrice" INTO i_date ,i_price FROM quote_tb_000020 order by "Date" desc limit 1 offset i ;        
        SELECT "Date", "ClosePrice" INTO j_date ,j_price FROM quote_tb_000020 order by "Date" desc limit 1 offset i+1 ;
        
        EXIT WHEN j_price <  i_price ;
        
        SELECT i+1 INTO i;
    END LOOP;
    RETURN j_date ;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM "quote_tb_000020"
order by "Date" desc 
LIMIT 1
;

SELECT *
FROM "quote_tb_000020"
where 
-- "OpenPrice" >  15350 or 
-- "HighPrice" > 15350 or 
-- "LowPrice" > 15350 or 
"ClosePrice" > 15350

order by "Date" desc 
LIMIT 3

