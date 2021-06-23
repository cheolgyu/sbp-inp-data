(
SELECT CODE,
	G_TYPE,
	X1,
	Y1,X2,
	Y2,
	X_TICK,
	Y_MINUS,
	Y_PERCENT
FROM BOUND.POINT
WHERE CODE = '000020'    
and g_type ='low' order by x1 desc limit 1 
)
union all 
(
SELECT CODE,
	G_TYPE,
	X1,
	Y1,X2,
	Y2,
	X_TICK,
	Y_MINUS,
	Y_PERCENT
FROM BOUND.POINT
WHERE CODE = '000020'  
and g_type ='high' order by x1 desc limit 1
)
union all 
(
SELECT CODE,
	G_TYPE,
	X1,
	Y1,X2,
	Y2,
	X_TICK,
	Y_MINUS,
	Y_PERCENT
FROM BOUND.POINT
WHERE CODE = '000020'  
and g_type ='close' order by x1 desc limit 1
)
union all 
(
SELECT CODE,
	G_TYPE,
	X1,
	Y1,X2,
	Y2,
	X_TICK,
	Y_MINUS,
	Y_PERCENT
FROM BOUND.POINT
WHERE CODE = '000020'  
and g_type ='open' order by x1 desc limit 1
)
;	