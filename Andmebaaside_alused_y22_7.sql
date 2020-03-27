SELECT
	release_date AS `Väljalaske aasta`,
    title AS `Pealkiri`
FROM books
WHERE (release_date % 2) = 0
ORDER BY release_date
;

# Paarisarvulise väljaandmisaastaga raamatud. Matemaatika funktsioonid. (1163 kirjet)
