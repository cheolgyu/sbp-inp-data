
--  DROP SCHEMA IF EXISTS "hist" CASCADE;
CREATE SCHEMA "hist";

DROP TABLE IF  EXISTS hist.bound ;
CREATE TABLE IF NOT EXISTS hist.bound (
    "code" text,
    "g_type" text,
    "x1" numeric(20, 0),
    "y1" numeric(20, 0),
    "x2" numeric(20, 0),
    "y2" numeric(20, 0),
    "x_tick" numeric(20, 0),
    "y_minus" numeric(20, 0),
    "y_percent" numeric(20, 2),
    PRIMARY KEY(code, g_type, x1)
);
