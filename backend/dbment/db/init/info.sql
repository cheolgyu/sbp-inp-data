CREATE SCHEMA "price_day";
CREATE SCHEMA "price_week";
CREATE SCHEMA "price_month";
CREATE SCHEMA "market_day";

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
    ,('init_price_day', NULL, now()) 
    ,('init_price_week', NULL, now())
    ,('init_price_month', NULL, now())
    ,('init_market_day', NULL, now()) 
    ,('updated_company', NULL, now())
    ,('updated_company_state', NULL, now())
    ,('updated_market_day', NULL, now())
    ,('updated_price_day', NULL, now())
    ,('updated_price_week', NULL, now())
    ,('updated_price_month', NULL, now())
    ,('updated_high_point_market_day', NULL, now())
    ,('updated_high_point_day', NULL, now())
    ,('updated_high_point_week', NULL, now())
    ,('updated_high_point_month', NULL, now())
    ;

-- 로그 테이블
-- uuid 생성
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
select uuid_generate_v4 ();

DROP TABLE IF EXISTS "log";
CREATE TABLE "log" (
    "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "up_id" uuid NULL,
    "title" text NOT NULL,
    "content" text NOT NULL,
    "created_date" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);