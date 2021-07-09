--------------------------------------------
----------------------
--------------------------------------------
DROP VIEW IF EXISTS "daily_stock";

CREATE VIEW public.daily_stock AS
SELECT C.CODE,
	C.NAME,
	D.MARKET,
	B.CP_X1,
	B.CP_Y1,
	B.CP_X2,
	B.CP_Y2,
	B.CP_X_TICK,
	B.CP_Y_MINUS,
	B.CP_Y_PERCENT,
	B.OP_X1,
	B.OP_Y1,
	B.OP_X2,
	B.OP_Y2,
	B.OP_X_TICK,
	B.OP_Y_MINUS,
	B.OP_Y_PERCENT,
	B.LP_X1,
	B.LP_Y1,
	B.LP_X2,
	B.LP_Y2,
	B.LP_X_TICK,
	B.LP_Y_MINUS,
	B.LP_Y_PERCENT,
	B.HP_X1,
	B.HP_Y1,
	B.HP_X2,
	B.HP_Y2,
	B.HP_X_TICK,
	B.HP_Y_MINUS,
	B.HP_Y_PERCENT,
	S.STOP ,
	S.CLEAR ,
	S.MANAGED ,
	S.VENTILATION ,
	S.UNFAITHFUL ,
	S.LOW_LIQUIDITY ,
	S.LACK_LISTED ,
	S.OVERHEATED ,
	S.CAUTION ,
	S.WARNING ,
	S.RISK
FROM COMPANY.CODE C
LEFT JOIN COMPANY.DETAIL D ON C.CODE = D.CODE
LEFT JOIN PUBLIC.BOUND_STOCK B ON D.CODE = B.CODE
LEFT JOIN COMPANY.STATE S ON B.CODE = S.CODE
GROUP BY C.CODE,
	D.CODE,
	B.CODE,
	S.CODE
ORDER BY B.CP_Y_PERCENT DESC;

--------------------------------------------
----------------------
--------------------------------------------
DROP VIEW IF EXISTS "daily_market";


CREATE VIEW PUBLIC.DAILY_MARKET AS
SELECT C.*,
	B.CP_X1,
	B.CP_Y1,
	B.CP_X2,
	B.CP_Y2,
	B.CP_X_TICK,
	B.CP_Y_MINUS,
	B.CP_Y_PERCENT,
	B.OP_X1,
	B.OP_Y1,
	B.OP_X2,
	B.OP_Y2,
	B.OP_X_TICK,
	B.OP_Y_MINUS,
	B.OP_Y_PERCENT,
	B.LP_X1,
	B.LP_Y1,
	B.LP_X2,
	B.LP_Y2,
	B.LP_X_TICK,
	B.LP_Y_MINUS,
	B.LP_Y_PERCENT,
	B.HP_X1,
	B.HP_Y1,
	B.HP_X2,
	B.HP_Y2,
	B.HP_X_TICK,
	B.HP_Y_MINUS,
	B.HP_Y_PERCENT,
	s.Stop        	,
	s.Clear       	,
	s.Managed     	,
	s.Ventilation 	,
	s.Unfaithful    	,
	s.Low_liquidity 	,
	s.Lack_listed   	,
	s.Overheated    	,
	s.Caution      	,
	s.Warning 		,
	s.Risk    		
FROM
	(SELECT 'KOSPI' AS CODE,
			'코스피' AS NAME
		UNION ALL SELECT 'KOSDAQ' AS CODE,
			'코스닥' AS NAME
		UNION ALL SELECT 'FUT' AS CODE,
			'선물' AS NAME
		UNION ALL SELECT 'KPI200' AS CODE,
			'코스피200' AS NAME)C
LEFT JOIN PUBLIC.BOUND_MARKET B ON C.CODE = B.CODE
LEFT JOIN COMPANY.STATE S ON B.CODE = S.CODE
GROUP BY C.CODE,
	C.NAME,
	B.CODE,
	S.CODE
ORDER BY B.CP_Y_PERCENT DESC;


DROP VIEW IF EXISTS "daily_monthly_peek";
CREATE VIEW PUBLIC.daily_monthly_peek AS
SELECT MP.CODE as mp_code,
	c.NAME,
	d.market,
	MP.PEEK,
	MP.PEEK_LIST,
	MP.PEEK_PERCENT,
	MP.LIST,
	s.*
FROM PUBLIC.TB_DAILY_MONTHLY_PEEK MP
LEFT JOIN COMPANY.code c ON MP.CODE = c.CODE
LEFT JOIN COMPANY.detail d ON MP.CODE = d.CODE
LEFT JOIN COMPANY.state s ON MP.CODE = s.CODE
--where peek =  extract(month FROM now()::timestamp)
order by peek_percent desc 