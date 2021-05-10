
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