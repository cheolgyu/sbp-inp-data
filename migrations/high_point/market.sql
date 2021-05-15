---------------------------------
--
-- 테이블 생성: 최고가 저장용 일/주/월 
--
---------------------------------
DROP TABLE IF EXISTS "high_point_market_day";
CREATE TABLE "public"."high_point_market_day" (
    "short_code" text  NOT NULL UNIQUE,
    "high_date" numeric  NULL,
    "high_price" numeric  NULL,
    "last_date" integer NOT NULL,
    "last_close_price" numeric NOT NULL,
    "contrast_price" numeric  NULL,
    "fluctuation_rate" numeric  NULL,
    "created_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
) WITH (oids = false);




---------------------------------
--
-- step1. loop  특정(일/주/월) 스키마의 시세테이블에서 최고 찾기.
--
---------------------------------
DROP FUNCTION IF EXISTS "loop_market_to_high_point"(text);
CREATE OR REPLACE FUNCTION loop_market_to_high_point(schema_type text)
RETURNS void  AS $$
DECLARE
    tb_schema text;
    i integer ;
    tb_cnt integer ; 
    v_row record;
BEGIN
    tb_schema :=      'market_' || schema_type;
    i := 0;

    FOR v_row IN (
        select 
            replace(table_name,'tb_','') as short_code 
        from information_schema.tables where table_schema = tb_schema  ) 
        
        LOOP
           PERFORM  insert_last_high_date_market(schema_type, v_row.short_code);
         
            SELECT i+1 INTO i;
	    END LOOP;

END;
$$ LANGUAGE plpgsql
;

---------------------------------
--
-- step2. 최고가 찾은 후에 저장하기.
--
---------------------------------
DROP FUNCTION IF EXISTS "insert_last_high_date_market"(text,text);
CREATE OR REPLACE FUNCTION insert_last_high_date_market(schema_type text, inp_short_code text)
RETURNS void  AS $$
DECLARE
 

    point_date INTEGER;
    point_price numeric;

    cur_last_date INTEGER;
    cur_last_close_price numeric;
    fr_contrast_price numeric;
    fr_fluctuation_rate numeric;

    is_exist INTEGER;
    schema_nm TEXT;
    tb_nm TEXT;

BEGIN

    schema_nm := 'market_'|| schema_type;
    tb_nm := 'tb_'|| inp_short_code;


    select  * into point_date, point_price, cur_last_date , cur_last_close_price , fr_contrast_price, fr_fluctuation_rate  
    from public.comm_high_point(schema_nm, tb_nm);

    EXECUTE format(' SELECT count(*) FROM  "public".high_point_market_%I tb_hp  WHERE tb_hp."short_code" = %L ', schema_type, inp_short_code ) INTO is_exist;

    IF is_exist != 0 THEN

        EXECUTE format('UPDATE "public".high_point_market_%I ', schema_type)
            || format('SET "short_code" = %L, ', inp_short_code)
            || format('"high_date" = %L,' ,   point_date)
            || format('"high_price" = %L, ', point_price)
            || format('"last_date" = %L, ', cur_last_date)
            || format('"last_close_price" = %L, ', cur_last_close_price)
            || format('"contrast_price" = %L, ', fr_contrast_price)
            || format('"fluctuation_rate" =%L , ', fr_fluctuation_rate)
            || format('"updated_date" = %L ', current_timestamp)
            || format(' WHERE "short_code" = %L  ', inp_short_code)
        ;
    ELSE
        EXECUTE format('INSERT INTO "public".high_point_market_%I ', schema_type) 
            || format(' ("short_code", "high_date", "high_price", "last_date", "last_close_price", "contrast_price", "fluctuation_rate") ' )
            || format('VALUES (%L, %L, %L, %L, %L, %L, %L  )  ',inp_short_code, point_date, point_price, cur_last_date, cur_last_close_price, fr_contrast_price, fr_fluctuation_rate )
        ;

    END IF;

END;
$$ LANGUAGE plpgsql
;