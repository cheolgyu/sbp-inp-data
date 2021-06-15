
---------------------------------
--
-- company.code 저장용
-- select company.insert_company_code(ARRAY[ARRAY['가','가가'] ,ARRAY['나','나가'] ,ARRAY['다','다가']]);
---------------------------------
CREATE
OR REPLACE FUNCTION insert_company_code( arr text [ ][]) RETURNS INTEGER AS $$
DECLARE
    res INTEGER;
    q text;
    i integer;
    
    max_i integer;
    min_i integer;
    
BEGIN
    max_i := array_upper(arr, 1);
    min_i := array_lower(arr, 1);
    
    FOR i in  min_i .. max_i LOOP
        q := concat(q, format(' INSERT INTO  company.code ("code", "name")  VALUES '));
        q := concat(q, format(' (   %L ,%L  ) ' , arr[i][1], arr[i][2])) ;
        q := concat(q,format(' ON CONFLICT ("code") DO UPDATE SET ')) ;
        q := concat(q,format(' "name"= %L ', arr[i][2])) ;
        q := concat(q,format(' ;  ')) ;

    END loop;
    EXECUTE q;
EXECUTE format('select 1  ') INTO res;
RETURN res;

END;

$$ LANGUAGE plpgsql;
-- select insert_company_code(ARRAY[ARRAY['가','가가1'] ,ARRAY['나','나가1'] ,ARRAY['다','다가1']]);

---------------------------------
--
-- company.detail 저장용
-- select insert_company_detail(ARRAY[ARRAY['098120','2','3','4','5','6','7','8','9','10','11'] ,ARRAY['131100','2','3','4','5','6','7','8','9','10','11'] ,ARRAY['009520','2','3','4','5','6','7','8','9','10','11']]);
---------------------------------
CREATE
OR REPLACE FUNCTION insert_company_detail( arr text [ ][]) RETURNS INTEGER AS $$
DECLARE
    res INTEGER;
    q text;
    i integer;
    
    max_i integer;
    min_i integer;
    
BEGIN
    max_i := array_upper(arr, 1);
    min_i := array_lower(arr, 1);
    
    FOR i in  min_i .. max_i LOOP
        q := concat(q, format(' INSERT INTO  company.detail 
        ("code", "full_code", "full_name_kr", "full_name_eng", "listing_date", 
        "market", "securities_classification", "department", "stock_type", "face_value", 
        "listed_stocks")  VALUES '));
        q := concat(q, format(' (   %L ,%L ,%L ,%L ,%L    ,%L ,%L ,%L ,%L ,%L    ,%L  ) ' , 
            arr[i][1], arr[i][2], arr[i][3], arr[i][4], arr[i][5], 
            arr[i][6], arr[i][7], arr[i][8], arr[i][9], arr[i][10], 
            arr[i][11]
        )) ;
        q := concat(q,format(' ON CONFLICT ("code") DO UPDATE SET ')) ;
        q := concat(q,format(' "full_code"= %L ,', arr[i][2])) ;
        q := concat(q,format(' "full_name_kr"= %L ,', arr[i][3])) ;
        q := concat(q,format(' "full_name_eng"= %L ,', arr[i][4])) ;
        q := concat(q,format(' "listing_date"= %L ,', arr[i][5])) ;

        q := concat(q,format(' "market"= %L ,', arr[i][6])) ;
        q := concat(q,format(' "securities_classification"= %L ,', arr[i][7])) ;
        q := concat(q,format(' "department"= %L ,', arr[i][8])) ;
        q := concat(q,format(' "stock_type"= %L ,', arr[i][9])) ;
        q := concat(q,format(' "face_value"= %L ,', arr[i][10])) ;

        q := concat(q,format(' "listed_stocks"= %L ', arr[i][11])) ;
        q := concat(q,format(' ;  ')) ;

    END loop;
    EXECUTE q;
EXECUTE format('select 1  ') INTO res;
RETURN res;

END;

$$ LANGUAGE plpgsql;

---------------------------------
--
-- company.detail 저장용
-- select insert_company_state(ARRAY[ARRAY['098120','true','true','true','true','true','true','true','true','true','true','true']]);
---------------------------------
CREATE
OR REPLACE FUNCTION insert_company_state( arr text [ ][]) RETURNS INTEGER AS $$
DECLARE
    res INTEGER;
    q text;
    i integer;
    
    max_i integer;
    min_i integer;
    
BEGIN
    max_i := array_upper(arr, 1);
    min_i := array_lower(arr, 1);
    
    FOR i in  min_i .. max_i LOOP
        q := concat(q, format(' INSERT INTO  company.state 
        ("code", "stop", "clear", "managed", "ventilation", 
        "unfaithful", "low_liquidity", "lack_listed", "overheated", "caution", 
        "warning","risk")  VALUES '));
        q := concat(q, format(' (   %L ,%L ,%L ,%L ,%L    ,%L ,%L ,%L ,%L ,%L    ,%L ,%L  ) ' , 
            arr[i][1], arr[i][2], arr[i][3], arr[i][4], arr[i][5], 
            arr[i][6], arr[i][7], arr[i][8], arr[i][9], arr[i][10], 
            arr[i][11],arr[i][12]
        )) ;
        q := concat(q,format(' ON CONFLICT ("code") DO UPDATE SET ')) ;
        q := concat(q,format(' "stop"= %L ,', arr[i][2])) ;
        q := concat(q,format(' "clear"= %L ,', arr[i][3])) ;
        q := concat(q,format(' "managed"= %L ,', arr[i][4])) ;
        q := concat(q,format(' "ventilation"= %L ,', arr[i][5])) ;

        q := concat(q,format(' "unfaithful"= %L ,', arr[i][6])) ;
        q := concat(q,format(' "low_liquidity"= %L ,', arr[i][7])) ;
        q := concat(q,format(' "lack_listed"= %L ,', arr[i][8])) ;
        q := concat(q,format(' "overheated"= %L ,', arr[i][9])) ;
        q := concat(q,format(' "caution"= %L ,', arr[i][10])) ;

        q := concat(q,format(' "warning"= %L ,', arr[i][11])) ;
        q := concat(q,format(' "risk"= %L ', arr[i][12])) ;
        q := concat(q,format(' ;  ')) ;

    END loop;
    EXECUTE q;
EXECUTE format('select 1  ') INTO res;
RETURN res;

END;

$$ LANGUAGE plpgsql;
