SELECT title, release_date, price, type 
FROM books 
WHERE release_date < 1970 AND price < 20 and  type = 'used'
ORDER BY release_date
;


