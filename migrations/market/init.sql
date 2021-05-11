

CREATE SCHEMA "market_day";




-- 사용자용 시세뷰 (일/주/월 )
    DROP VIEW IF EXISTS "view_market_day";
    CREATE VIEW view_market_day AS 
    SELECT 

        hp.short_code,
        hp.high_date,
        hp.high_price,
        hp.last_date,
        hp.last_close_price,
        hp.contrast_price,
        hp.fluctuation_rate,
        hp.updated_date as high_point_updated_date  ,
        concat('https://finance.naver.com/item/main.nhn?code=',hp.short_code) as naver_link  

    from high_point_market_day hp  order by fluctuation_rate ASC