
CREATE SCHEMA "price_day";
CREATE SCHEMA "price_week";
CREATE SCHEMA "price_month";

-- 기준일 기준 대비,등락률 구하기
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

    last_close_price INTEGER;
BEGIN
    i := 0;
    EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "price".tb_%s order by "Date" desc limit 1 ', short_code) INTO last_date, last_close_price ;  

    LOOP
        EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "price".tb_%s order by "Date" desc limit 1 offset %s', short_code, i) INTO i_date ,i_price ;        
        EXECUTE format(' SELECT "Date", "ClosePrice"  FROM "price".tb_%s order by "Date" desc limit 1 offset %s', short_code, i+1) INTO j_date ,j_price ;        
        
        EXIT WHEN j_price <  i_price ;
        
        SELECT i+1 INTO i;
    END LOOP;
    RETURN query select j_date, j_price, last_date, last_close_price, * from fluctuation_rate(last_close_price, j_price);
END;
$$ LANGUAGE plpgsql
;


-- 최고가 저장 테이블 일/주/월
DROP TABLE IF EXISTS "high_point_day";
CREATE TABLE "public"."high_point_day" (
    "short_code" text  NOT NULL UNIQUE,
    "high_date" integer  NULL,
    "high_price" integer  NULL,
    "last_date" integer NOT NULL,
    "last_close_price" integer NOT NULL,
    "contrast_price" integer  NULL,
    "fluctuation_rate" numeric  NULL,
    "created_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
) WITH (oids = false);

DROP TABLE IF EXISTS "high_point_week";
CREATE TABLE "public"."high_point_week" (
    "short_code" text  NOT NULL UNIQUE,
    "high_date" integer  NULL,
    "high_price" integer  NULL,
    "last_date" integer NOT NULL,
    "last_close_price" integer NOT NULL,
    "contrast_price" integer  NULL,
    "fluctuation_rate" numeric  NULL,
    "created_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
) WITH (oids = false);

DROP TABLE IF EXISTS "high_point_month";
CREATE TABLE "public"."high_point_month" (
    "short_code" text  NOT NULL UNIQUE,
    "high_date" integer  NULL,
    "high_price" integer  NULL,
    "last_date" integer NOT NULL,
    "last_close_price" integer NOT NULL,
    "contrast_price" integer  NULL,
    "fluctuation_rate" numeric  NULL,
    "created_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
) WITH (oids = false);


-- 최고가 찾은 후에 저장하기.
DROP FUNCTION IF EXISTS "insert_last_high_date"(text,text);
CREATE OR REPLACE FUNCTION insert_last_high_date(schema_type text, inp_short_code text)
RETURNS void  AS $$
DECLARE
 
    i INTEGER;
    i_date INTEGER;
    i_price INTEGER;
    j_date INTEGER;
    j_price INTEGER;

    cur_last_date INTEGER;
    cur_last_close_price INTEGER;
    fr_contrast_price INTEGER;
    fr_fluctuation_rate numeric;

    loop_cnt INTEGER;
    is_exist INTEGER;
BEGIN
    i := 0;

    EXECUTE format(' SELECT count("Date")  FROM "price_%s"."tb_%s"', schema_type, inp_short_code) INTO loop_cnt ;  
    EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "price_%s"."tb_%s" order by "Date" desc limit 1 ', schema_type, inp_short_code) INTO cur_last_date, cur_last_close_price ;  

    LOOP
        EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "price_%s"."tb_%s" order by "Date" desc limit 1 offset %s', schema_type, inp_short_code, i) INTO i_date ,i_price ;        
        EXECUTE format(' SELECT "Date", "ClosePrice"  FROM "price_%s"."tb_%s" order by "Date" desc limit 1 offset %s', schema_type, inp_short_code, i+1) INTO j_date ,j_price ;        
        
        EXIT WHEN j_price <  i_price or i > loop_cnt ;
        
        SELECT i+1 INTO i;
    END LOOP;

    select  * into  fr_contrast_price, fr_fluctuation_rate  from public.fluctuation_rate(j_price, cur_last_close_price);

    EXECUTE format(' SELECT count(*) FROM  "public".high_point_%I tb_hp  WHERE tb_hp."short_code" = %L ', schema_type, inp_short_code ) INTO is_exist;

    IF is_exist != 0 THEN

        EXECUTE format('UPDATE "public".high_point_%I ', schema_type)
            || format('SET "short_code" = %L, ', inp_short_code)
            || format('"high_date" = %L,' ,   j_date)
            || format('"high_price" = %L, ', j_price)
            || format('"last_date" = %L, ', cur_last_date)
            || format('"last_close_price" = %L, ', cur_last_close_price)
            || format('"contrast_price" = %L, ', fr_contrast_price)
            || format('"fluctuation_rate" =%L , ', fr_fluctuation_rate)
            || format('"updated_date" = %L ', current_timestamp)
            || format(' WHERE "short_code" = %L  ', inp_short_code)
        ;
    ELSE
        EXECUTE format('INSERT INTO "public".high_point_%I ', schema_type) 
            || format(' ("short_code", "high_date", "high_price", "last_date", "last_close_price", "contrast_price", "fluctuation_rate") ' )
            || format('VALUES (%L, %L, %L, %L, %L, %L, %L  )  ',inp_short_code, j_date, j_price, cur_last_date, cur_last_close_price, fr_contrast_price, fr_fluctuation_rate )
        ;

    END IF;

END;
$$ LANGUAGE plpgsql
;


-- 문법 테스트
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


-- 스키마내에 테이블이름 변경
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
        ) 
        
        LOOP
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


-- loop  특정(일/주/월) 스키마의 시세테이블에서 최고 찾기.
DROP FUNCTION IF EXISTS "loop_price_to_high_point"(text);
CREATE OR REPLACE FUNCTION loop_price_to_high_point(schema_type text)
RETURNS void  AS $$
DECLARE
    tb_schema text;
    i integer ;
    tb_cnt integer ; 
    v_row record;
BEGIN
    tb_schema :=      'price_' || schema_type;
    i := 0;

    FOR v_row IN (
        select 
            replace(table_name,'tb_','') as short_code 
        from information_schema.tables where table_schema = tb_schema limit 3 ) 
        
        LOOP
           PERFORM  insert_last_high_date(schema_type, v_row.short_code);
         
            SELECT i+1 INTO i;
	    END LOOP;

END;
$$ LANGUAGE plpgsql
;


-- 사용자용 시세뷰 (일/주/월 )
CREATE VIEW view_price_day AS 
SELECT 
    cb.full_code,
    cb.short_code,
    cb.full_name_kr,
    cb.short_name_kr,
    cb.full_name_eng,
    cb.listing_date,
    cb.market,
    cb.securities_classification,
    cb.department,
    cb.stock_type,
    cb.face_value,
    cb.listed_stocks,
    cb.updated_date as listed_company_updated_date,
    hp.high_date,
    hp.high_price,
    hp.last_date,
    hp.last_close_price,
    hp.contrast_price,
    hp.fluctuation_rate,
    hp.updated_date as high_point_updated_date  

from high_point_day hp  left join listed_company cb on hp.short_code= cb.short_code 
;
-- 사용자용 시세뷰 (일/주/월 )
CREATE VIEW view_price_week AS 
SELECT 
    cb.full_code,
    cb.short_code,
    cb.full_name_kr,
    cb.short_name_kr,
    cb.full_name_eng,
    cb.listing_date,
    cb.market,
    cb.securities_classification,
    cb.department,
    cb.stock_type,
    cb.face_value,
    cb.listed_stocks,
    cb.updated_date as listed_company_updated_date,
    hp.high_date,
    hp.high_price,
    hp.last_date,
    hp.last_close_price,
    hp.contrast_price,
    hp.fluctuation_rate,
    hp.updated_date as high_point_updated_date  

from high_point_week hp  left join listed_company cb on hp.short_code= cb.short_code 
;
-- 사용자용 시세뷰 (일/주/월 )
CREATE VIEW view_price_month AS 
SELECT 
    cb.full_code,
    cb.short_code,
    cb.full_name_kr,
    cb.short_name_kr,
    cb.full_name_eng,
    cb.listing_date,
    cb.market,
    cb.securities_classification,
    cb.department,
    cb.stock_type,
    cb.face_value,
    cb.listed_stocks,
    cb.updated_date as listed_company_updated_date,
    hp.high_date,
    hp.high_price,
    hp.last_date,
    hp.last_close_price,
    hp.contrast_price,
    hp.fluctuation_rate,
    hp.updated_date as high_point_updated_date  

from high_point_month hp  left join listed_company cb on hp.short_code= cb.short_code 
;