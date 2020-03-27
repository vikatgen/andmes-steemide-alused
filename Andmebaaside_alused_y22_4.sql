SELECT
	CASE
		WHEN type = 'new' THEN 'Uus'
        WHEN type = 'used' THEN 'Kasutatud'
        WHEN type = 'ebook' THEN 'E-Raamat'
		ELSE 'Raamat'
	END AS Tüüp,
    CASE
		WHEN type = 'new' THEN ROUND(AVG(price), 2)
        WHEN type = 'used' THEN ROUND(AVG(price), 2)
        WHEN type = 'ebook' THEN ROUND(AVG(price), 2)
    END AS 'Keskmine hind',
    CASE
		WHEN type = 'new' THEN COUNT(stock_saldo)
        WHEN type = 'used' THEN COUNT(stock_saldo)
        WHEN type = 'ebook' THEN COUNT(stock_saldo)
    END AS 'Hulk'
FROM books
GROUP BY type
;

# Tüübi kaupa raamatute keskmine hind ja kogus. CASE väljundi vormindamiseks
