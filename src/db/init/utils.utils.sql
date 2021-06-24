
DROP SCHEMA IF EXISTS "utils" CASCADE;
CREATE SCHEMA "utils";

CREATE TABLE "utils"."log" (
    "id" serial NOT NULL,
    PRIMARY KEY ("id"),
    "state" text NOT NULL,
    "content" text NOT NULL
);