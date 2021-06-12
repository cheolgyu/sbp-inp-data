--CREATE SCHEMA "price_day";
--CREATE SCHEMA "price_week";
--CREATE SCHEMA "price_month";
--CREATE SCHEMA "market_day";
--drop schema market CASCADE;

CREATE SCHEMA "price";
CREATE SCHEMA "market";

DROP TABLE IF EXISTS "meta";


DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL UNIQUE,
    "value" text  NULL,
    "created_date" timestamp NOT NULL DEFAULT current_timestamp,
    "updated_date" timestamp NOT NULL DEFAULT current_timestamp
);

-- 기본값 
    INSERT INTO "info" ("name", "value", "updated_date")
    VALUES 
    ('init_company', NULL, now())
    ,('init_company_state', NULL, now()) 
    ,('init_price', NULL, now()) 
    ,('init_market', NULL, now()) 
    ,('daily_company', NULL, now())
    ,('daily_company_state', NULL, now())
    ,('daily_market', NULL, now())
    ,('daily_price', NULL, now())
    ,('daily_high_point_market', NULL, now())
    ,('daily_high_point', NULL, now())
    ;

-- 로그 테이블
-- uuid 생성
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
select uuid_generate_v4 ();

DROP TABLE IF EXISTS "log";
CREATE TABLE "log" (
    "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "p_id" uuid NULL,
    "up_id" uuid NULL,
    "t1" text NOT NULL,
    "t2" text NOT NULL,
    "t3" text  NULL,
    "t4" text  NULL,
    "created_date" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);