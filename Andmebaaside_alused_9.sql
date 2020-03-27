SELECT
	price AS `Raamatu hind`,
    title AS `Raamatu pealkiri`
FROM books
WHERE price > (SELECT AVG(price) FROM books)
ORDER BY price DESC
;

# Raamatute nimekiri, mille hind on keskmisest kõrgem