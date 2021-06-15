
CREATE SCHEMA "utils";

CREATE TABLE "log" (
    "id" serial NOT NULL,
    PRIMARY KEY ("id"),
    "state" text NOT NULL,
    "content" text NOT NULL
);