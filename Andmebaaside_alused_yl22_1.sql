SELECT
    ROUND(SUM(price * stock_saldo), 2) AS `Raamatu koguväärtus laos`
FROM books
;


# Raamatute tabelist kogu laoväärtus. aritmeetika operaatorid