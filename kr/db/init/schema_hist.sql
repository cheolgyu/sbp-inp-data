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
 CREATE SCHEMA "hist";
-- 선언적 파티션


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



-- 1956년 부터 2021+10 년까지

CREATE OR REPLACE FUNCTION hist.create_table_price()
 RETURNS void
 LANGUAGE plpgsql
AS $function$
declare
	start_y integer  := 1956;
	end_y integer  := 2031;
BEGIN
	 LOOP
        
        EXIT WHEN start_y = end_y;
        
           execute format('CREATE TABLE IF NOT EXISTS hist.price_%s PARTITION OF hist.price FOR VALUES FROM (%s0101) TO (%s1231); ', start_y , start_y , start_y );
		SELECT start_y+1 INTO start_y;
    END LOOP;

END;
$function$
;
select * from hist.create_table_price();


