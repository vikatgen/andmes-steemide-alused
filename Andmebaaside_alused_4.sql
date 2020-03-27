SELECT count(status) AS `Tellimuste arv`, YEAR(order_date) AS 'Aasta'
FROM orders
WHERE status = 'sent'
GROUP BY `Aasta`
;

# Täidetud tellimuste arv aasta kaupa. Väljasta ainult aasta ja tellimuste arv. 
# Tulemuse veeru pealkirjaks pane “Aasta” ja “Tellimuste arv” (ei ole vaja andmebaasis tabelit muuta!). 
# COUNT(), GROUP BY, DATE või YEAR, AS (tulemus 4 kirjet)