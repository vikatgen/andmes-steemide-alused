SELECT
	ROUND(MAX(price), 2) AS `Kõige odavam kasutatud raamat`,
    type AS `Raamatu tüüp`
FROM books
WHERE type = 'used'
;

# Kõige kallim kasutatud raamat. (59.87)