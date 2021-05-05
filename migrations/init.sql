
DROP TABLE IF EXISTS "meta";


DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "id" serial NOT NULL,
    PRIMARY KEY ("id"),
    "name" text NOT NULL,
    "value" text  NULL,
    "updated_date" timestamp NOT NULL DEFAULT current_timestamp
);

-- 예상 
    -- INSERT INTO "info" ("name", "value", "updated_date")
    -- VALUES ('init_corps', NULL, now())
    -- ,('init_quotes_day', NULL, now()) 
    -- ,('init_quotes_week', NULL, now())
    -- ,('init_quotes_month', NULL, now())
    -- ,('updated_corps', NULL, now())
    -- ,('updated_quotes_day', NULL, now())
    -- ,('updated_quotes_week', NULL, now())
    -- ,('updated_quotes_month', NULL, now())
    -- ,('updated_high_point_day', NULL, now())
    -- ,('updated_high_point_week', NULL, now())
    -- ,('updated_high_point_month', NULL, now())
    -- ;

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
