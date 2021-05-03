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
    EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "quote".quote_tb_%s order by "Date" desc limit 1 ', short_code) INTO last_date, last_close_price ;  

    LOOP
        EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "quote".quote_tb_%s order by "Date" desc limit 1 offset %s', short_code, i) INTO i_date ,i_price ;        
        EXECUTE format(' SELECT "Date", "ClosePrice"  FROM "quote".quote_tb_%s order by "Date" desc limit 1 offset %s', short_code, i+1) INTO j_date ,j_price ;        
        
        EXIT WHEN j_price <  i_price ;
        
        SELECT i+1 INTO i;
    END LOOP;
    RETURN query select j_date, j_price, last_date, last_close_price, * from fluctuation_rate(last_close_price, j_price);
END;
$$ LANGUAGE plpgsql
;
-- Adminer 4.8.0 PostgreSQL 13.2 (Debian 13.2-1.pgdg100+1) dump
-- 최고가 저장 테이블
DROP TABLE IF EXISTS "high_point";
CREATE TABLE "public"."high_point" (
    "short_code" text  NOT NULL UNIQUE,
    "high_date" integer NOT NULL,
    "high_price" integer NOT NULL,
    "last_date" integer NOT NULL,
    "last_close_price" integer NOT NULL,
    "contrast_price" integer NOT NULL,
    "fluctuation_rate" numeric NOT NULL,
    "created_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updated_date" timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
) WITH (oids = false);


-- 2021-05-03 04:52:56.705916+00
-- 최고가 저장
DROP FUNCTION IF EXISTS "insert_last_high_date";
CREATE OR REPLACE FUNCTION insert_last_high_date(inp_short_code text)
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
BEGIN
    i := 0;
    EXECUTE format(' SELECT  "Date", "ClosePrice"   FROM "quote".quote_tb_%s order by "Date" desc limit 1 ', inp_short_code) INTO cur_last_date, cur_last_close_price ;  

    LOOP
        EXECUTE format(' SELECT "Date", "ClosePrice"   FROM "quote".quote_tb_%s order by "Date" desc limit 1 offset %s', inp_short_code, i) INTO i_date ,i_price ;        
        EXECUTE format(' SELECT "Date", "ClosePrice"  FROM "quote".quote_tb_%s order by "Date" desc limit 1 offset %s', inp_short_code, i+1) INTO j_date ,j_price ;        
        
        EXIT WHEN j_price <  i_price ;
        
        SELECT i+1 INTO i;
    END LOOP;

    select  * into  fr_contrast_price, fr_fluctuation_rate  from fluctuation_rate(j_price, cur_last_close_price);

    IF EXISTS ( SELECT * FROM  "high_point" tb_hp  WHERE tb_hp."short_code" = inp_short_code ) THEN
        UPDATE "high_point"
        SET "short_code" = inp_short_code,
            "high_date" = j_date,
            "high_price" = j_price,
            "last_date" = cur_last_date,
            "last_close_price" = cur_last_close_price,
            "contrast_price" = fr_contrast_price,
            "fluctuation_rate" = fr_fluctuation_rate,
            "updated_date" = current_timestamp 
        WHERE "high_point"."short_code" = inp_short_code 
           
        ;
    ELSE
        INSERT INTO "high_point" ("short_code", "high_date", "high_price", "last_date", "last_close_price", "contrast_price", "fluctuation_rate")
        VALUES (inp_short_code, j_date, j_price, cur_last_date, cur_last_close_price, fr_contrast_price, fr_fluctuation_rate   )
        ;

    END IF;

END;
$$ LANGUAGE plpgsql
;

