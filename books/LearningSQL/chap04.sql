# 동등조건
SELECT c.email
FROM customer c
INNER JOIN rental r
ON c.customer_id = r.customer_id
WHERE date(r.rental_date) = '2005-06-14';

# 부등조건
SELECT c.email
FROM customer c
    INNER JOIN rental r
        on c.customer_id = r.customer_id
WHERE date (r.rental_date) <> '2005-06-14';

# 범위 조건
SELECT customer_id, rental_date
FROM rental
WHERE rental_date <= '2005-06-16'
    AND rental_date >= '2005-06-14';

SELECT customer_id, rental_date
FROM rental
WHERE rental_date BETWEEN '2005-06-14'AND '2005-06-16';