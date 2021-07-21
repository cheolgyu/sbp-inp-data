------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--  CREATE SCHEMA "hist";
-- 선언적 파티션
-- https://uiandwe.tistory.com/1318
-- 조회 속도가 상상을 초월하네. 
-- 트리거 파티션 2~3초 인데 이건 300msc	
-- 선언적 파티션으로 hist.bound도 변경하기.


DROP TABLE IF  EXISTS hist.price CASCADE ;
CREATE TABLE IF NOT EXISTS hist.price  (
	"code_id" integer not null REFERENCES "meta"."code"(id),
	"dt" numeric(8, 0) not null REFERENCES "meta"."opening"(dt),
	"dt_y" numeric(4, 0) not null ,
	"dt_m" numeric(2, 0) not null ,
	"dt_q4" numeric(1, 0) not null ,
    "op" numeric(20, 2),
	"hp" numeric(20, 2),
	"lp" numeric(20, 2),
	"cp" numeric(20, 2),
	"vol" numeric(20, 0),
    "fb_rate" numeric(20, 2),
	"o2c" numeric(10, 2),
	"l2h" numeric(10, 2)
) PARTITION  BY  RANGE (dt); 
CREATE INDEX ON hist.price (code_id);
CREATE INDEX ON hist.price (dt);
ALTER TABLE hist.price ADD CONSTRAINT hist_price_code_id_dt_key UNIQUE (code_id, dt);




CREATE TABLE IF NOT EXISTS hist.price_2021 PARTITION OF hist.price FOR VALUES FROM (20210101) TO (20211231);
CREATE TABLE IF NOT EXISTS hist.price_2020 PARTITION OF hist.price FOR VALUES FROM (20200101) TO (20201231);
CREATE TABLE IF NOT EXISTS hist.price_2019 PARTITION OF hist.price FOR VALUES FROM (20190101) TO (20191231);
CREATE TABLE IF NOT EXISTS hist.price_2018 PARTITION OF hist.price FOR VALUES FROM (20180101) TO (20181231);





DROP TABLE IF  EXISTS hist.rebound  CASCADE;
CREATE TABLE IF NOT EXISTS hist.rebound  (
	"code_id" integer not null REFERENCES "meta"."code"(id),
	"price_type" integer not null REFERENCES "meta"."config"(id),
   	"x1" numeric(8, 0) not null REFERENCES "meta"."opening"(dt),
    "y1" numeric(20, 2),
    "x2" numeric(8, 0) not null REFERENCES "meta"."opening"(dt),
    "y2" numeric(20, 2),
    "x_tick" numeric(20, 0),
    "y_minus" numeric(20, 2),
    "y_percent" numeric(20, 2)
) PARTITION  BY  RANGE (x2); 
CREATE INDEX ON hist.rebound (code_id);
ALTER TABLE hist.rebound ADD CONSTRAINT hist_rebound_code_id_price_type_x1_key PRIMARY KEY (code_id, price_type, x2);


CREATE TABLE IF NOT EXISTS hist.rebound_2021 PARTITION OF hist.rebound FOR VALUES FROM (20210101) TO (20211231);
CREATE TABLE IF NOT EXISTS hist.rebound_2020 PARTITION OF hist.rebound FOR VALUES FROM (20200101) TO (20201231);
CREATE TABLE IF NOT EXISTS hist.rebound_2019 PARTITION OF hist.rebound FOR VALUES FROM (20190101) TO (20191231);
CREATE TABLE IF NOT EXISTS hist.rebound_2018 PARTITION OF hist.rebound FOR VALUES FROM (20180101) TO (20181231);
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
DROP TABLE IF  EXISTS hist.vol CASCADE ;
CREATE TABLE IF NOT EXISTS hist.vol  (
	"code_id" integer not null REFERENCES "meta"."code"(id),
	"dt_m" numeric(2, 0) not null ,
	"vol" numeric(20, 0)	
);
CREATE INDEX ON hist.vol (code_id);
CREATE INDEX ON hist.vol (dt_m);
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
------------------------------------------------------------------------------
-- 트리거  파티션
--  DROP SCHEMA IF EXISTS "remove" CASCADE;
--  CREATE SCHEMA "remove";

-- DROP TABLE IF  EXISTS remove.price_stock ;
-- CREATE TABLE IF NOT EXISTS remove.price_stock (
-- 	"code_id" integer REFERENCES "meta"."code"(id),
-- 	"dt" numeric(8, 0) REFERENCES "meta"."opening"(dt),
--     "op" numeric(20, 2),
-- 	"hp" numeric(20, 2),
-- 	"lp" numeric(20, 2),
-- 	"cp" numeric(20, 2),
-- 	"vol" numeric(20, 0),
--     "fb_rate" numeric(20, 2),
-- 	"o2c" numeric(10, 2),
-- 	"l2h" numeric(10, 2),
-- 	PRIMARY KEY(code_id, dt)
-- ) ;

-- -- https://postgresql.kr/blog/postgresql_partition_table.html
-- -- https://uiandwe.tistory.com/1318

-- DROP TABLE IF  EXISTS remove.price ;
-- CREATE TABLE IF NOT EXISTS remove.price  (
-- 	"code_id" integer REFERENCES "meta"."code"(id),
-- 	"dt" numeric(8, 0) REFERENCES "meta"."opening"(dt),
--     "op" numeric(20, 2),
-- 	"hp" numeric(20, 2),
-- 	"lp" numeric(20, 2),
-- 	"cp" numeric(20, 2),
-- 	"vol" numeric(20, 0),
--     "fb_rate" numeric(20, 2),
-- 	"o2c" numeric(10, 2),
-- 	"l2h" numeric(10, 2),
-- 	PRIMARY KEY(code_id, dt)
-- ) ;



-- CREATE OR REPLACE FUNCTION remove.price_insert_dynamic()
--  RETURNS trigger
--  LANGUAGE plpgsql
-- AS $function$
-- declare
-- 	yyyy TEXT;	
-- 	cnt integer;
-- BEGIN
--   execute format('select substring($1.dt::TEXT,0,5)  ') using new INTO yyyy;
--   execute format('CREATE TABLE IF NOT EXISTS remove.price_%s () INHERITS (remove.price); ', yyyy );
  
--   execute format('SELECT COUNT(CODE_ID) FROM REMOVE.price_%s WHERE CODE_ID = %s AND DT =%s;',yyyy, new.code_id,new.dt) using new INTO cnt ;
--   IF cnt = 0 then
-- 	execute format('insert into remove.price_%s select $1.*',yyyy) using new;
--   ELSE
-- 	execute format('update  remove.price_%s   
-- 	SET  op=$1.op, hp=$1.hp, lp=$1.lp, cp=$1.cp, vol=$1.vol, fb_rate=$1.fb_rate, o2c=$1.o2c, l2h=$1.l2h 
-- 	where CODE_ID = %s AND DT =%s
-- 	',yyyy, new.code_id,new.dt) using new;
--   end if;


--   RETURN null;
-- END;
-- $function$
-- ;

-- CREATE TRIGGER tr_price_insert
--   BEFORE INSERT ON remove.price 
--   FOR EACH ROW EXECUTE PROCEDURE remove.price_insert_dynamic();
/*
INSERT INTO remove.price(
	code_id, dt, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
	VALUES (1, 20201212, 12, 13, 14, 15, 16, 17, 18, 19);

-- 7분 걸림.
-- price
insert into remove.price
    (code_id, dt, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select dt from meta.opening  where dt = hps.p_date)
	, op, hp, lp, cp, vol, fb_rate, o2c, l2h
FROM hist.price_stock hps ;

-- market
insert into remove.price
    (code_id, dt, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
SELECT 
	(select id from meta.code mc where code = hps.code)
	, (select dt from meta.opening  where dt = hps.p_date)
	, op, hp, lp, cp, vol, fb_rate, o2c, l2h
FROM hist.price_market hps ;

SELECT tableoid::regclass,code_id, dt, op, hp, lp, cp, vol, fb_rate, o2c, l2h
	FROM remove.price
	limit 10;
*/	



