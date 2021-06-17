DROP SCHEMA IF EXISTS "market" CASCADE;
CREATE SCHEMA "market";

DROP SCHEMA IF EXISTS "price" CASCADE;
CREATE SCHEMA "price";
---------------------------------
--
-- price.tb_<code> 테이블 생성용
-- select  price.create_table('price','remove');
---------------------------------
CREATE
OR REPLACE FUNCTION price.create_table(schema_nm text, tb_nm text) RETURNS VOID AS $$
DECLARE
    BEGIN
        EXECUTE format(
            'CREATE TABLE IF NOT EXISTS %I.%I (
				"p_date" numeric(8,0) PRIMARY KEY ,
				"op" numeric(20,3),
				"hp" numeric(20,3),
				"lp" numeric(20,3),
				"cp" numeric(20,3),
				"vol" numeric(20,0),
				"fb_rate" numeric(20,3)
			); ',
            schema_nm,
            tb_nm
        );
END;
$$ LANGUAGE plpgsql;
