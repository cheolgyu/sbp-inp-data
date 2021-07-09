
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
--  hist.price_stock  yy-mm-dd 추가 
update hist.price_stock t
set (yy,mm,dd) = (
	select   substring(p_date::text,1,4)::numeric as yy, substring(p_date::text,5,2)::numeric as mm, substring(p_date::text,7,2)::numeric as dd
	from hist.price_stock where code = t.code and p_date = t.p_date
);

--  remove.price_stock  분기 추가 
-- ALTER TABLE remove.price_stock ADD COLUMN q4 numeric(1,0);

-- update remove.price_stock t
-- set (q4) = (
-- 	select   case  when mm < 4 then 1 when mm < 7 then 2  when mm < 10 then 3 else 4 end as q4
-- 	from remove.price_stock where code = t.code and p_date = t.p_date
-- );


-- 호가단위 테이블
-- market  1 = kospi, 2= 코스닥,코넥스   
CREATE TABLE "utils"."quote_unit" (
    "market" integer NOT NULL,
    "price" integer NOT NULL,
    PRIMARY KEY ( "market","price")
);

