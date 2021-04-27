

DROP TABLE IF EXISTS "corps_basic";
DROP SEQUENCE IF EXISTS corps_basic_id_seq;

CREATE SEQUENCE corps_basic_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;
CREATE TABLE "public"."corps_basic" (
    "id" bigint DEFAULT nextval('corps_basic_id_seq') NOT NULL,
    "full_code" text,
    "short_code" text,
    "full_name_kr" text,
    "short_name_kr" text,
    "full_name_eng" text,
    "listing_date" text,
    "market" text,
    "securities_classification" text,
    "department" text,
    "stock_type" text,
    "face_value" text,
    "listed_stocks" integer,
    "created_date" timestamp,
    "updated_date" timestamp,
    CONSTRAINT "corps_basic_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP FUNCTION IF EXISTS "corps_basic_insert";
CREATE FUNCTION corps_basic_insert(full_code varchar(32), short_code varchar(32), full_name_kr varchar(32), short_name_kr varchar(32), full_name_eng varchar(32), listing_date varchar(32), market varchar(32), securities_classification varchar(32), department varchar(32), stock_type varchar(32), face_value varchar(32), listed_stocks varchar(32) )
 RETURNS integer  AS
 $BODY$
DECLARE
    i_counter integer;
BEGIN
 -- code
    SELECT count(*) INTO i_counter FROM corps WHERE code = in_code;

    IF i_counter > 0 THEN
        UPDATE corps SET updated_date = current_timestamp WHERE code = in_code;
    ELSE 
        INSERT INTO "corps_basic" ("full_code", "short_code", "full_name_kr", "short_name_kr", "full_name_eng", "listing_date", "market", "securities_classification", "department", "stock_type", "face_value", "listed_stocks", "created_date", "updated_date")
            VALUES (full_code, short_code, full_name_kr, short_name_kr , full_name_eng, listing_date, market, securities_classification, department,stock_type,face_value, listed_stocks,  current_timestamp, current_timestamp);

    END IF;
    RETURN i_counter;
END;
$BODY$
LANGUAGE PLPGSQL;