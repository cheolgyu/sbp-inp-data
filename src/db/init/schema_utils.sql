
DROP SCHEMA IF EXISTS "utils" CASCADE;
CREATE SCHEMA "utils";
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
--  o2c l2c 계산 함수

--  select * from public.get_o2c(op,cp);

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE or replace FUNCTION utils.get_o2c(op numeric, cp numeric)
RETURNS  numeric AS $$
BEGIN 
RETURN  (select round((cp-op)/NULLIF(op,0) *100,2) );
END;  $$
LANGUAGE plpgsql;
--select * from utils.get_o2c(10,20);

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- 전체값에서 일부값은 몇 퍼센트? 계산법 공식
-- 일부값 ÷ 전체값 X 100
--  select * from utils.get_percent(part,total);

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE or replace FUNCTION utils.get_percent(part numeric, total numeric)
RETURNS  numeric AS $$
BEGIN 
RETURN  (select NULLIF(part,0)/NULLIF(total,0) *100 );
END;  $$
LANGUAGE plpgsql;
--select * from public.get_percent(10,20);
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------


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



------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
--  호가단위 입력 함수

--  select * from utils.insert_quot_unit_kospi();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
-- 호가단위 테이블
-- market  1 = kospi, 2= 코스닥,코넥스   
CREATE TABLE "utils"."quote_unit" (
    "market" integer NOT NULL,
    "price" integer NOT NULL,
    PRIMARY KEY ( "market","price")
);


CREATE or replace FUNCTION utils.insert_quot_unit_kospi()
RETURNS void AS $$
DECLARE
    ok integer := -1;
    i INTEGER:= 0;
    -- 5백만원
    exit_val  INTEGER:= 5999999;
BEGIN

i := 1;
    LOOP
        ok  := -1;
        
        EXIT WHEN i = exit_val;
            
            IF i < 1000 THEN
                ok := 1;
            elsif i >= 1000 and  i < 5000 then
                ok := 1;
            elsif i >= 5000 and  i < 10000 and  i%5 = 0 then
                ok := 1;
            elsif i >= 10000 and  i < 50000 and  i%50 = 0  then
                ok := 1;
            elsif i >= 50000 and  i < 100000 and  i%100 = 0  then
                ok := 1;          
            elsif i >= 100000 and  i < 500000 and  i%500 = 0  then
                ok := 1; 
            elsif i >= 500000 and  i%1000 = 0   then
                ok := 1;  
            END IF;

        IF ok > -1 THEN
            insert into utils.quote_unit (market, price) VALUES (1,i);
        END IF;
        
        SELECT i+1 INTO i;
    END LOOP;

END;  $$
LANGUAGE plpgsql;
select * from utils.insert_quot_unit_kospi();


----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
--  호가단위 입력 함수
-- market  1 = kospi, 2= 코스닥,코넥스
--  select * from utils.insert_quot_unit_not_kospi();

----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
----------------------------------------
CREATE or replace FUNCTION utils.insert_quot_unit_not_kospi()
RETURNS void AS $$
DECLARE
    ok integer := -1;
    i INTEGER:= 0;
    
    
    exit_val  INTEGER:= 5999999;
BEGIN

i := 1;
    LOOP
        ok  := -1;
        
        EXIT WHEN i = exit_val;
            
            IF i < 1000 THEN
                ok := 1;
            elsif i >= 1000 and  i < 5000 and  i%5 = 0 then 
                ok := 1;
            elsif i >= 5000 and  i < 10000 and  i%10 = 0 then
                ok := 1;
            elsif i >= 10000 and  i < 50000 and  i%50 = 0  then
                ok := 1;
            elsif i >= 50000 and  i < 100000 and  i%100 = 0  then
                ok := 1;          
            -- elsif i >= 100000 and  i < 500000 and ( market = 1 and i%500 = 0 ) then
            --     ok := 1; 
            elsif i >= 100000 and  i < 500000 and  i%100 = 0 then
                ok := 1; 
            -- elsif i >= 500000 and  (market = 1 and i%1000 = 0 )  then
            --     ok := 1;  
            elsif i >= 500000 and  i%100 = 0  then
                ok := 1;  
            END IF;

        IF ok > -1 THEN
            insert into utils.quote_unit (market, price) VALUES (2,i);
        END IF;
        
        SELECT i+1 INTO i;
    END LOOP;

END;  $$
LANGUAGE plpgsql;
select * from utils.insert_quot_unit_not_kospi();
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------