---------------------------------
--
-- 테이블 생성: 최고가 저장용 일/주/월 
--
---------------------------------
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



---------------------------------
--
-- 기준일 기준 대비,등락률 구하기
--
---------------------------------
DROP FUNCTION IF EXISTS "get_fluctuation_rate";
CREATE FUNCTION get_fluctuation_rate(
     now_price integer ,
     old_price  integer
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
        (now_price - old_price ) as  contrast_price  , 
        round((now_price - old_price )/ CAST ( old_price AS numeric ) * 100, 2 ) as fluctuation_rate ;
END;
$BODY$
LANGUAGE PLPGSQL;

---------------------------------
--
-- step1. loop  특정(일/주/월) 스키마의 시세테이블에서 최고 찾기.
--
---------------------------------
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
        from information_schema.tables where table_schema = tb_schema  ) 
        
        LOOP
           PERFORM  insert_last_high_date(schema_type, v_row.short_code);
         
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
    DROP FUNCTION IF EXISTS "insert_last_high_date"(text,text);
    CREATE OR REPLACE FUNCTION insert_last_high_date(schema_type text, inp_short_code text)
    RETURNS void  AS $$
    DECLARE
    
        point_date INTEGER;
        point_price INTEGER;

        cur_last_date INTEGER;
        cur_last_close_price INTEGER;
        fr_contrast_price INTEGER;
        fr_fluctuation_rate numeric;

        is_exist INTEGER;

        schema_nm TEXT;
        tb_nm TEXT;
    BEGIN

        schema_nm := 'price_'|| schema_type;
        tb_nm := 'tb_'|| inp_short_code;


        select  * into point_date, point_price, cur_last_date , cur_last_close_price , fr_contrast_price, fr_fluctuation_rate  
        from public.comm_high_point(schema_nm, tb_nm);

        EXECUTE format(' SELECT count(*) FROM  "public".high_point_%I tb_hp  WHERE tb_hp."short_code" = %L ', schema_type, inp_short_code ) INTO is_exist;

        IF is_exist != 0 THEN

            EXECUTE format('UPDATE "public".high_point_%I ', schema_type)
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
            EXECUTE format('INSERT INTO "public".high_point_%I ', schema_type) 
                || format(' ("short_code", "high_date", "high_price", "last_date", "last_close_price", "contrast_price", "fluctuation_rate") ' )
                || format('VALUES (%L, %L, %L, %L, %L, %L, %L  )  ',inp_short_code, point_date, point_price, cur_last_date, cur_last_close_price, fr_contrast_price, fr_fluctuation_rate )
            ;

        END IF;

    END;
    $$ LANGUAGE plpgsql
    ;

---------------------------------
--
--  common 최고점 찾기 
--
---------------------------------
DROP FUNCTION IF EXISTS "comm_high_point";
    CREATE OR REPLACE FUNCTION comm_high_point(schema_nm text, tb_nm text)
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

        LOOP
            EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "%s"."%s" order by "Date" desc limit 1 offset %s', schema_nm, tb_nm, i) INTO i_date ,i_price ;        
            EXECUTE format(' SELECT "Date", "ClosePrice"  FROM  "%s"."%s" order by "Date" desc limit 1 offset %s', schema_nm, tb_nm, i+1) INTO j_date ,j_price ;   

            IF  g_way  =   'eq'   THEN
                IF  i_price  >   j_price   THEN
                    g_way := 'down' ;
                END IF;

                IF  i_date  <   j_price   THEN
                    g_way := 'up' ;
                END IF;
            END IF;
            
            EXIT WHEN (g_way = 'down' and  j_price <  i_price ) or   (g_way = 'up' and  j_price >  i_price)  or i > loop_cnt ;
            
            SELECT i+1 INTO i;
        END LOOP;

        sel_point_date = i_date;
        sel_point_price = i_price;

        RETURN query select sel_point_date, sel_point_price, last_date, last_close_price, * from get_fluctuation_rate(last_close_price, sel_point_price);
    END;
    $$ LANGUAGE plpgsql
    ;

