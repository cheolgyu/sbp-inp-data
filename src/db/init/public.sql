DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL,
    "updated" timestamp,
    CONSTRAINT "info_name" PRIMARY KEY ("name")
) WITH (oids = false);

INSERT INTO "info" ("name", "updated") VALUES
('updated',	NULL);

DROP TABLE IF  EXISTS public.bound_stock;
CREATE TABLE IF NOT EXISTS public.bound_stock (
    "code" text,
    "cp_x1" numeric(20, 0),
    "cp_y1" numeric(20, 0),
    "cp_x2" numeric(20, 0),
    "cp_y2" numeric(20, 0),
    "cp_x_tick" numeric(20, 0),
    "cp_y_minus" numeric(20, 2),
    "cp_y_percent" numeric(20, 2),

    "op_x1" numeric(20, 0),
    "op_y1" numeric(20, 0),
    "op_x2" numeric(20, 0),
    "op_y2" numeric(20, 0),
    "op_x_tick" numeric(20, 0),
    "op_y_minus" numeric(20, 2),
    "op_y_percent" numeric(20, 2),

    "lp_x1" numeric(20, 0),
    "lp_y1" numeric(20, 0),
    "lp_x2" numeric(20, 0),
    "lp_y2" numeric(20, 0),
    "lp_x_tick" numeric(20, 0),
    "lp_y_minus" numeric(20, 2),
    "lp_y_percent" numeric(20, 2),

    "hp_x1" numeric(20, 0),
    "hp_y1" numeric(20, 0),
    "hp_x2" numeric(20, 0),
    "hp_y2" numeric(20, 0),
    "hp_x_tick" numeric(20, 0),
    "hp_y_minus" numeric(20, 2),
    "hp_y_percent" numeric(20, 2),
    PRIMARY KEY(code)
);

DROP TABLE IF  EXISTS public.bound_market;
CREATE TABLE IF NOT EXISTS public.bound_market (
    "code" text,
    "cp_x1" numeric(20, 0),
    "cp_y1" numeric(20, 2),
    "cp_x2" numeric(20, 0),
    "cp_y2" numeric(20, 2),
    "cp_x_tick" numeric(20, 0),
    "cp_y_minus" numeric(20, 2),
    "cp_y_percent" numeric(20, 2),

    "op_x1" numeric(20, 0),
    "op_y1" numeric(20, 2),
    "op_x2" numeric(20, 0),
    "op_y2" numeric(20, 2),
    "op_x_tick" numeric(20, 0),
    "op_y_minus" numeric(20, 2),
    "op_y_percent" numeric(20, 2),

    "lp_x1" numeric(20, 0),
    "lp_y1" numeric(20, 2),
    "lp_x2" numeric(20, 0),
    "lp_y2" numeric(20, 2),
    "lp_x_tick" numeric(20, 0),
    "lp_y_minus" numeric(20, 2),
    "lp_y_percent" numeric(20, 2),

    "hp_x1" numeric(20, 0),
    "hp_y1" numeric(20, 2),
    "hp_x2" numeric(20, 0),
    "hp_y2" numeric(20, 2),
    "hp_x_tick" numeric(20, 0),
    "hp_y_minus" numeric(20, 2),
    "hp_y_percent" numeric(20, 2),
    PRIMARY KEY(code)
);


DROP TABLE IF  EXISTS public.tb_daily_day_trading;
CREATE TABLE IF NOT EXISTS public.tb_daily_day_trading (
    "code" text,
    "name" text,
    "market" text,
    "avg" numeric,
    "std" numeric,
    PRIMARY KEY(code)
);

DROP TABLE IF  EXISTS public.tb_daily_line;
CREATE TABLE IF NOT EXISTS public.tb_daily_line (
    "code" text,
    "g_type" text,
    "x1" integer,
    "y1" integer,
    "x2" integer,
    "y2" integer,
    "x3" integer,
    "y3" integer,
    PRIMARY KEY(code,g_type)
);


DROP TABLE IF  EXISTS public.tb_daily_monthly_peek;
CREATE TABLE IF NOT EXISTS public.tb_daily_monthly_peek (
   "code" text PRIMARY KEY REFERENCES "company"."code"
   ,"peek" numeric(2, 0) 
   ,"peek_list" numeric(2, 0)[]
   ,"peek_percent" numeric(10, 2) 
   ,"list" json
);