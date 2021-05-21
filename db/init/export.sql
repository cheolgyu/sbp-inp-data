-- select export_for_web();
DROP FUNCTION IF EXISTS "export_for_web"();

CREATE
OR REPLACE FUNCTION export_for_web() RETURNS TABLE (info_json json, data_json json) AS $$
DECLARE
    BEGIN
        RETURN QUERY
        SELECT
            json_build_object(
                'info',
                exp_info.item
            ) AS info_json,
            json_build_object(
                'price_not_stop',
                exp_price_ns.item,
                'price_is_stop',
                exp_price_is.item,
                'market',
                exp_market.item
            ) data_json
        FROM
            (
                SELECT
                    json_object(
                        array_agg(NAME),
                        array_agg(updated_date)
                    ) AS item
                FROM
                    (
                        SELECT
                            NAME,
                            fmt_timestamp(updated_date) :: text AS updated_date
                        FROM
                            "info"
                        WHERE
                            NAME LIKE 'updated_company%'
                            OR NAME LIKE 'updated_price_day%'
                            OR NAME LIKE 'updated_high%'
                            OR NAME LIKE 'updated_market%'
                    ) t
            ) exp_info,
            (
                SELECT
                    array_to_json(array_agg(tt)) AS item
                FROM
                    (
                        SELECT
                            *
                        FROM
                            view_price_day t
                        WHERE
                            stop IS FALSE
                        ORDER BY
                            "fluctuation_rate" DESC
                    ) tt
            ) exp_price_ns,
            (
                SELECT
                    array_to_json(array_agg(t)) AS item
                FROM
                    view_price_day t
                WHERE
                    stop IS TRUE
            ) exp_price_is,
            (
                SELECT
                    array_to_json(array_agg(t)) AS item
                FROM
                    view_market_day t
            ) exp_market;

END;

$$ LANGUAGE plpgsql;