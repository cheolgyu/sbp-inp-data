
CREATE SCHEMA "price_day";
CREATE SCHEMA "price_week";
CREATE SCHEMA "price_month";


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