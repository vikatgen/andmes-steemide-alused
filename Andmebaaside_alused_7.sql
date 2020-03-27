SELECT
	YEAR(order_date) AS `Aasta`,
    orders.client_id AS `Kliendi ID`,
    clients.username AS `Kliendi kasutajanimi`,
    clients.first_name AS `Kliendi eesnimi`,
    clients.last_name AS `Kliendi perenimi`,
    orders.id AS `Tellimuse number`,
    ROUND(books.price, 2) AS `Tellimuse väärtus`,
    orders.status AS `Staatus`
FROM orders
LEFT JOIN clients
	ON orders.client_id = clients.id
LEFT JOIN books
	ON orders.book_id = books.id
WHERE YEAR(order_date) = 2017 AND orders.status = 'sent'
ORDER BY ROUND(books.price, 2) DESC
;
# Väljastada kliendid viimase aasta jooksul tehtud tellimuste põhjal kulutatud summa järgi.
