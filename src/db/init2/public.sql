DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL,
    "updated" timestamp,
    CONSTRAINT "info_name" PRIMARY KEY ("name")
) WITH (oids = false);

INSERT INTO "info" ("name", "updated") VALUES
('price_start_date',	NULL);