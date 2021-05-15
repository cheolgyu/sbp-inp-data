---------------------------------
--
-- 문법 테스트
--
---------------------------------
DROP FUNCTION IF EXISTS "test"();
CREATE OR REPLACE FUNCTION test()
RETURNS INTEGER  AS $$
DECLARE
 


    schema_type TEXT;
    res integer;

BEGIN
    schema_type := 'point' ;
    EXECUTE format('SELECT count(*)   FROM "public".high_%I  ', schema_type) 
    where 'short_code' != '000500' 
    -- format('where short_code= %L ', '000500') 
    into res ;
    -- SELECT count(*) into res FROM "public".high_point limit 1 ;
     RETURN res;

END;
$$ LANGUAGE plpgsql
;


---------------------------------
--
-- 스키마내에 테이블이름 변경
--
---------------------------------
DROP FUNCTION IF EXISTS "rename_table"(text);
CREATE OR REPLACE FUNCTION rename_table(schema_type text)
RETURNS void  AS $$
DECLARE
    tb_schema text;
    i integer ;
    tb_cnt integer ; 
    v_row record;
    chk  integer ; 
BEGIN
    tb_schema := 'price_' || schema_type;
    i := 0;
    select count(table_name) into tb_cnt from information_schema.tables where table_schema = tb_schema;


    FOR v_row IN (
        select 
            table_name, replace(table_name,'price_','') as short_code
        from information_schema.tables where table_schema = tb_schema 
    )LOOP
        SELECT POSITION('price_' IN v_row.table_name ) INTO chk;

        IF chk  = 1 THEN 
            EXECUTE format(' ALTER TABLE "%s" RENAME TO "%s" ;  ', v_row.table_name, v_row.short_code) ;  
            EXECUTE format(' COMMENT ON TABLE "%s"  IS null ;', v_row.short_code) ;  
        END IF;
        
        SELECT i+1 INTO i;
    END LOOP;

END;
$$ LANGUAGE plpgsql
;
---------------------------------
--
--  price_day 유니크 칼럼으로 바꾸기
--  select my_fun1('day')
--
---------------------------------
DROP FUNCTION IF EXISTS "my_fun1"(text);
CREATE OR REPLACE FUNCTION my_fun1(schema_type text)
RETURNS void  AS $$
DECLARE
    tb_schema text;
    v_row record;
BEGIN
    tb_schema := 'price_' || schema_type;

    FOR v_row IN (  
        select table_name  from information_schema.tables where table_schema = tb_schema
    )LOOP

        EXECUTE format(' ALTER TABLE "%s"."%s" ADD UNIQUE ("Date") ;', tb_schema, v_row.table_name) ;  

    END LOOP;

END;
$$ LANGUAGE plpgsql
;


---------------------------------
--
-- 연습용: 최고가 찾기 
--
---------------------------------
    DROP FUNCTION IF EXISTS "get_last_high_date";
    CREATE OR REPLACE FUNCTION get_last_high_date(short_code text)
    RETURNS table(
        high_date INTEGER,
        high_price INTEGER,
        last_date INTEGER,
        last_close_price INTEGER,
        -- 대비
        contrast_price integer,
        -- 등락률
        fluctuation_rate numeric
        ) AS $$
    DECLARE
    
        i INTEGER;
        i_date INTEGER;
        i_price INTEGER;
        j_date INTEGER;
        j_price INTEGER;

        
        g_way  text;
        g_way_price  INTEGER;
        point_price  INTEGER;
        point_date  INTEGER;

        sel_point_date INTEGER;
        sel_point_price INTEGER;

        last_close_price INTEGER;
    BEGIN
        i := 0;
        EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "price_day".tb_%s order by "Date" desc limit 1 ', short_code) INTO last_date, last_close_price ;  
        EXECUTE format(' SELECT   "ClosePrice"   FROM "price_day".tb_%s order by "Date" desc limit 1 offset 1 ', short_code) INTO g_way_price ;  
        
        IF  last_close_price  >   g_way_price   THEN
            g_way := 'up' ;
        END IF;

        IF  last_close_price  <   g_way_price   THEN
            g_way := 'down' ;
        END IF;

        IF  last_close_price  =   g_way_price   THEN
            g_way := 'eq' ;
        END IF;

        LOOP
            EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "price_day".tb_%s order by "Date" desc limit 1 offset %s', short_code, i) INTO i_date ,i_price ;        
            EXECUTE format(' SELECT "Date", "ClosePrice"  FROM "price_day".tb_%s order by "Date" desc limit 1 offset %s', short_code, i+1) INTO j_date ,j_price ;   

        
            
            EXIT WHEN (g_way = 'down' and  j_price <  i_price ) or   (g_way = 'up' and  j_price >  i_price) ;
            
            SELECT i+1 INTO i;
        END LOOP;

        sel_point_date = i_date;
        sel_point_price = i_price;

        RETURN query select sel_point_date, sel_point_price, last_date, last_close_price, * from comm_fluctuation_rate(last_close_price, sel_point_price);
    END;
    $$ LANGUAGE plpgsql
    ;

