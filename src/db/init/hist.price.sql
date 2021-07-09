--  DROP SCHEMA IF EXISTS "hist" CASCADE;
--  CREATE SCHEMA "hist";

CREATE TABLE IF NOT EXISTS hist.price_stock (
	"code" text,
	"p_date" numeric(8, 0),
	"op" numeric(20, 0),
	"hp" numeric(20, 0),
	"lp" numeric(20, 0),
	"cp" numeric(20, 0),
	"vol" numeric(20, 0),
	"fb_rate" numeric(20, 2),
	"o2c" numeric(10, 2),
	"l2h" numeric(10, 2),
	PRIMARY KEY(code, p_date)
) ;

CREATE TABLE IF NOT EXISTS hist.price_market (
	"code" text,
	"p_date" numeric(8, 0),
	"yy" numeric(4, 0),
	"mm" numeric(2, 0),
	"dd" numeric(2, 0),
	"op" numeric(20, 2),
	"hp" numeric(20, 2),
	"lp" numeric(20, 2),
	"cp" numeric(20, 2),
	"vol" numeric(20, 0),
	"fb_rate" numeric(20, 2),
	"o2c" numeric(10, 2),
	"l2h" numeric(10, 2),
	PRIMARY KEY(code, p_date)
) ;

ALTER TABLE hist.price_stock ADD COLUMN yy numeric(4,0);
ALTER TABLE hist.price_stock ADD COLUMN mm numeric(2,0);
ALTER TABLE hist.price_stock ADD COLUMN dd numeric(2,0);




-- CREATE TABLE IF NOT EXISTS remove.price_stock (
-- 	"code" text,
-- 	"p_date" numeric(8, 0),
-- 	"yy" numeric(4, 0),
-- 	"mm" numeric(2, 0),
-- 	"dd" numeric(2, 0),
-- 	"op" numeric(20, 2),
-- 	"hp" numeric(20, 2),
-- 	"lp" numeric(20, 2),
-- 	"cp" numeric(20, 2),
-- 	"vol" numeric(20, 0),
-- 	"fb_rate" numeric(20, 2),
-- 	"o2c" numeric(10, 2),
-- 	"l2h" numeric(10, 2),
-- 	PRIMARY KEY(code, yy,mm,dd)
-- ) ;
-- INSERT INTO remove.price_stock(
-- 	code, p_date, yy, mm, dd, op, hp, lp, cp, vol, fb_rate, o2c, l2h)
-- 	select code, p_date, yy, mm, dd, op, hp, lp, cp, vol, fb_rate, o2c, l2h from hist.price_stock;