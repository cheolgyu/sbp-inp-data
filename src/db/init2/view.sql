


SELECT C.*,
	P.*
FROM COMPANY.CODE C
LEFT JOIN
	(SELECT BP.*
		FROM BOUND.POINT BP
		RIGHT JOIN
			(SELECT CODE,
					G_TYPE,
					MAX(X1) AS X1
				FROM BOUND.POINT
				GROUP BY CODE,
					G_TYPE) T1 ON BP.CODE = T1.CODE
		AND BP.G_TYPE = T1.G_TYPE
		AND BP.X1 = T1.X1
	) P ON C.CODE = P.CODE
	where c.code = '000020'



SELECT C.*,
	P.*
FROM COMPANY.CODE C
LEFT JOIN
	(SELECT BP.*
		FROM BOUND.POINT BP
		RIGHT JOIN
			(SELECT CODE,
					G_TYPE,
					MAX(X1) AS X1
				FROM BOUND.POINT
				GROUP BY CODE,
					G_TYPE) T1 ON BP.CODE = T1.CODE
		AND BP.G_TYPE = T1.G_TYPE
		AND BP.X1 = T1.X1
	) P ON C.CODE = P.CODE












SELECT BP.* 
FROM BOUND.POINT BP right join (
SELECT code, g_type, max(X1) as x1
			FROM BOUND.POINT
			group by code, g_type
) t1 on bp.code= t1.code and bp.g_type= t1.g_type and bp.x1 = t1.x1
WHERE bp.CODE = '000020'  
;

SELECT BP.*
FROM BOUND.POINT BP
WHERE BP.CODE = '000020'
	AND BP.X1 in
		(			
SELECT  max(X1)
			FROM BOUND.POINT
			WHERE CODE = '000020'  
			group by g_type) ;
			
			
			