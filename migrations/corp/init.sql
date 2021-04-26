

DROP TABLE IF EXISTS "corps";
DROP SEQUENCE IF EXISTS corps_id_seq;

CREATE SEQUENCE corps_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;
CREATE TABLE "public"."corps" (
    "id" bigint DEFAULT nextval('corps_id_seq') NOT NULL,
    "name" text,
    "code" integer,
    "industry" text,
    "summary" text,
    "public_day" text,
    "settlement_month" text,
    "rprsn_name" text,
    "homepage" text,
    "location" text,
    "created_date" timestamp,
    "updated_date" timestamp,
    CONSTRAINT "corps_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP FUNCTION IF EXISTS "corp_insert";
CREATE FUNCTION corp_insert(name varchar(32), in_code INTEGER, industry varchar(32), summary varchar(32), public_day varchar(32), settlement_month varchar(32), rprsn_name varchar(32), homepage varchar(32), location varchar(32) )
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
        INSERT INTO "corps" ("name", "code", "industry", "summary", "public_day", "settlement_month", "rprsn_name", "homepage", "location", "created_date", "updated_date")
            VALUES (name, in_code, industry, summary , public_day, settlement_month, rprsn_name, homepage, location, current_timestamp, current_timestamp);

    END IF;
    RETURN i_counter;
END;
$BODY$
LANGUAGE PLPGSQL;