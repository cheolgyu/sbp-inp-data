DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL,
    "updated" timestamp,
    CONSTRAINT "info_name" PRIMARY KEY ("name")
) WITH (oids = false);

INSERT INTO "info" ("name", "updated") VALUES
('price_start_date',	NULL);

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
