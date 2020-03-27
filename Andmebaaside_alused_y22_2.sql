SELECT
	ROUND(MIN(price), 2) AS `Kõige odavam raamat`,
    ROUND(MAX(price), 2) AS `Kõige kallim raamat`,
    ROUND(AVG(price), 2) AS `Hindade keskmine`
FROM books
;

# Kõige odavam ja kõige kallim raamat ning raamatu hindade keskmine.  (1.04, 59.98, 30.53) 
