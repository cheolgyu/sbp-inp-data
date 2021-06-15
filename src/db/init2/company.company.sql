CREATE SCHEMA "company";

----------------------------------------------
DROP TABLE "code";

CREATE TABLE "code" (
    "code" text PRIMARY KEY,
    "name" text NOT NULL
);

COMMENT ON COLUMN "code"."code" IS '단축코드';

COMMENT ON COLUMN "code"."name" IS '한글 종목약명';

----------------------------------------------
DROP TABLE "detail";

CREATE TABLE "detail" (
    "code" text PRIMARY KEY REFERENCES "code",
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

COMMENT ON COLUMN "detail"."full_code" IS '표준코드';

COMMENT ON COLUMN "detail"."full_name_kr" IS '한글 종목명';

COMMENT ON COLUMN "detail"."full_name_eng" IS '영문 종목명';

COMMENT ON COLUMN "detail"."listing_date" IS '상장일';

COMMENT ON COLUMN "detail"."market" IS '시장구분';

COMMENT ON COLUMN "detail"."securities_classification" IS '증권구분';

COMMENT ON COLUMN "detail"."department" IS '소속부';

COMMENT ON COLUMN "detail"."stock_type" IS '주식종류';

COMMENT ON COLUMN "detail"."face_value" IS '액면가';

COMMENT ON COLUMN "detail"."listed_stocks" IS '상장주식수';

----------------------------------------------
DROP TABLE "state";

CREATE TABLE "state" (
    "code" text PRIMARY KEY REFERENCES "code",
    "stop" boolean NOT NULL,
    "clear" boolean NOT NULL,
    "managed" boolean NOT NULL,
    "ventilation" boolean NOT NULL,
   
    "unfaithful" boolean NOT NULL,
    "low_liquidity" boolean NOT NULL,
    "lack_listed" boolean NOT NULL,
    "overheated" boolean NOT NULL,
    "caution" boolean NOT NULL,
   
    "warning" boolean NOT NULL,
    "risk" boolean NOT NULL
);

COMMENT ON COLUMN "state"."code" IS '종목코드';


COMMENT ON COLUMN "state"."stop" IS '매매거래정지';

COMMENT ON COLUMN "state"."clear" IS '정리매매 종목';

COMMENT ON COLUMN "state"."managed" IS '관리종목';

COMMENT ON COLUMN "state"."ventilation" IS '투자주의환기종목';

COMMENT ON COLUMN "state"."unfaithful" IS '불성실공시';

COMMENT ON COLUMN "state"."low_liquidity" IS '단일가매매대상 초저유동성종목';

COMMENT ON COLUMN "state"."lack_listed" IS '상장주식수 부족 우선주';

COMMENT ON COLUMN "state"."overheated" IS '단기과열종목';

COMMENT ON COLUMN "state"."caution" IS '투자주의종목';

COMMENT ON COLUMN "state"."warning" IS '투자경고종목';

COMMENT ON COLUMN "state"."risk" IS '투자위험종목';