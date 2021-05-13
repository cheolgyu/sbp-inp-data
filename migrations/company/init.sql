

DROP TABLE IF EXISTS "listed_company";
DROP SEQUENCE IF EXISTS listed_company_id_seq;

CREATE SEQUENCE listed_company_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1;
CREATE TABLE "public"."listed_company" (
    "id" bigint DEFAULT nextval('listed_company_id_seq') NOT NULL,
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
    CONSTRAINT "listed_company_pkey" PRIMARY KEY ("id")
) WITH (oids = false);


DROP FUNCTION IF EXISTS "insert_listed_company";
CREATE FUNCTION insert_listed_company(full_code varchar(32), in_short_code varchar(32), full_name_kr varchar(32), short_name_kr varchar(32), full_name_eng varchar(32), listing_date varchar(32), market varchar(32), securities_classification varchar(32), department varchar(32), stock_type varchar(32), face_value varchar(32), inp_listed_stocks bigint )
RETURNS integer  AS
$BODY$
DECLARE
    i_counter integer;  
    cur_listed_stocks bigint;
BEGIN
    --  short_code 기준으로 같은것 찾기 
    SELECT id , listed_stocks INTO i_counter, cur_listed_stocks FROM listed_company WHERE short_code = in_short_code ;

    IF i_counter > 0 THEN


        --  short_code 기준으로 같고 상장수가 일치하지 않으면 최신것으로 없데이트 
        IF cur_listed_stocks != inp_listed_stocks THEN
            UPDATE listed_company SET listed_stocks = inp_listed_stocks, updated_date = current_timestamp  WHERE short_code = in_short_code ;
        ELSE
            UPDATE listed_company SET updated_date = current_timestamp WHERE short_code = in_short_code ;
        END IF;

    ELSE 
        INSERT INTO "listed_company" ("full_code", "short_code", "full_name_kr", "short_name_kr", "full_name_eng", "listing_date", "market", "securities_classification", "department", "stock_type", "face_value", "listed_stocks", "created_date", "updated_date")
            VALUES (full_code, in_short_code, full_name_kr, short_name_kr , full_name_eng, listing_date, market, securities_classification, department, stock_type, face_value, inp_listed_stocks,  current_timestamp, current_timestamp);

    END IF;
    RETURN i_counter;
END;
$BODY$
LANGUAGE PLPGSQL;



DROP TABLE IF EXISTS "company_state";
CREATE TABLE "public"."company_state" (
    "code" text NOT NULL UNIQUE,
    "name" text,
    "stop" boolean,
    "clear" boolean,
    "managed" boolean,
    "ventilation" boolean,
    "unfaithful" boolean,
    "low_liquidity" boolean,
    "lack_listed" boolean,
    "overheated" boolean,
    "caution" boolean,
    "warning" boolean,
    "risk" boolean,
    "created_date" timestamp,
    "updated_date" timestamp
) WITH (oids = false);

COMMENT ON TABLE "company_state" IS '종목지정내역';
COMMENT ON COLUMN "company_state"."code" IS '종목코드';
COMMENT ON COLUMN "company_state"."name" IS '종목명';
COMMENT ON COLUMN "company_state"."stop" IS '매매거래정지';
COMMENT ON COLUMN "company_state"."clear" IS '정리매매 종목';
COMMENT ON COLUMN "company_state"."managed" IS '관리종목';
COMMENT ON COLUMN "company_state"."ventilation" IS '투자주의환기종목';
COMMENT ON COLUMN "company_state"."unfaithful" IS '불성실공시';
COMMENT ON COLUMN "company_state"."low_liquidity" IS '단일가매매대상 초저유동성종목';
COMMENT ON COLUMN "company_state"."lack_listed" IS '상장주식수 부족 우선주';
COMMENT ON COLUMN "company_state"."overheated" IS '단기과열종목';
COMMENT ON COLUMN "company_state"."caution" IS '투자주의종목';
COMMENT ON COLUMN "company_state"."warning" IS '투자경고종목';
COMMENT ON COLUMN "company_state"."risk" IS '투자위험종목';

