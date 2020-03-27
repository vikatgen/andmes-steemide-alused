SELECT 
	YEAR(order_date) AS `Aasta`,
	COUNT(orders.id) AS `Tellimuste arv`,
    ROUND(SUM(price), 2) AS `Kogusumma`,
    orders.status AS `Staatus`
FROM orders
JOIN books ON orders.book_id = books.id
WHERE YEAR(order_date) = 2017 AND orders.status = 'sent'

# Täidetud tellimuste arv viimase aasta jooksul ja müükide summa.
