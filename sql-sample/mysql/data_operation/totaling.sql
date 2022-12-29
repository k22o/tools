-- group by と having
SELECT
fa.actor_id, f.rating, COUNT(*) AS count
FROM film_actor fa
    INNER JOIN film f
    ON fa.film_id = f.film_id
WHERE f.rating IN ('G', 'PG')
GROUP BY fa.actor_id, f.rating 
HAVING count > 10 -- group byしたらhaving
ORDER BY fa.actor_id, f.rating
;

-- 集計処理
SELECT 
customer_id, COUNT(*),
MAX(amount), MIN(amount),
AVG(amount), SUM(amount)
FROM payment
GROUP BY customer_id
LIMIT 10
;

-- extract
SELECT
EXTRACT(YEAR FROM rental_date) AS year,
COUNT (*)
FROM rental
GROUP BY year
;

-- その他
SELECT
COUNT (customer_id),
COUNT (DISTINCT customer_id),
MAX(DATEDIFF(return_date, rental_date)) -- 式の利用
FROM rental;

