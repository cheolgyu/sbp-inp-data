---------------------------------
--
-- price.tb_<code> 저장용
-- select insert_price('price','code' ,ARRAY[ARRAY[1,21,31] ,ARRAY[10,210,310] ,ARRAY[100,2100,3100]]);
---------------------------------
CREATE
OR REPLACE FUNCTION insert_price(schema_nm text,tb_nm text, arr text [ ] [ ]) RETURNS INTEGER AS $$
DECLARE
    res INTEGER;
    q text;
    i integer;
    
    max_i integer;
    min_i integer;
    
BEGIN
    EXECUTE format(
        'CREATE TABLE IF NOT EXISTS %I.%I (
				"p_date" numeric(8,0) NOT NULL UNIQUE ,
				"op" numeric(11,3),
				"hp" numeric(11,3),
				"lp" numeric(11,3),
				"cp" numeric(11,3),
				"vol" numeric(8,0),
				"fb_rate" numeric(11,3)
			); ',
        schema_nm,tb_nm
    ) ;

    max_i := array_upper(arr, 1);
    min_i := array_lower(arr, 1);
    
    FOR i in  min_i .. max_i LOOP
        q := concat(q, format(' INSERT INTO  %I.%I ("p_date", "op", "hp", "lp", "cp", "vol", "fb_rate")  VALUES ',schema_nm,tb_nm));
        q := concat(q, format(' (   %L ,%L ,%L ,%L ,%L ,%L ,%L  ) '
            , arr[i][1], arr[i][2], arr[i][3], arr[i][4], arr[i][5], arr[i][6], arr[i][7])) ;
        q := concat(q,format(' ON CONFLICT ("p_date") DO UPDATE SET ')) ;
        q := concat(q,format(' "op"= %L ', arr[i][2])) ;
        q := concat(q,format(' ,"hp"= %L ', arr[i][3])) ;
        q := concat(q,format(' ,"lp"= %L ', arr[i][4])) ;
        q := concat(q,format(' ,"cp"= %L ', arr[i][5])) ;
        q := concat(q,format(' ,"vol"= %L ', arr[i][6])) ;
        q := concat(q,format(' ,"fb_rate"= %L ', arr[i][7])) ;
        q := concat(q,format(' ;  ')) ;

    END loop;

    EXECUTE q;



EXECUTE format('select 1  ') INTO res;
RETURN res;

END;

$$ LANGUAGE plpgsql;

