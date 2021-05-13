CREATE SCHEMA "market_day";

-- 사용자용 시세뷰 (일/주/월 )
DROP VIEW IF EXISTS "view_market_day";

CREATE VIEW view_market_day AS
SELECT
    hp.short_code,
    fmt_yyyymmdd(hp.high_date :: integer) as high_date,
    fmt_comma(hp.high_price) as high_price,
    fmt_yyyymmdd(hp.last_date) as last_date,
    fmt_comma(hp.last_close_price) as last_close_price,
    hp.fluctuation_rate as fluctuation_rate,
    fmt_timestamp(hp.updated_date) as high_point_updated_date,
    fmt_naver_link(hp.short_code) as naver_link
from
    high_point_market_day hp
order by
    fluctuation_rate ASC