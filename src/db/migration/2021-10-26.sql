-----------------------meta.opening



// 날리기
DROP TABLE IF  EXISTS meta.opening CASCADE;
CREATE TABLE meta.opening (
  "dt" numeric(8, 0) PRIMARY KEY,
  "yyyy" numeric(4, 0) not null,
  "mm" numeric(2, 0) not null,
  "dd" numeric(2, 0) not null,
  "week" numeric(2, 0) not null,
  "quarter" numeric(1, 0) not null
  
);



// 데이터 추가하기
insert into meta.opening (dt,yyyy,mm,dd,week,quarter)
   select 
     dt::numeric
   ,extract(YEAR from to_dt)::numeric as yy
   ,extract(MONTH from to_dt)::numeric as mm
   ,extract(DAY from to_dt)::numeric as dd
   ,extract(week from to_dt)::numeric as week
   ,extract(quarter from to_dt)::numeric as quarter

    from (
        select 
        dt,
        to_date(dt::text , 'YYYYMMDD') to_dt
        from  HIST.price  
        group by dt 
        order by dt asc
   ) t 
on conflict do nothing; 

// 연결성 재연결
ALTER table hist.price ADD CONSTRAINT  price_dt_fkey  FOREIGN KEY (dt) REFERENCES "meta"."opening"(dt) ;
ALTER table hist.rebound ADD CONSTRAINT  rebound_x1_fkey  FOREIGN KEY (x1) REFERENCES "meta"."opening"(dt) ;
ALTER table hist.rebound ADD CONSTRAINT  rebound_x2_fkey  FOREIGN KEY (x2) REFERENCES "meta"."opening"(dt) ;


-- ALTER TABLE meta.opening ALTER column week set not null;
-- ALTER TABLE meta.opening ALTER column quarter set not null;

