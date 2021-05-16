
-- 사용자용 시세뷰 (일/주/월 )
DROP VIEW IF EXISTS "view_market_day";

CREATE VIEW view_market_day AS
SELECT
    hp.short_code,
    fmt_yyyymmdd(hp.high_date :: integer) as high_date,
    fmt_comma(hp.high_price) as high_price,
    fmt_yyyymmdd(hp.last_date) as last_date,
    fmt_comma(hp.last_close_price) as last_close_price,
    fmt_comma(hp.contrast_price) as contrast_price,
    hp.fluctuation_rate as fluctuation_rate,
    hp.day_count as day_count,
    fmt_timestamp(hp.updated_date) as high_point_updated_date,
    fmt_naver_link_market(hp.short_code) as naver_link
from
    high_point_market_day hp
order by
    fluctuation_rate ASC

;
-- SELECT array_to_json(array_agg(t)) FROM view_price_day t;
-- 사용자용 시세뷰 (일/주/월 )
DROP VIEW IF EXISTS "view_price_day";
CREATE VIEW view_price_day AS
SELECT
    cb.short_code,
    cb.short_name_kr,
    cb.market,
    fmt_yyyymmdd(hp.high_date) as high_date,
    fmt_comma_int(hp.high_price) as high_price,
    fmt_yyyymmdd(hp.last_date) as last_date,
    fmt_comma_int(hp.last_close_price) as last_close_price,
    fmt_comma_int(hp.contrast_price) as contrast_price,
    hp.fluctuation_rate as fluctuation_rate,
    hp.day_count as day_count,
    fmt_timestamp(hp.updated_date) as high_point_updated_date,
    fmt_naver_link(cb.short_code) as naver_link,
cs.*
from
    high_point_day hp
    left join listed_company cb on hp.short_code = cb.short_code
    left join listed_company_state cs on hp.short_code = cs.code
order by
    hp.fluctuation_rate ASC

-- SELECT
--     cb.full_code,
--     cb.short_code,
--     cb.full_name_kr,
--     cb.short_name_kr,
--     cb.full_name_eng,
--     cb.listing_date,
--     cb.market,
--     cb.securities_classification,
--     cb.department,
--     cb.stock_type,
--     case
--         when cb.face_value = '무액면' then 'null'
--         else fmt_comma(cb.face_value :: float)
--     end as face_value,
--     fmt_comma(cb.listed_stocks) as listed_stocks,
--     fmt_timestamp(cb.updated_date) as listed_company_updated_date,
--     fmt_yyyymmdd(hp.high_date) as high_date,
--     fmt_comma(hp.high_price) as high_price,
--     fmt_yyyymmdd(hp.last_date) as last_date,
--     fmt_comma(hp.last_close_price) as last_close_price,
--     fmt_comma(hp.contrast_price) as contrast_price,
--     hp.fluctuation_rate as fluctuation_rate,
--     fmt_timestamp(hp.updated_date) as high_point_updated_date,
--     fmt_naver_link(cb.short_code) as naver_link
-- from
--     high_point_day hp
--     left join listed_company cb on hp.short_code = cb.short_code
-- order by
--     hp.fluctuation_rate ASC;

-- 사용자용 시세뷰 (일/주/월 )
-- DROP VIEW IF EXISTS "view_price_week";

-- CREATE VIEW view_price_week AS
-- SELECT
--     cb.full_code,
--     cb.short_code,
--     cb.full_name_kr,
--     cb.short_name_kr,
--     cb.full_name_eng,
--     cb.listing_date,
--     cb.market,
--     cb.securities_classification,
--     cb.department,
--     cb.stock_type,
--     cb.face_value,
--     cb.listed_stocks,
--     cb.updated_date as listed_company_updated_date,
--     hp.high_date,
--     hp.high_price,
--     hp.last_date,
--     hp.last_close_price,
--     hp.contrast_price,
--     hp.fluctuation_rate,
--     hp.updated_date as high_point_updated_date,
--     concat(
--         'https://finance.naver.com/item/main.nhn?code=',
--         cb.short_code
--     ) as naver_link
-- from
--     high_point_week hp
--     left join listed_company cb on hp.short_code = cb.short_code
-- order by
--     hp.fluctuation_rate ASC;

-- -- 사용자용 시세뷰 (일/주/월 )
-- DROP VIEW IF EXISTS "view_price_month";

-- CREATE VIEW view_price_month AS
-- SELECT
--     cb.full_code,
--     cb.short_code,
--     cb.full_name_kr,
--     cb.short_name_kr,
--     cb.full_name_eng,
--     cb.listing_date,
--     cb.market,
--     cb.securities_classification,
--     cb.department,
--     cb.stock_type,
--     cb.face_value,
--     cb.listed_stocks,
--     cb.updated_date as listed_company_updated_date,
--     hp.high_date,
--     hp.high_price,
--     hp.last_date,
--     hp.last_close_price,
--     hp.contrast_price,
--     hp.fluctuation_rate,
--     hp.updated_date as high_point_updated_date,
--     concat(
--         'https://finance.naver.com/item/main.nhn?code=',
--         cb.short_code
--     ) as naver_link
-- from
--     high_point_month hp
--     left join listed_company cb on hp.short_code = cb.short_code
-- order by
--     hp.fluctuation_rate ASC;    