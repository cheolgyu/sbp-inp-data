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
	PRIMARY KEY(code, p_date)
) ;

CREATE TABLE IF NOT EXISTS hist.price_market (
	"code" text,
	"p_date" numeric(8, 0),
	"op" numeric(20, 2),
	"hp" numeric(20, 2),
	"lp" numeric(20, 2),
	"cp" numeric(20, 2),
	"vol" numeric(20, 0),
	"fb_rate" numeric(20, 2),
	PRIMARY KEY(code, p_date)
) ;
