-- DROP SCHEMA IF EXISTS "company" CASCADE;
-- CREATE SCHEMA "company";
----------------------------------------------
----------------------------------------------
DROP TABLE IF EXISTS "company"."detail";
CREATE TABLE "company"."detail" (
    "code_id" integer REFERENCES "public"."tb_code"(id),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "full_code" text NOT NULL,
    "full_name_kr" text NOT NULL,
    "full_name_eng" text NOT NULL,
    "listing_date" text NOT NULL,
    "market" text NOT NULL,
    "securities_classification" text NOT NULL,
    "department" text NOT NULL,
    "stock_type" text NOT NULL,
    "face_value" text NOT NULL,
    "listed_stocks" text NOT NULL
);
COMMENT ON COLUMN "company"."detail"."full_code" IS '표준코드';
COMMENT ON COLUMN "company"."detail"."full_name_kr" IS '한글 종목명';
COMMENT ON COLUMN "company"."detail"."full_name_eng" IS '영문 종목명';
COMMENT ON COLUMN "company"."detail"."listing_date" IS '상장일';
COMMENT ON COLUMN "company"."detail"."market" IS '시장구분';
COMMENT ON COLUMN "company"."detail"."securities_classification" IS '증권구분';
COMMENT ON COLUMN "company"."detail"."department" IS '소속부';
COMMENT ON COLUMN "company"."detail"."stock_type" IS '주식종류';
COMMENT ON COLUMN "company"."detail"."face_value" IS '액면가';
COMMENT ON COLUMN "company"."detail"."listed_stocks" IS '상장주식수';
----------------------------------------------
DROP TABLE IF EXISTS "company"."state";
CREATE TABLE "company"."state" (
    "code_id" integer REFERENCES "public"."tb_code"(id),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "stop" BOOLEAN NOT NULL,
    "clear" BOOLEAN NOT NULL,
    "managed" BOOLEAN NOT NULL,
    "ventilation" BOOLEAN NOT NULL,
    "unfaithful" BOOLEAN NOT NULL,
    "low_liquidity" BOOLEAN NOT NULL,
    "lack_listed" BOOLEAN NOT NULL,
    "overheated" BOOLEAN NOT NULL,
    "caution" BOOLEAN NOT NULL,
    "warning" BOOLEAN NOT NULL,
    "risk" BOOLEAN NOT NULL
);
COMMENT ON COLUMN "company"."state"."code" IS '종목코드';
COMMENT ON COLUMN "company"."state"."stop" IS '매매거래정지';
COMMENT ON COLUMN "company"."state"."clear" IS '정리매매 종목';
COMMENT ON COLUMN "company"."state"."managed" IS '관리종목';
COMMENT ON COLUMN "company"."state"."ventilation" IS '투자주의환기종목';
COMMENT ON COLUMN "company"."state"."unfaithful" IS '불성실공시';
COMMENT ON COLUMN "company"."state"."low_liquidity" IS '단일가매매대상 초저유동성종목';
COMMENT ON COLUMN "company"."state"."lack_listed" IS '상장주식수 부족 우선주';
COMMENT ON COLUMN "company"."state"."overheated" IS '단기과열종목';
COMMENT ON COLUMN "company"."state"."caution" IS '투자주의종목';
COMMENT ON COLUMN "company"."state"."warning" IS '투자경고종목';
COMMENT ON COLUMN "company"."state"."risk" IS '투자위험종목';