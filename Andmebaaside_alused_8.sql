SELECT
	YEAR(order_date) AS `Aasta`,
    status AS `Staatus`,
    COUNT(books.id) AS `Raamatu ID`,
    books.title AS `Raamatu pealkiri`,
    orders.id AS `Tellimuse number`
FROM orders
LEFT JOIN books
	ON orders.book_id = books.id
WHERE YEAR(order_date) = 2017 AND status = 'sent'
GROUP BY books.title
HAVING COUNT(books.id) > 1
ORDER BY COUNT(books.id) DESC
LIMIT 10
;

# Viimase aasta top 10 enim müüdud raamatud.
