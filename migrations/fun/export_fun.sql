---------------------------------
--
--  콤마달기
--      select fmt_comma(1111111) ; 
---------------------------------
DROP FUNCTION IF EXISTS "fmt_comma";

CREATE FUNCTION fmt_comma(item float) RETURNS text as $ BODY $ DECLARE res text;

BEGIN
select
    to_char(item, 'FM999,999,999,999,999,999') into res;

RETURN res;

END;

$ BODY $ LANGUAGE PLPGSQL;

---------------------------------
--
--  포맷 날짜1
--      select fmt_yyyymmdd(11112233) ; 
---------------------------------
DROP FUNCTION IF EXISTS "fmt_yyyymmdd";

CREATE FUNCTION fmt_yyyymmdd(item integer) RETURNS text as $ BODY $ DECLARE res text;

BEGIN
select
    to_char(item, '9999-99-99') into res;

RETURN res;

END;

$ BODY $ LANGUAGE PLPGSQL;

---------------------------------
--
--  포맷 날짜2
--      SELECT fmt_timestamp("updated_date") FROM "high_point_day" LIMIT 1
---------------------------------
DROP FUNCTION IF EXISTS "fmt_timestamp";

CREATE FUNCTION fmt_timestamp(item timestamp) RETURNS text as $ BODY $ DECLARE res text;

BEGIN
select
    to_char(item, 'YYYY-MM-DD HH24:MI:SS') into res;

RETURN res;

END;

$ BODY $ LANGUAGE PLPGSQL;

---------------------------------
--
--  포맷 퍼센트
--      SELECT fmt_per(10.22)
---------------------------------
DROP FUNCTION IF EXISTS "fmt_per";

CREATE FUNCTION fmt_per(item float) RETURNS text as $ BODY $ DECLARE res text;

BEGIN
select
    concat(item, '%') into res;

RETURN res;

END;

$ BODY $ LANGUAGE PLPGSQL;

---------------------------------
--
--  포맷 네이버링크
--      SELECT fmt_naver_link('aaaaa')
---------------------------------
DROP FUNCTION IF EXISTS "fmt_naver_link";

CREATE FUNCTION fmt_naver_link(item text) RETURNS text as $ BODY $ DECLARE res text;

BEGIN
select
    concat(
        'https://finance.naver.com/item/main.nhn?code=',
        item
    ) into res;

RETURN res;

END;

$ BODY $ LANGUAGE PLPGSQL;