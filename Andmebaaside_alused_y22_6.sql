SELECT *
FROM books
WHERE price > (
	SELECT
		AVG(books.price)
	FROM books
    JOIN orders
		ON books.id = orders.book_id
	JOIN book_authors
		ON books.id = book_authors.book_id
	GROUP BY author_id
    ORDER BY COUNT(author_id) DESC
    LIMIT 1
)
;

# Raamatud, mis on kallimad kui enim-müüdud autori raamatute keskmine hind. 
# Alampäring. (952 kirjet)