--------------------------------------------
----------------------
--------------------------------------------
DROP VIEW IF EXISTS "view_stock";

CREATE VIEW public.view_stock AS
SELECT 
	pc.code_id,
	pc.code,
	pc.name,
	pc.code_type,
	(select name from meta.config where id = pc.code_type ) as code_type_name,
	pc.market_type,
	(select name from meta.config where id = pc.market_type ) as market_type_name,
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
from meta.code mc 
	left join only  public.company pc on mc.id = pc.code_id
	LEFT JOIN only public.COMPANY_DETAIL D ON mc.id = D.code_id
	LEFT JOIN only public.COMPANY_STATE S ON mc.id = S.code_id
	LEFT JOIN public.tb_rebound B ON mc.id = B.code_id
where mc.code_type = (select id from meta.config where code ='stock')

ORDER BY B.CP_Y_PERCENT DESC;

--------------------------------------------
----------------------
--------------------------------------------
DROP VIEW IF EXISTS "view_market";
CREATE VIEW PUBLIC.view_market AS
SELECT mc.id,mc.code,mcf.name,
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
	B.HP_Y_PERCENT		
from meta.code mc 
left join meta.config mcf on mc.code = mcf.code
LEFT JOIN public.tb_rebound B ON mc.id = B.code_id
where mc.code_type = (select id from meta.config where code ='market')
order by mcf.id;


DROP VIEW IF EXISTS "view_monthly_peek";
CREATE VIEW PUBLIC.view_monthly_peek AS
SELECT MP.CODE_id as mp_code,
	pc.code_id,
	pc.code,
	pc.name,
	pc.code_type,
	(select name from meta.config where id = pc.code_type ) as code_type_name,
	pc.market_type,
	(select name from meta.config where id = pc.market_type ) as market_type_name,
	MP.PEEK,
	MP.peek_range,
	MP.PEEK_PERCENT,
	MP.LIST
FROM project.tb_monthly_peek MP
	left join only  public.company pc on MP.code_id = pc.code_id
WHERE mp.is_peek is true
--where peek =  extract(month FROM now()::timestamp)
order by peek_percent desc 