

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
    "listed_stocks" bigint,
    "created_date" timestamp,
    "updated_date" timestamp,
    CONSTRAINT "corps_basic_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP FUNCTION IF EXISTS "corps_basic_insert";
CREATE FUNCTION corps_basic_insert(full_code varchar(32), in_short_code varchar(32), full_name_kr varchar(32), short_name_kr varchar(32), full_name_eng varchar(32), listing_date varchar(32), market varchar(32), securities_classification varchar(32), department varchar(32), stock_type varchar(32), face_value varchar(32), inp_listed_stocks bigint )
RETURNS integer  AS
$BODY$
DECLARE
    i_counter integer;  
    cur_listed_stocks bigint;
BEGIN
    --  short_code 기준으로 같은것 찾기 
    SELECT id , listed_stocks INTO i_counter, cur_listed_stocks FROM corps_basic WHERE short_code = in_short_code ;

    IF i_counter > 0 THEN


        --  short_code 기준으로 같고 상장수가 일치하지 않으면 최신것으로 없데이트 
        IF cur_listed_stocks != inp_listed_stocks THEN
            UPDATE corps_basic SET listed_stocks = inp_listed_stocks, updated_date = current_timestamp  WHERE short_code = in_short_code ;
        ELSE
            UPDATE corps_basic SET updated_date = current_timestamp WHERE short_code = in_short_code ;
        END IF;

    ELSE 
        INSERT INTO "corps_basic" ("full_code", "short_code", "full_name_kr", "short_name_kr", "full_name_eng", "listing_date", "market", "securities_classification", "department", "stock_type", "face_value", "listed_stocks", "created_date", "updated_date")
            VALUES (full_code, in_short_code, full_name_kr, short_name_kr , full_name_eng, listing_date, market, securities_classification, department, stock_type, face_value, inp_listed_stocks,  current_timestamp, current_timestamp);

    END IF;
    RETURN i_counter;
END;
$BODY$
LANGUAGE PLPGSQL;

