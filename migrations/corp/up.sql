
-- name: create-corps-table-id
CREATE SEQUENCE corps_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;

-- name: create-corps-table
CREATE TABLE "public"."corps" (
    "id" bigint DEFAULT nextval('corps_id_seq') NOT NULL,
    "name" text,
    "code" integer,
    "industry" text,
    "desc" text,
    "public_day" text,
    "settlement_month" text,
    "rprsn_name" text,
    "homepage" text,
    "location" text,
    CONSTRAINT "corps_pkey" PRIMARY KEY ("id")
) WITH (oids = false);