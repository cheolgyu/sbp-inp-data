---------------------------------
--
--  common 최고점 찾기 
-- + 누적일 추가.
-- select * from comm_high_point('price_day','tb_354230');
---------------------------------
DROP FUNCTION IF EXISTS "comm_high_point";
    CREATE OR REPLACE FUNCTION comm_high_point(schema_nm text, tb_nm text)
    RETURNS table(
        high_date INTEGER,
        high_price numeric,
        last_date INTEGER,
        last_close_price numeric,
        -- 대비
        contrast_price numeric,
        -- 등락률
        fluctuation_rate numeric,
        -- 누적일
        day_count INTEGER
        ) AS $$
    DECLARE
    
        i INTEGER;
        i_date INTEGER;
        i_price numeric;
        j_date INTEGER;
        j_price numeric;
        
        g_way  text;
        g_way_price  numeric;
        g_day_count INTEGER;

        point_price  numeric;
        point_date  INTEGER;

        sel_point_date INTEGER;
        sel_point_price numeric;

        last_close_price numeric;
        
        loop_cnt INTEGER;
    BEGIN
        i := 0;
        EXECUTE format(' SELECT count("Date")  FROM "%s"."%s"', schema_nm, tb_nm) INTO loop_cnt ;  

        EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "%s"."%s" order by "Date" desc limit 1 ',schema_nm, tb_nm) INTO last_date, last_close_price ;  
        EXECUTE format(' SELECT   "ClosePrice"   FROM  "%s"."%s" order by "Date" desc limit 1 offset 1 ', schema_nm, tb_nm) INTO g_way_price ;  
        
        IF  last_close_price  >   g_way_price   THEN
            g_way := 'up' ;
        END IF;

        IF  last_close_price  <   g_way_price   THEN
            g_way := 'down' ;
        END IF;

        IF  last_close_price  =   g_way_price   THEN
            g_way := 'eq' ;
        END IF;

        g_day_count := 0 ;

        LOOP
            EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "%s"."%s" order by "Date" desc limit 1 offset %s', schema_nm, tb_nm, i) INTO i_date ,i_price ;        
            EXECUTE format(' SELECT "Date", "ClosePrice"  FROM  "%s"."%s" order by "Date" desc limit 1 offset %s', schema_nm, tb_nm, i+1) INTO j_date ,j_price ;   

            IF  g_way  =   'eq'   THEN
                IF  i_price  >   j_price   THEN
                    g_way := 'down' ;
                    g_day_count := 0 ;
                END IF;

                IF  i_date  <   j_price   THEN
                    g_way := 'up' ;
                    g_day_count := 0 ;
                END IF;
            END IF;
            

            EXIT WHEN (g_way = 'down' and  j_price <  i_price ) or   (g_way = 'up' and  j_price >  i_price)  or i > loop_cnt ;
            
            SELECT i+1 INTO i;
            SELECT g_day_count+1 INTO g_day_count;
        END LOOP;

        sel_point_date = i_date;
        sel_point_price = i_price;

        RETURN query select sel_point_date, sel_point_price, last_date, last_close_price, *, g_day_count from comm_fluctuation_rate(last_close_price, sel_point_price);
    END;
    $$ LANGUAGE plpgsql
    ;



---------------------------------
--
-- 기준일 기준 대비,등락률 구하기
-- 숫자 기본 numeric 
-- 리턴 후에 integer 로 변환이나 view에서 fmt_comma로 integer로 변환하기
---------------------------------
DROP FUNCTION IF EXISTS "comm_fluctuation_rate";
CREATE FUNCTION comm_fluctuation_rate(
     now_price numeric ,
     old_price  numeric
    )
RETURNS TABLE (
    -- 대비
    contrast_price numeric,
    -- 등락률
    fluctuation_rate numeric
    )  AS
$BODY$
DECLARE

BEGIN
    
    RETURN QUERY select  
        (now_price - old_price ) as  contrast_price  , 
        round((now_price - old_price )/ CAST ( old_price AS numeric ) * 100, 2 ) as fluctuation_rate ;
END;
$BODY$
LANGUAGE PLPGSQL;