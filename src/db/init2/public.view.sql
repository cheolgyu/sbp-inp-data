---------------------------------
--
--  bound_point_gtype 별 데이터 조회용
-- + 누적일 추가.
-- SELECT *  from  bound.get('000020',1);
---------------------------------
DROP FUNCTION BOUND .get(text, INTEGER) CASCADE;
CREATE
OR REPLACE FUNCTION BOUND .get(code text, cnt INTEGER) RETURNS TABLE(
    g_type text,
    x1 numeric(8, 0),
    y1 numeric(20, 3),
    x2 numeric(8, 0),
    y2 numeric(20, 3),
    y_minus numeric(20, 0),
    y_percent numeric(20, 3),
    x_tick numeric(8, 0)
) AS $$
DECLARE
    schema_nm text := 'bound';
g_type_split text := '_';
g_low text := 'low';
g_high text := 'high';
g_close text := 'close';
g_open text := 'open';
BEGIN
    RETURN query EXECUTE format(
        '
        (SELECT  ''%s'' as g_type,*  FROM "%s"."%s_%s" order by x1 desc limit %s )
        union all    
         (SELECT  ''%s'' as g_type,*  FROM "%s"."%s_%s" order by x1 desc limit %s)
        union all    
         (SELECT  ''%s'' as g_type,*  FROM "%s"."%s_%s" order by x1 desc limit %s)
        union all    
         (SELECT  ''%s'' as g_type,*  FROM "%s"."%s_%s" order by x1 desc limit %s)
        ',
        g_low,
        schema_nm,
        code,
        g_low,
        cnt,
        g_high,
        schema_nm,
        code,
        g_high,
        cnt,
        g_close,
        schema_nm,
        code,
        g_close,
        cnt,
        g_open,
        schema_nm,
        code,
        g_open,
        cnt
    );
END;
$$ LANGUAGE plpgsql;
---
---
---
---
DROP VIEW IF EXISTS "view_market_day";
CREATE VIEW view_market_day AS
SELECT
FROM
    (
        SELECT
            cc.code,
            'bound.' || cc.code,
            cc.name
        FROM
            company.code cc
    ) cc