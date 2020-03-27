SELECT
	COUNT(status) AS `Tellimuste arv`,
    ROUND(SUM(books.price), 2) AS `Tellimuste koguväärtus`,
    YEAR(order_date) AS `Aasta`
FROM orders
LEFT JOIN books
	ON books.id = orders.book_id
WHERE status = 'sent'
GROUP BY `Aasta`
;


# Täidetud tellimuste arv aasta kaupa ja müükide summa. 
# Pane veergudele ilusad pealkirjad ja ümarda summa kahe komakohani. 
# LEFT JOIN (tulemus summad 5814.08, 18676.06, 21211.61, 23661.34)