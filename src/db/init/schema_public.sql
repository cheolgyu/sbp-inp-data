
DROP TABLE IF  EXISTS public.tb_code;
CREATE TABLE public.tb_code (
    id                  integer NOT NULL REFERENCES "meta"."code"(id),
    code                VARCHAR(10) NOT NULL REFERENCES "meta"."code"(code),
    code_type           integer NOT NULL  REFERENCES "meta"."config"(id),
    market_type         integer NOT NULL  REFERENCES "meta"."config"(id),
    name                VARCHAR(20) UNIQUE,
    stop                BOOLEAN  
) ;

DROP TABLE IF EXISTS "info";
CREATE TABLE "public"."info" (
    "name" text NOT NULL,
    "updated" timestamp,
    CONSTRAINT "info_name" PRIMARY KEY ("name")
) WITH (oids = false);

INSERT INTO "info" ("name", "updated") VALUES
('updated',	NULL);