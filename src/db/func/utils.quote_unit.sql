    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    --  호가단위 입력 함수
 
    --  select * from utils.insert_quot_unit_kospi();

    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    CREATE or replace FUNCTION utils.insert_quot_unit_kospi()
    RETURNS void AS $$
    DECLARE
        ok integer := -1;
        i INTEGER:= 0;
        -- 5백만원
        exit_val  INTEGER:= 5999999;
    BEGIN

    i := 1;
        LOOP
            ok  := -1;
            
            EXIT WHEN i = exit_val;
                
                IF i < 1000 THEN
                    ok := 1;
                elsif i >= 1000 and  i < 5000 then
                    ok := 1;
                elsif i >= 5000 and  i < 10000 and  i%5 = 0 then
                    ok := 1;
                elsif i >= 10000 and  i < 50000 and  i%50 = 0  then
                    ok := 1;
                elsif i >= 50000 and  i < 100000 and  i%100 = 0  then
                    ok := 1;          
                elsif i >= 100000 and  i < 500000 and  i%500 = 0  then
                    ok := 1; 
                elsif i >= 500000 and  i%1000 = 0   then
                    ok := 1;  
                END IF;

            IF ok > -1 THEN
                insert into utils.quote_unit (market, price) VALUES (1,i);
            END IF;
            
            SELECT i+1 INTO i;
        END LOOP;
    
    END;  $$
    LANGUAGE plpgsql;
    select * from utils.insert_quot_unit_kospi();


    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    --  호가단위 입력 함수
    -- market  1 = kospi, 2= 코스닥,코넥스
    --  select * from utils.insert_quot_unit_not_kospi();

    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    ----------------------------------------
    CREATE or replace FUNCTION utils.insert_quot_unit_not_kospi()
    RETURNS void AS $$
    DECLARE
        ok integer := -1;
        i INTEGER:= 0;
       
      
        exit_val  INTEGER:= 5999999;
    BEGIN

    i := 1;
        LOOP
            ok  := -1;
            
            EXIT WHEN i = exit_val;
                
                IF i < 1000 THEN
                    ok := 1;
                elsif i >= 1000 and  i < 5000 and  i%5 = 0 then 
                    ok := 1;
                elsif i >= 5000 and  i < 10000 and  i%10 = 0 then
                    ok := 1;
                elsif i >= 10000 and  i < 50000 and  i%50 = 0  then
                    ok := 1;
                elsif i >= 50000 and  i < 100000 and  i%100 = 0  then
                    ok := 1;          
                -- elsif i >= 100000 and  i < 500000 and ( market = 1 and i%500 = 0 ) then
                --     ok := 1; 
                elsif i >= 100000 and  i < 500000 and  i%100 = 0 then
                    ok := 1; 
                -- elsif i >= 500000 and  (market = 1 and i%1000 = 0 )  then
                --     ok := 1;  
                elsif i >= 500000 and  i%100 = 0  then
                    ok := 1;  
                END IF;

            IF ok > -1 THEN
                insert into utils.quote_unit (market, price) VALUES (2,i);
            END IF;
            
            SELECT i+1 INTO i;
        END LOOP;
    
    END;  $$
    LANGUAGE plpgsql;
    select * from utils.insert_quot_unit_not_kospi();