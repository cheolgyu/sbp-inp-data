


    DROP TABLE IF  EXISTS public.company CASCADE;
    CREATE TABLE public.company (
        code_id             integer UNIQUE REFERENCES "meta"."code"(id) CHECK (code_type > 0),
        code                VARCHAR(10) NOT NULL UNIQUE REFERENCES "meta"."code"(code),
        name                VARCHAR(20) NOT NULL UNIQUE,
        code_type           integer NOT NULL REFERENCES "meta"."config"(id) CHECK (code_type > 0),
        market_type         integer NOT NULL  REFERENCES "meta"."config"(id) CHECK (market_type > 0),
        stop                BOOLEAN  
    );


    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------
    ----------------------------------------------

    DROP TABLE IF EXISTS "public"."company_detail" CASCADE ;
    CREATE TABLE "public"."company_detail" (
        "full_code" text ,  
        "full_name_kr" text ,
        "full_name_eng" text ,
        "listing_date" text ,
        "market" text ,
        "securities_classification" text ,
        "department" text ,
        "stock_type" text ,
        "face_value" text ,
        "listed_stocks" text 
    )  INHERITS (public.company);
    ALTER TABLE public.company_detail ADD CONSTRAINT company_detail_code_key UNIQUE (code_id, code);

    COMMENT ON COLUMN "public"."company_detail"."full_code" IS '표준코드';
    COMMENT ON COLUMN "public"."company_detail"."full_name_kr" IS '한글 종목명';
    COMMENT ON COLUMN "public"."company_detail"."full_name_eng" IS '영문 종목명';
    COMMENT ON COLUMN "public"."company_detail"."listing_date" IS '상장일';
    COMMENT ON COLUMN "public"."company_detail"."market" IS '시장구분';
    COMMENT ON COLUMN "public"."company_detail"."securities_classification" IS '증권구분';
    COMMENT ON COLUMN "public"."company_detail"."department" IS '소속부';
    COMMENT ON COLUMN "public"."company_detail"."stock_type" IS '주식종류';
    COMMENT ON COLUMN "public"."company_detail"."face_value" IS '액면가';
    COMMENT ON COLUMN "public"."company_detail"."listed_stocks" IS '상장주식수';
    ----------------------------------------------
    DROP TABLE IF EXISTS "public"."company_state" CASCADE ;
    CREATE TABLE "public"."company_state" (
        "clear" BOOLEAN ,
        "managed" BOOLEAN ,
        "ventilation" BOOLEAN ,
        "unfaithful" BOOLEAN ,
        "low_liquidity" BOOLEAN ,
        "lack_listed" BOOLEAN ,
        "overheated" BOOLEAN ,
        "caution" BOOLEAN ,
        "warning" BOOLEAN ,
        "risk" BOOLEAN 
    ) INHERITS (public.company);
    ALTER TABLE public.company_detail ADD CONSTRAINT company_state_code_key UNIQUE (code_id, code);

    --COMMENT ON COLUMN "public"."state"."code" IS '종목코드';
    --COMMENT ON COLUMN "public"."state"."stop" IS '매매거래정지';
    COMMENT ON COLUMN "public"."company_state"."clear" IS '정리매매 종목';
    COMMENT ON COLUMN "public"."company_state"."managed" IS '관리종목';
    COMMENT ON COLUMN "public"."company_state"."ventilation" IS '투자주의환기종목';
    COMMENT ON COLUMN "public"."company_state"."unfaithful" IS '불성실공시';
    COMMENT ON COLUMN "public"."company_state"."low_liquidity" IS '단일가매매대상 초저유동성종목';
    COMMENT ON COLUMN "public"."company_state"."lack_listed" IS '상장주식수 부족 우선주';
    COMMENT ON COLUMN "public"."company_state"."overheated" IS '단기과열종목';
    COMMENT ON COLUMN "public"."company_state"."caution" IS '투자주의종목';
    COMMENT ON COLUMN "public"."company_state"."warning" IS '투자경고종목';
    COMMENT ON COLUMN "public"."company_state"."risk" IS '투자위험종목';

----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------
----------------------------------------------

DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL,
    "updated" timestamp,
    CONSTRAINT "info_name" PRIMARY KEY ("name")
) WITH (oids = false);

INSERT INTO "info" ("name", "updated") VALUES
('updated',	NULL);

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------


DROP TABLE IF  EXISTS public.tb_rebound;
CREATE TABLE IF NOT EXISTS public.tb_rebound (
    "code_id" integer PRIMARY KEY REFERENCES "meta"."code"(id),
    "cp_x1" numeric(8, 0),
    "cp_y1" numeric(20, 0),
    "cp_x2" numeric(8, 0),
    "cp_y2" numeric(20, 0),
    "cp_x_tick" numeric(20, 0),
    "cp_y_minus" numeric(20, 2),
    "cp_y_percent" numeric(20, 2),

    "op_x1" numeric(8, 0),
    "op_y1" numeric(20, 0),
    "op_x2" numeric(8, 0),
    "op_y2" numeric(20, 0),
    "op_x_tick" numeric(20, 0),
    "op_y_minus" numeric(20, 2),
    "op_y_percent" numeric(20, 2),

    "lp_x1" numeric(8, 0),
    "lp_y1" numeric(20, 0),
    "lp_x2" numeric(8, 0),
    "lp_y2" numeric(20, 0),
    "lp_x_tick" numeric(20, 0),
    "lp_y_minus" numeric(20, 2),
    "lp_y_percent" numeric(20, 2),

    "hp_x1" numeric(8, 0),
    "hp_y1" numeric(20, 0),
    "hp_x2" numeric(8, 0),
    "hp_y2" numeric(20, 0),
    "hp_x_tick" numeric(20, 0),
    "hp_y_minus" numeric(20, 2),
    "hp_y_percent" numeric(20, 2)
);