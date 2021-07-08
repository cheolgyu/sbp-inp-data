
DROP SCHEMA IF EXISTS "utils" CASCADE;
CREATE SCHEMA "utils";

CREATE TABLE "utils"."log" (
    "id" serial NOT NULL,
    PRIMARY KEY ("id"),
    "state" text NOT NULL,
    "content" text NOT NULL
);  


--  hist.price_stock  o2c,l2h 추가 
update hist.price_stock t
set (o2c,l2h) = (
	select  round((cp-op)/NULLIF(op,0) *100,2) as o2c, round((hp-lp)/NULLIF(lp,0) *100 ,2) as l2h
	from hist.price_stock where code = t.code and p_date = t.p_date
);

-- 호가단위 테이블
-- market  1 = kospi, 2= 코스닥,코넥스   
CREATE TABLE "utils"."quote_unit" (
    "market" integer NOT NULL,
    "price" integer NOT NULL,
    PRIMARY KEY ( "market","price")
);

