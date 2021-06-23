DROP SCHEMA IF EXISTS "market" CASCADE;
CREATE SCHEMA "market";
DROP SCHEMA IF EXISTS "price" CASCADE;
CREATE SCHEMA "price";
CREATE TABLE IF NOT EXISTS price.stock (
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

CREATE TABLE IF NOT EXISTS price.market (
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
