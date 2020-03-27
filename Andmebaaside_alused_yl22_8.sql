SELECT
	language AS `Keel`,
    COUNT(language) AS `HULK`
FROM books
GROUP BY language
ORDER BY COUNT(language) DESC
;