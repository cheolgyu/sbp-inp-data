DROP SCHEMA IF EXISTS "bound" CASCADE;
CREATE SCHEMA "bound";
---------------------------------
--
-- price.tb_<code> 테이블 생성용
-- select  bound.create_table('price','remove');
---------------------------------
CREATE
OR REPLACE FUNCTION bound.create_table(schema_nm text, tb_nm text) RETURNS VOID AS $$
DECLARE
    BEGIN
        EXECUTE format(
            'CREATE TABLE IF NOT EXISTS %I.%I (
				"x1" numeric(8,0),
                PRIMARY KEY ("x1"),
				"y1" numeric(20,3),
				"x2" numeric(8,0),
				"y2" numeric(20,3),
				"y_minus" numeric(20,0),
				"y_percent" numeric(20,3),
                "x_tick" numeric(8,0)
			); ',
            schema_nm,
            tb_nm
        );
END;
$$ LANGUAGE plpgsql;