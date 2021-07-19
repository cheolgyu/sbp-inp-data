--  DROP SCHEMA IF EXISTS "meta" CASCADE;
--  CREATE SCHEMA "meta";

  DROP TABLE IF  EXISTS meta.config CASCADE ;
  CREATE TABLE meta.config (
    id              SERIAL PRIMARY KEY,
    upper_code      VARCHAR(20) NOT NULL,
    upper_name      VARCHAR(20) NOT NULL,
    code            VARCHAR(20) UNIQUE,
    name            VARCHAR(20) UNIQUE
  );
  insert into meta.config (upper_code,upper_name, code,name) VALUES 
    ('code_type','코드종류','stock','종목')
    ,('code_type','코드종류','market','지수')
    ,('price_type','가격종류','close','종가')
    ,('price_type','가격종류','open','시가')
    ,('price_type','가격종류','low','저가')
    ,('price_type','가격종류','high','고가')
    ,('market_type','지수종류','KOSPI','코스피')
    ,('market_type','지수종류','KOSDAQ','코스닥')
    ,('market_type','지수종류','KONEX','코넥스')
    ,('market_type','지수종류','FUT','선물')
    ,('market_type','지수종류','KPI200','코스피200')
  on conflict do nothing;

  DROP TABLE IF  EXISTS meta.code CASCADE;
  CREATE TABLE meta.code (
    id                  SERIAL PRIMARY KEY,
    code                VARCHAR(10) NOT NULL UNIQUE,
    code_type           integer NOT NULL REFERENCES "meta"."config"(id)
  );
  


DROP TABLE IF  EXISTS meta.opening;
CREATE TABLE meta.opening (
  "dt" numeric(8, 0) PRIMARY KEY,
  "yyyy" numeric(4, 0) not null,
  "mm" numeric(2, 0) not null,
  "dd" numeric(2, 0) not null
);

/*
DROP TABLE IF  EXISTS meta.dt_y CASCADE ;
CREATE TABLE meta.dt_y (
  id              numeric(4) PRIMARY KEY
);

DROP TABLE IF  EXISTS meta.dt_m CASCADE ;
CREATE TABLE meta.dt_m (
  id              numeric(2) PRIMARY KEY
);

DROP TABLE IF  EXISTS meta.dt_q4 CASCADE ;
CREATE TABLE meta.dt_q4 (
  id              numeric(1) PRIMARY KEY
);

CREATE or replace FUNCTION meta.insert_dt()
RETURNS void AS $$
DECLARE
   min_y integer := 1956;
   max_y integer := 3000;
   min_m integer := 1;
   max_m integer := 12;
   min_q4 integer := 1;
   max_q4 integer := 4;

   cnt integer := 1;
BEGIN

    cnt := min_y;
    LOOP
        EXIT WHEN cnt = max_y;
        insert into meta.dt_y (id) VALUES (cnt);
        SELECT cnt+1 INTO cnt;
    END LOOP;

    cnt := min_m;
    LOOP
        EXIT WHEN cnt > max_m;
        insert into meta.dt_m (id) VALUES (cnt);
        SELECT cnt+1 INTO cnt;
    END LOOP;

    cnt := min_q4;
    LOOP
        EXIT WHEN cnt > max_q4;
        insert into meta.dt_q4 (id) VALUES (cnt);
        SELECT cnt+1 INTO cnt;
    END LOOP;

END;  $$
LANGUAGE plpgsql;
select * from meta.insert_dt();

*/

